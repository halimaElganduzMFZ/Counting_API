unit LMDFullVersion;

interface

uses Windows, Forms, SysUtils;

var MemAddr: Pointer = nil;

implementation

function InterceptedFindWindowW({$IFNDEF CLR}lpClassName:PChar;lpWindowName:PChar{$ELSE}lpClassName:String; lpWindowName:String{$ENDIF}):  HWND; stdcall;
type
TOrigFindWindowW = function({$IFNDEF CLR}lpClassName:PChar;lpWindowName:PChar{$ELSE}lpClassName:String; lpWindowName:String{$ENDIF}): HWND; stdcall;
var handle: HWND;
begin
 handle := 1;
 if (lpClassName <> 'TAPPBUILDER') then
     handle := TOrigFindWindowW(MemAddr)(lpClassName, lpWindowName);
 result := handle;
end;


function Intercept(const OldProc, NewProc: FARPROC): Boolean;
var ImportEntry: PImageImportDescriptor;
    Thunk: PImageThunkData;
    Protect: DWORD;
    ImageBase: Cardinal;
    DOSHeader: PImageDosHeader;
    NTHeader: PImageNtHeaders;

begin
   Result := False;
   if OldProc = nil then
      Exit;
   if NewProc = nil then
      Exit;

   ImageBase := GetModuleHandle(nil);
   DOSHeader := PImageDosHeader(ImageBase);
   NTHeader := PImageNtHeaders(DWORD(DOSHeader) + DWORD(DOSHeader^._lfanew));
   ImportEntry := PImageImportDescriptor(DWORD(ImageBase) + DWORD(NTHeader^.OptionalHeader.DataDirectory[IMAGE_DIRECTORY_ENTRY_IMPORT].VirtualAddress));
   while ImportEntry^.Name <> 0 do
   begin
      Thunk := PImageThunkData(DWORD(ImageBase) + DWORD(ImportEntry^.FirstThunk));
      while Pointer(Thunk^._function) <> nil do
      begin
         if Pointer(Thunk^._function) = OldProc then
         begin
           if VirtualProtect(@Thunk^._function, SizeOf(DWORD), PAGE_EXECUTE_READWRITE, Protect) then
           try
             {$IFDEF WIN64}
             InterlockedExchange64(Int64(Thunk^._function), Int64(NewProc));
             {$ELSE}
             InterlockedExchange(Integer(Thunk^._function), Integer(NewProc));
             {$ENDIF}
             Result := True;
          finally
             VirtualProtect(@Thunk^._function, SizeOf(DWORD), Protect, Protect);
             FlushInstructionCache(GetCurrentProcess, @Thunk^._function, SizeOf(DWORD));
          end;
        end
        else
          Inc(PAnsiChar(Thunk), SizeOf(TImageThunkData32));
      end;
      ImportEntry := Pointer(Integer(ImportEntry) + SizeOf(TImageImportDescriptor));
   end;
end;


initialization

MemAddr := GetProcAddress(GetModuleHandle(user32), 'FindWindowW');
Intercept(MemAddr, @InterceptedFindWindowW);

end.