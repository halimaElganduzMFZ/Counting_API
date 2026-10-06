object DataModuleFm: TDataModuleFm
  Height = 1469
  Width = 1662
  PixelsPerInch = 144
  object DbServer: TUniConnection
    ProviderName = 'MySQL'
    Port = 3306
    Database = 'porte'
    SpecificOptions.Strings = (
      'MySQL.UseUnicode=True')
    Username = 'root'
    Server = 'localhost'
    Connected = True
    Left = 324
    Top = 24
    EncryptedPassword = '9EFF9BFF92FF96FF91FF'
  end
  object MySQLUniProvider1: TMySQLUniProvider
    Left = 468
    Top = 24
  end
  object Vharm: TUniTable
    TableName = 'harm'
    Connection = DbServer
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 114
    Top = 168
    object VharmNumAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'NumAuto'
    end
    object VharmNameHarm: TWideStringField
      DisplayLabel = #1575#1587#1605' '#1575#1604#1590#1585#1575#1585
      FieldName = 'NameHarm'
      Size = 200
    end
  end
  object Dharm: TUniDataSource
    DataSet = Vharm
    Left = 318
    Top = 156
  end
  object Vsidewalk: TUniTable
    TableName = 'sidewalk'
    Connection = DbServer
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 114
    Top = 264
    object VsidewalkNumAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'NumAuto'
    end
    object VsidewalkNameSidewalk: TWideStringField
      DisplayLabel = #1575#1587#1605' '#1575#1604#1585#1589#1610#1601
      FieldName = 'NameSidewalk'
      Size = 200
    end
  end
  object Vamber: TUniTable
    TableName = 'amber'
    Connection = DbServer
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 114
    Top = 372
    object VamberNumAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'NumAuto'
    end
    object VamberNameAmber: TWideStringField
      DisplayLabel = #1575#1604#1593#1606#1576#1585
      FieldName = 'NameAmber'
      Size = 200
    end
  end
  object Vthecounter: TUniTable
    TableName = 'thecounter'
    Connection = DbServer
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 114
    Top = 468
    object VthecounterNumAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'NumAuto'
    end
    object VthecounterNameTheCounter: TWideStringField
      DisplayLabel = #1575#1587#1605' '#1575#1604#1593#1583#1575#1583
      FieldName = 'NameTheCounter'
      Size = 250
    end
    object VthecounterNumEmp: TWideStringField
      DisplayLabel = #1575#1604#1585#1602#1605' '#1575#1604#1608#1592#1610#1601#1610
      FieldName = 'NumEmp'
      Size = 25
    end
  end
  object Vbandsupervisor: TUniTable
    TableName = 'bandsupervisor'
    Connection = DbServer
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 114
    Top = 564
    object VbandsupervisorNumAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'NumAuto'
    end
    object VbandsupervisorNameBandSupervisor: TWideStringField
      DisplayLabel = #1605#1588#1585#1601' '#1575#1604#1601#1585#1602#1577
      FieldName = 'NameBandSupervisor'
      Size = 200
    end
  end
  object Vcrane: TUniTable
    TableName = 'crane'
    Connection = DbServer
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 114
    Top = 660
    object VcraneNumAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'NumAuto'
    end
    object VcraneNameCrane: TWideStringField
      DisplayLabel = #1585#1602#1605' '#1575#1604#1585#1575#1601#1593#1577
      FieldName = 'NameCrane'
      Size = 200
    end
  end
  object Dsidewalk: TUniDataSource
    DataSet = Vsidewalk
    Left = 318
    Top = 252
  end
  object Damber: TUniDataSource
    DataSet = Vamber
    Left = 318
    Top = 348
  end
  object Dthecounter: TUniDataSource
    DataSet = Vthecounter
    Left = 318
    Top = 468
  end
  object Dbandsupervisor: TUniDataSource
    DataSet = Vbandsupervisor
    Left = 318
    Top = 564
  end
  object Dcrane: TUniDataSource
    DataSet = Vcrane
    Left = 318
    Top = 660
  end
  object Vcraneoperator: TUniTable
    TableName = 'craneoperator'
    Connection = DbServer
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 114
    Top = 756
    object VcraneoperatorNumAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'NumAuto'
    end
    object VcraneoperatorNameCraneOperator: TWideStringField
      DisplayLabel = #1575#1587#1605' '#1605#1588#1594#1604' '#1575#1604#1585#1575#1601#1593#1577
      FieldName = 'NameCraneOperator'
      Size = 200
    end
    object VcraneoperatorNumEmp: TWideStringField
      DisplayLabel = #1585#1602#1605' '#1575#1604#1605#1608#1592#1601
      FieldName = 'NumEmp'
      Size = 25
    end
  end
  object Dcraneoperator: TUniDataSource
    DataSet = Vcraneoperator
    Left = 318
    Top = 756
  end
  object UniDump1: TUniDump
    Connection = DbServer
    Left = 612
    Top = 24
  end
  object Dsortingtrip: TUniDataSource
    DataSet = Vsortingtrip
    Left = 813
    Top = 132
  end
  object Vsortingtrip: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `sortingtrip`'
      
        '  (`numAuto`, `AutoUID`, `FlightNumber`, `ShipName`, `ShippingAg' +
        'ent`, `DateArrival`, `DischargeStartDate`, `EndDischargeDate`, `' +
        'UserDate`, `EnterDate`, `FlightStatus`, `StatusH`, `Share`, `N_s' +
        'idewalk`, `Crane`, `N_bandsupervisor`, `Nort`, `Transaction_Type' +
        '`, `ggg`)'
      'VALUES'
      
        '  (:`numAuto`, :`AutoUID`, :`FlightNumber`, :`ShipName`, :`Shipp' +
        'ingAgent`, :`DateArrival`, :`DischargeStartDate`, :`EndDischarge' +
        'Date`, :`UserDate`, :`EnterDate`, :`FlightStatus`, :`StatusH`, :' +
        '`Share`, :`N_sidewalk`, :`Crane`, :`N_bandsupervisor`, :`Nort`, ' +
        ':`Transaction_Type`, :`ggg`)')
    SQLDelete.Strings = (
      'DELETE FROM `sortingtrip`'
      'WHERE'
      '  `numAuto` = :`Old_numAuto`')
    SQLUpdate.Strings = (
      'UPDATE `sortingtrip`'
      'SET'
      
        '  `numAuto` = :`numAuto`, `AutoUID` = :`AutoUID`, `FlightNumber`' +
        ' = :`FlightNumber`, `ShipName` = :`ShipName`, `ShippingAgent` = ' +
        ':`ShippingAgent`, `DateArrival` = :`DateArrival`, `DischargeStar' +
        'tDate` = :`DischargeStartDate`, `EndDischargeDate` = :`EndDischa' +
        'rgeDate`, `UserDate` = :`UserDate`, `EnterDate` = :`EnterDate`, ' +
        '`FlightStatus` = :`FlightStatus`, `StatusH` = :`StatusH`, `Share' +
        '` = :`Share`, `N_sidewalk` = :`N_sidewalk`, `Crane` = :`Crane`, ' +
        '`N_bandsupervisor` = :`N_bandsupervisor`, `Nort` = :`Nort`, `Tra' +
        'nsaction_Type` = :`Transaction_Type`, `ggg` = :`ggg`'
      'WHERE'
      '  `numAuto` = :`Old_numAuto`')
    SQLLock.Strings = (
      
        'SELECT `numAuto`, `AutoUID`, `FlightNumber`, `ShipName`, `Shippi' +
        'ngAgent`, `DateArrival`, `DischargeStartDate`, `EndDischargeDate' +
        '`, `UserDate`, `EnterDate`, `FlightStatus`, `StatusH`, `Share`, ' +
        '`N_sidewalk`, `Crane`, `N_bandsupervisor`, `Nort`, `Transaction_' +
        'Type`, `ggg` FROM `sortingtrip`'
      'WHERE'
      '  `numAuto` = :`Old_numAuto`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `numAuto`, `AutoUID`, `FlightNumber`, `ShipName`, `Shippi' +
        'ngAgent`, `DateArrival`, `DischargeStartDate`, `EndDischargeDate' +
        '`, `UserDate`, `EnterDate`, `FlightStatus`, `StatusH`, `Share`, ' +
        '`N_sidewalk`, `Crane`, `N_bandsupervisor`, `Nort`, `Transaction_' +
        'Type`, `ggg` FROM `sortingtrip`'
      'WHERE'
      '  `numAuto` = :`numAuto`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM sortingtrip')
    Connection = DbServer
    SQL.Strings = (
      'CALL Vsortingtrip(:VNum)')
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 813
    Top = 48
    ParamData = <
      item
        DataType = ftInteger
        Name = 'VNum'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'Vsortingtrip'
    object VsortingtripnumAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'numAuto'
    end
    object VsortingtripAutoUID: TWideStringField
      DisplayLabel = #1585'.'#1605
      FieldName = 'AutoUID'
      Required = True
      FixedChar = True
      Size = 36
    end
    object VsortingtripFlightNumber: TWideStringField
      DisplayLabel = #1585#1602#1605' '#1575#1604#1585#1581#1604#1577
      FieldName = 'FlightNumber'
      Size = 25
    end
    object VsortingtripShipName: TWideStringField
      DisplayLabel = #1575#1587#1605' '#1575#1604#1587#1601#1610#1606#1577
      FieldName = 'ShipName'
      Size = 150
    end
    object VsortingtripShippingAgent: TWideStringField
      DisplayLabel = #1575#1587#1605' '#1575#1604#1608#1603#1610#1604
      FieldName = 'ShippingAgent'
      Size = 150
    end
    object VsortingtripDateArrival: TDateField
      DisplayLabel = #1578#1575#1585#1610#1582' '#1575#1604#1608#1589#1608#1604
      FieldName = 'DateArrival'
    end
    object VsortingtripDischargeStartDate: TDateField
      DisplayLabel = #1576#1583#1575#1610#1577' '#1575#1604#1578#1601#1585#1610#1594
      FieldName = 'DischargeStartDate'
    end
    object VsortingtripEndDischargeDate: TDateField
      DisplayLabel = #1606#1607#1575#1610#1577' '#1575#1604#1578#1601#1585#1610#1594
      FieldName = 'EndDischargeDate'
    end
    object VsortingtripUserDate: TWideStringField
      FieldName = 'UserDate'
      Size = 15
    end
    object VsortingtripEnterDate: TDateField
      FieldName = 'EnterDate'
    end
    object VsortingtripFlightStatus: TSmallintField
      FieldName = 'FlightStatus'
      Required = True
    end
    object VsortingtripStatusH: TSmallintField
      FieldName = 'StatusH'
      Required = True
    end
    object VsortingtripShare: TSmallintField
      FieldName = 'Share'
    end
    object VsortingtripN_sidewalk: TIntegerField
      FieldName = 'N_sidewalk'
    end
    object VsortingtripCrane: TSmallintField
      FieldName = 'Crane'
    end
    object VsortingtripN_bandsupervisor: TIntegerField
      FieldName = 'N_bandsupervisor'
    end
    object VsortingtripNort: TWideStringField
      FieldName = 'Nort'
      Size = 220
    end
  end
  object Vsubmenucounter: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `submenucounter`'
      
        '  (`NumAuto`, `NumMainList`, `TagNumber`, `ContainerType`, `Harm' +
        '`, `CauseDamage`, `swelling`, `rupture`, `bruises`, `other`, `ri' +
        'ght`, `left`, `Door`, `behind`, `Roof`, `floor`, `existing`, `Ot' +
        'herAspects`, `RF`, `Nort1`, `NumAdmH`, `AutoUID`, `Marks`, `Ente' +
        'r_Date`, `Enter_Time`, `Enter_User`, `N_Amber`, `N_sidewalk`, `N' +
        '_thecounter`, `N_bandsupervisor`, `N_crane`, `N_craneoperator`, ' +
        '`condition`, `Status_type`, `Handling_type`, `IS_CHEMICAL_MATERI' +
        'AL`, `goood_description`)'
      'VALUES'
      
        '  (:`NumAuto`, :`NumMainList`, :`TagNumber`, :`ContainerType`, :' +
        '`Harm`, :`CauseDamage`, :`swelling`, :`rupture`, :`bruises`, :`o' +
        'ther`, :`right`, :`left`, :`Door`, :`behind`, :`Roof`, :`floor`,' +
        ' :`existing`, :`OtherAspects`, :`RF`, :`Nort1`, :`NumAdmH`, :`Au' +
        'toUID`, :`Marks`, :`Enter_Date`, :`Enter_Time`, :`Enter_User`, :' +
        '`N_Amber`, :`N_sidewalk`, :`N_thecounter`, :`N_bandsupervisor`, ' +
        ':`N_crane`, :`N_craneoperator`, :`condition`, :`Status_type`, :`' +
        'Handling_type`, :`IS_CHEMICAL_MATERIAL`, :`goood_description`)')
    SQLDelete.Strings = (
      'DELETE FROM `submenucounter`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`')
    SQLUpdate.Strings = (
      'UPDATE `submenucounter`'
      'SET'
      
        '  `NumAuto` = :`NumAuto`, `NumMainList` = :`NumMainList`, `TagNu' +
        'mber` = :`TagNumber`, `ContainerType` = :`ContainerType`, `Harm`' +
        ' = :`Harm`, `CauseDamage` = :`CauseDamage`, `swelling` = :`swell' +
        'ing`, `rupture` = :`rupture`, `bruises` = :`bruises`, `other` = ' +
        ':`other`, `right` = :`right`, `left` = :`left`, `Door` = :`Door`' +
        ', `behind` = :`behind`, `Roof` = :`Roof`, `floor` = :`floor`, `e' +
        'xisting` = :`existing`, `OtherAspects` = :`OtherAspects`, `RF` =' +
        ' :`RF`, `Nort1` = :`Nort1`, `NumAdmH` = :`NumAdmH`, `AutoUID` = ' +
        ':`AutoUID`, `Marks` = :`Marks`, `Enter_Date` = :`Enter_Date`, `E' +
        'nter_Time` = :`Enter_Time`, `Enter_User` = :`Enter_User`, `N_Amb' +
        'er` = :`N_Amber`, `N_sidewalk` = :`N_sidewalk`, `N_thecounter` =' +
        ' :`N_thecounter`, `N_bandsupervisor` = :`N_bandsupervisor`, `N_c' +
        'rane` = :`N_crane`, `N_craneoperator` = :`N_craneoperator`, `con' +
        'dition` = :`condition`, `Status_type` = :`Status_type`, `Handlin' +
        'g_type` = :`Handling_type`, `IS_CHEMICAL_MATERIAL` = :`IS_CHEMIC' +
        'AL_MATERIAL`, `goood_description` = :`goood_description`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`')
    SQLLock.Strings = (
      
        'SELECT `NumAuto`, `NumMainList`, `TagNumber`, `ContainerType`, `' +
        'Harm`, `CauseDamage`, `swelling`, `rupture`, `bruises`, `other`,' +
        ' `right`, `left`, `Door`, `behind`, `Roof`, `floor`, `existing`,' +
        ' `OtherAspects`, `RF`, `Nort1`, `NumAdmH`, `AutoUID`, `Marks`, `' +
        'Enter_Date`, `Enter_Time`, `Enter_User`, `N_Amber`, `N_sidewalk`' +
        ', `N_thecounter`, `N_bandsupervisor`, `N_crane`, `N_craneoperato' +
        'r`, `condition`, `Status_type`, `Handling_type`, `IS_CHEMICAL_MA' +
        'TERIAL`, `goood_description` FROM `submenucounter`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `NumAuto`, `NumMainList`, `TagNumber`, `ContainerType`, `' +
        'Harm`, `CauseDamage`, `swelling`, `rupture`, `bruises`, `other`,' +
        ' `right`, `left`, `Door`, `behind`, `Roof`, `floor`, `existing`,' +
        ' `OtherAspects`, `RF`, `Nort1`, `NumAdmH`, `AutoUID`, `Marks`, `' +
        'Enter_Date`, `Enter_Time`, `Enter_User`, `N_Amber`, `N_sidewalk`' +
        ', `N_thecounter`, `N_bandsupervisor`, `N_crane`, `N_craneoperato' +
        'r`, `condition`, `Status_type`, `Handling_type`, `IS_CHEMICAL_MA' +
        'TERIAL`, `goood_description` FROM `submenucounter`'
      'WHERE'
      '  `NumAuto` = :`NumAuto`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM submenucounter')
    Connection = DbServer
    SQL.Strings = (
      'CALL Vsubmenucounter(:VNum)')
    Left = 561
    Top = 564
    ParamData = <
      item
        DataType = ftInteger
        Name = 'VNum'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'Vsubmenucounter'
    object VsubmenucounterNumMainList: TIntegerField
      FieldName = 'NumMainList'
    end
    object VsubmenucounterTagNumber: TWideStringField
      FieldName = 'TagNumber'
      Size = 75
    end
    object VsubmenucounterContainerType: TWideStringField
      FieldName = 'ContainerType'
      Size = 25
    end
    object VsubmenucounterCauseDamage: TSmallintField
      FieldName = 'CauseDamage'
    end
    object VsubmenucounterHarm: TBooleanField
      FieldName = 'Harm'
    end
    object VsubmenucounterNort1: TWideStringField
      FieldName = 'Nort1'
      Size = 100
    end
    object VsubmenucounterRF: TSmallintField
      FieldName = 'RF'
    end
    object VsubmenucounterNumAdmH: TIntegerField
      FieldName = 'NumAdmH'
    end
    object Vsubmenucounterswelling: TBooleanField
      FieldName = 'swelling'
    end
    object Vsubmenucounterrupture: TBooleanField
      FieldName = 'rupture'
    end
    object Vsubmenucounterbruises: TBooleanField
      FieldName = 'bruises'
    end
    object Vsubmenucounterother: TBooleanField
      FieldName = 'other'
    end
    object Vsubmenucounterright: TBooleanField
      FieldName = 'right'
    end
    object Vsubmenucounterleft: TBooleanField
      FieldName = 'left'
    end
    object VsubmenucounterDoor: TBooleanField
      FieldName = 'Door'
    end
    object Vsubmenucounterbehind: TBooleanField
      FieldName = 'behind'
    end
    object VsubmenucounterRoof: TBooleanField
      FieldName = 'Roof'
    end
    object Vsubmenucounterfloor: TBooleanField
      FieldName = 'floor'
    end
    object Vsubmenucounterexisting: TBooleanField
      FieldName = 'existing'
    end
    object VsubmenucounterOtherAspects: TBooleanField
      FieldName = 'OtherAspects'
    end
    object VsubmenucounterMarks: TSmallintField
      FieldName = 'Marks'
    end
    object VsubmenucounterEnter_Date: TDateField
      FieldName = 'Enter_Date'
    end
    object VsubmenucounterEnter_Time: TTimeField
      FieldName = 'Enter_Time'
    end
    object VsubmenucounterEnter_User: TWideStringField
      FieldName = 'Enter_User'
      Size = 15
    end
    object VsubmenucounterN_Amber: TIntegerField
      FieldName = 'N_Amber'
    end
    object VsubmenucounterN_sidewalk: TIntegerField
      FieldName = 'N_sidewalk'
    end
    object VsubmenucounterN_thecounter: TIntegerField
      FieldName = 'N_thecounter'
    end
    object VsubmenucounterN_bandsupervisor: TIntegerField
      FieldName = 'N_bandsupervisor'
    end
    object VsubmenucounterN_crane: TIntegerField
      FieldName = 'N_crane'
    end
    object VsubmenucounterN_craneoperator: TIntegerField
      FieldName = 'N_craneoperator'
    end
    object Vsubmenucountercondition: TSmallintField
      FieldName = 'condition'
    end
    object VsubmenucounterStatus_type: TSmallintField
      FieldName = 'Status_type'
      Required = True
    end
    object VsubmenucounterHandling_type: TSmallintField
      FieldName = 'Handling_type'
      Required = True
    end
    object VsubmenucounterNumAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'NumAuto'
    end
    object VsubmenucounterAutoUID: TWideStringField
      FieldName = 'AutoUID'
      Required = True
      FixedChar = True
      Size = 36
    end
    object VsubmenucounterIS_CHEMICAL_MATERIAL: TIntegerField
      FieldName = 'IS_CHEMICAL_MATERIAL'
    end
    object Vsubmenucountergoood_description: TWideStringField
      FieldName = 'goood_description'
      Size = 250
    end
  end
  object DVsubmenucounter: TUniDataSource
    DataSet = Vsubmenucounter
    Left = 741
    Top = 648
  end
  object Units: TUniTable
    TableName = 'Units'
    Connection = DbServer
    LockMode = lmNone
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Options.FullRefresh = True
    Options.AutoPrepare = True
    Options.UpdateAllFields = True
    Left = 120
    Top = 48
    object UnitsNum: TAutoIncField
      AutoGenerateValue = arAutoInc
      DisplayLabel = #1585#1602#1605' '#1575#1604#1608#1581#1583#1577
      FieldName = 'Num'
    end
    object UnitsUName: TWideStringField
      DisplayLabel = #1575#1587#1605' '#1575#1604#1608#1581#1583#1577
      FieldName = 'UName'
      Size = 15
    end
    object UnitsStateValue: TFloatField
      DisplayLabel = #1602#1610#1605#1577' '#1575#1604#1581#1575#1604#1577
      FieldName = 'StateValue'
    end
  end
  object DUnits: TDataSource
    DataSet = Units
    Left = 228
    Top = 48
  end
  object Vsubmenucounter_GetNewData: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `submenucounter`'
      
        '  (`NumAuto`, `NumMainList`, `TagNumber`, `ContainerType`, `Harm' +
        '`, `CauseDamage`, `swelling`, `rupture`, `bruises`, `other`, `ri' +
        'ght`, `left`, `Door`, `behind`, `Roof`, `floor`, `existing`, `Ot' +
        'herAspects`, `RF`, `Nort1`, `NumAdmH`, `AutoUID`, `Marks`, `Ente' +
        'r_Date`, `Enter_Time`, `Enter_User`, `N_Amber`, `N_sidewalk`, `N' +
        '_thecounter`, `N_bandsupervisor`, `N_crane`, `N_craneoperator`, ' +
        '`condition`, `Status_type`, `Handling_type`, `IS_CHEMICAL_MATERI' +
        'AL`, `goood_description`)'
      'VALUES'
      
        '  (:`NumAuto`, :`NumMainList`, :`TagNumber`, :`ContainerType`, :' +
        '`Harm`, :`CauseDamage`, :`swelling`, :`rupture`, :`bruises`, :`o' +
        'ther`, :`right`, :`left`, :`Door`, :`behind`, :`Roof`, :`floor`,' +
        ' :`existing`, :`OtherAspects`, :`RF`, :`Nort1`, :`NumAdmH`, :`Au' +
        'toUID`, :`Marks`, :`Enter_Date`, :`Enter_Time`, :`Enter_User`, :' +
        '`N_Amber`, :`N_sidewalk`, :`N_thecounter`, :`N_bandsupervisor`, ' +
        ':`N_crane`, :`N_craneoperator`, :`condition`, :`Status_type`, :`' +
        'Handling_type`, :`IS_CHEMICAL_MATERIAL`, :`goood_description`)')
    SQLDelete.Strings = (
      'DELETE FROM `submenucounter`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`')
    SQLUpdate.Strings = (
      'UPDATE `submenucounter`'
      'SET'
      
        '  `NumAuto` = :`NumAuto`, `NumMainList` = :`NumMainList`, `TagNu' +
        'mber` = :`TagNumber`, `ContainerType` = :`ContainerType`, `Harm`' +
        ' = :`Harm`, `CauseDamage` = :`CauseDamage`, `swelling` = :`swell' +
        'ing`, `rupture` = :`rupture`, `bruises` = :`bruises`, `other` = ' +
        ':`other`, `right` = :`right`, `left` = :`left`, `Door` = :`Door`' +
        ', `behind` = :`behind`, `Roof` = :`Roof`, `floor` = :`floor`, `e' +
        'xisting` = :`existing`, `OtherAspects` = :`OtherAspects`, `RF` =' +
        ' :`RF`, `Nort1` = :`Nort1`, `NumAdmH` = :`NumAdmH`, `AutoUID` = ' +
        ':`AutoUID`, `Marks` = :`Marks`, `Enter_Date` = :`Enter_Date`, `E' +
        'nter_Time` = :`Enter_Time`, `Enter_User` = :`Enter_User`, `N_Amb' +
        'er` = :`N_Amber`, `N_sidewalk` = :`N_sidewalk`, `N_thecounter` =' +
        ' :`N_thecounter`, `N_bandsupervisor` = :`N_bandsupervisor`, `N_c' +
        'rane` = :`N_crane`, `N_craneoperator` = :`N_craneoperator`, `con' +
        'dition` = :`condition`, `Status_type` = :`Status_type`, `Handlin' +
        'g_type` = :`Handling_type`, `IS_CHEMICAL_MATERIAL` = :`IS_CHEMIC' +
        'AL_MATERIAL`, `goood_description` = :`goood_description`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`')
    SQLLock.Strings = (
      
        'SELECT `NumAuto`, `NumMainList`, `TagNumber`, `ContainerType`, `' +
        'Harm`, `CauseDamage`, `swelling`, `rupture`, `bruises`, `other`,' +
        ' `right`, `left`, `Door`, `behind`, `Roof`, `floor`, `existing`,' +
        ' `OtherAspects`, `RF`, `Nort1`, `NumAdmH`, `AutoUID`, `Marks`, `' +
        'Enter_Date`, `Enter_Time`, `Enter_User`, `N_Amber`, `N_sidewalk`' +
        ', `N_thecounter`, `N_bandsupervisor`, `N_crane`, `N_craneoperato' +
        'r`, `condition`, `Status_type`, `Handling_type`, `IS_CHEMICAL_MA' +
        'TERIAL`, `goood_description` FROM `submenucounter`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `NumAuto`, `NumMainList`, `TagNumber`, `ContainerType`, `' +
        'Harm`, `CauseDamage`, `swelling`, `rupture`, `bruises`, `other`,' +
        ' `right`, `left`, `Door`, `behind`, `Roof`, `floor`, `existing`,' +
        ' `OtherAspects`, `RF`, `Nort1`, `NumAdmH`, `AutoUID`, `Marks`, `' +
        'Enter_Date`, `Enter_Time`, `Enter_User`, `N_Amber`, `N_sidewalk`' +
        ', `N_thecounter`, `N_bandsupervisor`, `N_crane`, `N_craneoperato' +
        'r`, `condition`, `Status_type`, `Handling_type`, `IS_CHEMICAL_MA' +
        'TERIAL`, `goood_description` FROM `submenucounter`'
      'WHERE'
      '  `NumAuto` = :`NumAuto`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM submenucounter')
    Connection = DbServer
    SQL.Strings = (
      'CALL Vsubmenucounter_GetNewData(:VUID)')
    Left = 108
    Top = 852
    ParamData = <
      item
        DataType = ftWideString
        Name = 'VUID'
        ParamType = ptInput
        Size = 36
        Value = nil
      end>
    CommandStoredProcName = 'Vsubmenucounter_GetNewData'
    object Vsubmenucounter_GetNewDataNumMainList: TIntegerField
      FieldName = 'NumMainList'
    end
    object Vsubmenucounter_GetNewDataTagNumber: TWideStringField
      FieldName = 'TagNumber'
      Size = 75
    end
    object Vsubmenucounter_GetNewDataContainerType: TWideStringField
      FieldName = 'ContainerType'
      Size = 25
    end
    object Vsubmenucounter_GetNewDataHarm: TBooleanField
      FieldName = 'Harm'
    end
    object Vsubmenucounter_GetNewDataCauseDamage: TSmallintField
      FieldName = 'CauseDamage'
    end
    object Vsubmenucounter_GetNewDataswelling: TBooleanField
      FieldName = 'swelling'
    end
    object Vsubmenucounter_GetNewDatarupture: TBooleanField
      FieldName = 'rupture'
    end
    object Vsubmenucounter_GetNewDatabruises: TBooleanField
      FieldName = 'bruises'
    end
    object Vsubmenucounter_GetNewDataother: TBooleanField
      FieldName = 'other'
    end
    object Vsubmenucounter_GetNewDataright: TBooleanField
      FieldName = 'right'
    end
    object Vsubmenucounter_GetNewDataleft: TBooleanField
      FieldName = 'left'
    end
    object Vsubmenucounter_GetNewDataDoor: TBooleanField
      FieldName = 'Door'
    end
    object Vsubmenucounter_GetNewDatabehind: TBooleanField
      FieldName = 'behind'
    end
    object Vsubmenucounter_GetNewDataRoof: TBooleanField
      FieldName = 'Roof'
    end
    object Vsubmenucounter_GetNewDatafloor: TBooleanField
      FieldName = 'floor'
    end
    object Vsubmenucounter_GetNewDataexisting: TBooleanField
      FieldName = 'existing'
    end
    object Vsubmenucounter_GetNewDataOtherAspects: TBooleanField
      FieldName = 'OtherAspects'
    end
    object Vsubmenucounter_GetNewDataRF: TSmallintField
      FieldName = 'RF'
    end
    object Vsubmenucounter_GetNewDataNort1: TWideStringField
      FieldName = 'Nort1'
      Size = 100
    end
    object Vsubmenucounter_GetNewDataNumAdmH: TIntegerField
      FieldName = 'NumAdmH'
    end
    object Vsubmenucounter_GetNewDataMarks: TSmallintField
      FieldName = 'Marks'
    end
    object Vsubmenucounter_GetNewDataEnter_Date: TDateField
      FieldName = 'Enter_Date'
    end
    object Vsubmenucounter_GetNewDataEnter_Time: TTimeField
      FieldName = 'Enter_Time'
    end
    object Vsubmenucounter_GetNewDataEnter_User: TWideStringField
      FieldName = 'Enter_User'
      Size = 15
    end
    object Vsubmenucounter_GetNewDataN_Amber: TIntegerField
      FieldName = 'N_Amber'
    end
    object Vsubmenucounter_GetNewDataN_sidewalk: TIntegerField
      FieldName = 'N_sidewalk'
    end
    object Vsubmenucounter_GetNewDataN_thecounter: TIntegerField
      FieldName = 'N_thecounter'
    end
    object Vsubmenucounter_GetNewDataN_bandsupervisor: TIntegerField
      FieldName = 'N_bandsupervisor'
    end
    object Vsubmenucounter_GetNewDataN_crane: TIntegerField
      FieldName = 'N_crane'
    end
    object Vsubmenucounter_GetNewDataN_craneoperator: TIntegerField
      FieldName = 'N_craneoperator'
    end
    object Vsubmenucounter_GetNewDatacondition: TSmallintField
      FieldName = 'condition'
    end
    object Vsubmenucounter_GetNewDataStatus_type: TSmallintField
      FieldName = 'Status_type'
      Required = True
    end
    object Vsubmenucounter_GetNewDataHandling_type: TSmallintField
      FieldName = 'Handling_type'
      Required = True
    end
    object Vsubmenucounter_GetNewDataIS_CHEMICAL_MATERIAL: TIntegerField
      FieldName = 'IS_CHEMICAL_MATERIAL'
    end
    object Vsubmenucounter_GetNewDatagoood_description: TWideStringField
      FieldName = 'goood_description'
      Size = 250
    end
    object Vsubmenucounter_GetNewDataAutoUID: TWideStringField
      FieldName = 'AutoUID'
      Required = True
      FixedChar = True
      Size = 36
    end
  end
  object DVsubmenucounter_GetNewData: TUniDataSource
    DataSet = Vsubmenucounter_GetNewData
    Left = 384
    Top = 864
  end
  object VsubmenucounterForLocal: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `submenucounter`'
      
        '  (`NumAuto`, `NumMainList`, `TagNumber`, `ContainerType`, `Harm' +
        '`, `CauseDamage`, `swelling`, `rupture`, `bruises`, `other`, `ri' +
        'ght`, `left`, `Door`, `behind`, `Roof`, `floor`, `existing`, `Ot' +
        'herAspects`, `RF`, `Nort1`, `NumAdmH`, `AutoUID`, `Marks`, `Ente' +
        'r_Date`, `Enter_Time`, `Enter_User`, `N_Amber`, `N_sidewalk`, `N' +
        '_thecounter`, `N_bandsupervisor`, `N_crane`, `N_craneoperator`, ' +
        '`condition`)'
      'VALUES'
      
        '  (:`NumAuto`, :`NumMainList`, :`TagNumber`, :`ContainerType`, :' +
        '`Harm`, :`CauseDamage`, :`swelling`, :`rupture`, :`bruises`, :`o' +
        'ther`, :`right`, :`left`, :`Door`, :`behind`, :`Roof`, :`floor`,' +
        ' :`existing`, :`OtherAspects`, :`RF`, :`Nort1`, :`NumAdmH`, :`Au' +
        'toUID`, :`Marks`, :`Enter_Date`, :`Enter_Time`, :`Enter_User`, :' +
        '`N_Amber`, :`N_sidewalk`, :`N_thecounter`, :`N_bandsupervisor`, ' +
        ':`N_crane`, :`N_craneoperator`, :`condition`)')
    SQLDelete.Strings = (
      'DELETE FROM `submenucounter`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`')
    SQLUpdate.Strings = (
      'UPDATE `submenucounter`'
      'SET'
      
        '  `NumAuto` = :`NumAuto`, `NumMainList` = :`NumMainList`, `TagNu' +
        'mber` = :`TagNumber`, `ContainerType` = :`ContainerType`, `Harm`' +
        ' = :`Harm`, `CauseDamage` = :`CauseDamage`, `swelling` = :`swell' +
        'ing`, `rupture` = :`rupture`, `bruises` = :`bruises`, `other` = ' +
        ':`other`, `right` = :`right`, `left` = :`left`, `Door` = :`Door`' +
        ', `behind` = :`behind`, `Roof` = :`Roof`, `floor` = :`floor`, `e' +
        'xisting` = :`existing`, `OtherAspects` = :`OtherAspects`, `RF` =' +
        ' :`RF`, `Nort1` = :`Nort1`, `NumAdmH` = :`NumAdmH`, `AutoUID` = ' +
        ':`AutoUID`, `Marks` = :`Marks`, `Enter_Date` = :`Enter_Date`, `E' +
        'nter_Time` = :`Enter_Time`, `Enter_User` = :`Enter_User`, `N_Amb' +
        'er` = :`N_Amber`, `N_sidewalk` = :`N_sidewalk`, `N_thecounter` =' +
        ' :`N_thecounter`, `N_bandsupervisor` = :`N_bandsupervisor`, `N_c' +
        'rane` = :`N_crane`, `N_craneoperator` = :`N_craneoperator`, `con' +
        'dition` = :`condition`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`')
    SQLLock.Strings = (
      
        'SELECT `NumAuto`, `NumMainList`, `TagNumber`, `ContainerType`, `' +
        'Harm`, `CauseDamage`, `swelling`, `rupture`, `bruises`, `other`,' +
        ' `right`, `left`, `Door`, `behind`, `Roof`, `floor`, `existing`,' +
        ' `OtherAspects`, `RF`, `Nort1`, `NumAdmH`, `AutoUID`, `Marks`, `' +
        'Enter_Date`, `Enter_Time`, `Enter_User`, `N_Amber`, `N_sidewalk`' +
        ', `N_thecounter`, `N_bandsupervisor`, `N_crane`, `N_craneoperato' +
        'r`, `condition` FROM `submenucounter`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `NumAuto`, `NumMainList`, `TagNumber`, `ContainerType`, `' +
        'Harm`, `CauseDamage`, `swelling`, `rupture`, `bruises`, `other`,' +
        ' `right`, `left`, `Door`, `behind`, `Roof`, `floor`, `existing`,' +
        ' `OtherAspects`, `RF`, `Nort1`, `NumAdmH`, `AutoUID`, `Marks`, `' +
        'Enter_Date`, `Enter_Time`, `Enter_User`, `N_Amber`, `N_sidewalk`' +
        ', `N_thecounter`, `N_bandsupervisor`, `N_crane`, `N_craneoperato' +
        'r`, `condition` FROM `submenucounter`'
      'WHERE'
      '  `NumAuto` = :`NumAuto`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM submenucounter')
    Connection = DbServer
    SQL.Strings = (
      'CALL VsubmenucounterForLocal(:id)')
    Left = 564
    Top = 456
    ParamData = <
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptInput
        Size = 36
        Value = nil
      end>
    CommandStoredProcName = 'VsubmenucounterForLocal'
    object VsubmenucounterForLocalNumAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'NumAuto'
    end
    object VsubmenucounterForLocalNumMainList: TIntegerField
      FieldName = 'NumMainList'
    end
    object VsubmenucounterForLocalTagNumber: TWideStringField
      FieldName = 'TagNumber'
      Size = 75
    end
    object VsubmenucounterForLocalContainerType: TWideStringField
      FieldName = 'ContainerType'
      Size = 25
    end
    object VsubmenucounterForLocalHarm: TBooleanField
      FieldName = 'Harm'
    end
    object VsubmenucounterForLocalCauseDamage: TSmallintField
      FieldName = 'CauseDamage'
    end
    object VsubmenucounterForLocalswelling: TBooleanField
      FieldName = 'swelling'
    end
    object VsubmenucounterForLocalrupture: TBooleanField
      FieldName = 'rupture'
    end
    object VsubmenucounterForLocalbruises: TBooleanField
      FieldName = 'bruises'
    end
    object VsubmenucounterForLocalother: TBooleanField
      FieldName = 'other'
    end
    object VsubmenucounterForLocalright: TBooleanField
      FieldName = 'right'
    end
    object VsubmenucounterForLocalleft: TBooleanField
      FieldName = 'left'
    end
    object VsubmenucounterForLocalDoor: TBooleanField
      FieldName = 'Door'
    end
    object VsubmenucounterForLocalbehind: TBooleanField
      FieldName = 'behind'
    end
    object VsubmenucounterForLocalRoof: TBooleanField
      FieldName = 'Roof'
    end
    object VsubmenucounterForLocalfloor: TBooleanField
      FieldName = 'floor'
    end
    object VsubmenucounterForLocalexisting: TBooleanField
      FieldName = 'existing'
    end
    object VsubmenucounterForLocalOtherAspects: TBooleanField
      FieldName = 'OtherAspects'
    end
    object VsubmenucounterForLocalRF: TSmallintField
      FieldName = 'RF'
    end
    object VsubmenucounterForLocalNort1: TWideStringField
      FieldName = 'Nort1'
      Size = 100
    end
    object VsubmenucounterForLocalNumAdmH: TIntegerField
      FieldName = 'NumAdmH'
    end
    object VsubmenucounterForLocalAutoUID: TWideStringField
      FieldName = 'AutoUID'
      Required = True
      FixedChar = True
      Size = 36
    end
    object VsubmenucounterForLocalMarks: TSmallintField
      FieldName = 'Marks'
    end
    object VsubmenucounterForLocalEnter_Date: TDateField
      FieldName = 'Enter_Date'
    end
    object VsubmenucounterForLocalEnter_Time: TTimeField
      FieldName = 'Enter_Time'
    end
    object VsubmenucounterForLocalEnter_User: TWideStringField
      FieldName = 'Enter_User'
      Size = 15
    end
    object VsubmenucounterForLocalN_Amber: TIntegerField
      FieldName = 'N_Amber'
    end
    object VsubmenucounterForLocalN_sidewalk: TIntegerField
      FieldName = 'N_sidewalk'
    end
    object VsubmenucounterForLocalN_thecounter: TIntegerField
      FieldName = 'N_thecounter'
    end
    object VsubmenucounterForLocalN_bandsupervisor: TIntegerField
      FieldName = 'N_bandsupervisor'
    end
    object VsubmenucounterForLocalN_crane: TIntegerField
      FieldName = 'N_crane'
    end
    object VsubmenucounterForLocalN_craneoperator: TIntegerField
      FieldName = 'N_craneoperator'
    end
    object VsubmenucounterForLocalcondition: TSmallintField
      FieldName = 'condition'
    end
    object VsubmenucounterForLocalIS_CHEMICAL_MATERIAL: TIntegerField
      FieldName = 'IS_CHEMICAL_MATERIAL'
    end
    object VsubmenucounterForLocalgoood_description: TWideStringField
      FieldName = 'goood_description'
      Size = 250
    end
  end
  object DVsubmenucounterForLocal: TUniDataSource
    DataSet = VsubmenucounterForLocal
    Left = 816
    Top = 456
  end
  object VSTOPS_GetNewData: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `stops`'
      
        '  (`AutoUID`, `Start_Date`, `End_Date`, `Stop_Notes`, `Enter_Use' +
        'r`, `Enter_Date`, `M_AutoUID`, `Start_Time`, `End_Time`, `Reason' +
        '_Suspension`, `Handling_type`, `isUpdated`)'
      'VALUES'
      
        '  (:`AutoUID`, :`Start_Date`, :`End_Date`, :`Stop_Notes`, :`Ente' +
        'r_User`, :`Enter_Date`, :`M_AutoUID`, :`Start_Time`, :`End_Time`' +
        ', :`Reason_Suspension`, :`Handling_type`, :`isUpdated`)')
    SQLDelete.Strings = (
      'DELETE FROM `stops`'
      'WHERE'
      '  `AutoUID` = :`Old_AutoUID`')
    SQLUpdate.Strings = (
      'UPDATE `stops`'
      'SET'
      
        '  `AutoUID` = :`AutoUID`, `Start_Date` = :`Start_Date`, `End_Dat' +
        'e` = :`End_Date`, `Stop_Notes` = :`Stop_Notes`, `Enter_User` = :' +
        '`Enter_User`, `Enter_Date` = :`Enter_Date`, `M_AutoUID` = :`M_Au' +
        'toUID`, `Start_Time` = :`Start_Time`, `End_Time` = :`End_Time`, ' +
        '`Reason_Suspension` = :`Reason_Suspension`, `Handling_type` = :`' +
        'Handling_type`, `isUpdated` = :`isUpdated`'
      'WHERE'
      '  `AutoUID` = :`Old_AutoUID`')
    SQLLock.Strings = (
      
        'SELECT `AutoUID`, `Start_Date`, `End_Date`, `Stop_Notes`, `Enter' +
        '_User`, `Enter_Date`, `M_AutoUID`, `Start_Time`, `End_Time`, `Re' +
        'ason_Suspension`, `Handling_type`, `isUpdated` FROM `stops`'
      'WHERE'
      '  `AutoUID` = :`Old_AutoUID`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `AutoUID`, `Start_Date`, `End_Date`, `Stop_Notes`, `Enter' +
        '_User`, `Enter_Date`, `M_AutoUID`, `Start_Time`, `End_Time`, `Re' +
        'ason_Suspension`, `Handling_type`, `isUpdated` FROM `stops`'
      'WHERE'
      '  `AutoUID` = :`AutoUID`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM stops')
    Connection = DbServer
    SQL.Strings = (
      'CALL VSTOPS_GetNewData(:Vnum)')
    Left = 492
    Top = 300
    ParamData = <
      item
        DataType = ftString
        Name = 'Vnum'
        ParamType = ptInput
        Size = 36
        Value = nil
      end>
    CommandStoredProcName = 'VSTOPS_GetNewData'
    object VSTOPS_GetNewDataStart_Date: TDateTimeField
      FieldName = 'Start_Date'
    end
    object VSTOPS_GetNewDataEnd_Date: TDateTimeField
      FieldName = 'End_Date'
    end
    object VSTOPS_GetNewDataStop_Notes: TWideStringField
      FieldName = 'Stop_Notes'
      Size = 200
    end
    object VSTOPS_GetNewDataEnter_User: TWideStringField
      FieldName = 'Enter_User'
      Size = 15
    end
    object VSTOPS_GetNewDataEnter_Date: TDateTimeField
      FieldName = 'Enter_Date'
    end
    object VSTOPS_GetNewDataM_AutoUID: TWideStringField
      FieldName = 'M_AutoUID'
      FixedChar = True
      Size = 36
    end
    object VSTOPS_GetNewDataStart_Time: TTimeField
      FieldName = 'Start_Time'
    end
    object VSTOPS_GetNewDataEnd_Time: TTimeField
      FieldName = 'End_Time'
    end
    object VSTOPS_GetNewDataReason_Suspension: TSmallintField
      FieldName = 'Reason_Suspension'
      Required = True
    end
    object VSTOPS_GetNewDataAutoUID: TWideStringField
      FieldName = 'AutoUID'
      Required = True
      FixedChar = True
      Size = 36
    end
    object VSTOPS_GetNewDataHandling_type: TSmallintField
      FieldName = 'Handling_type'
    end
    object VSTOPS_GetNewDataisUpdated: TIntegerField
      FieldName = 'isUpdated'
    end
  end
  object DVSTOPS_GetNewData: TUniDataSource
    DataSet = VSTOPS_GetNewData
    Left = 744
    Top = 288
  end
  object Vunits: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `units`'
      '  (`Num`, `UName`, `StateValue`, `TrtepNum`, `Kyass`, `GroupNo`)'
      'VALUES'
      
        '  (:`Num`, :`UName`, :`StateValue`, :`TrtepNum`, :`Kyass`, :`Gro' +
        'upNo`)')
    SQLDelete.Strings = (
      'DELETE FROM `units`'
      'WHERE'
      '  `Num` = :`Old_Num`')
    SQLUpdate.Strings = (
      'UPDATE `units`'
      'SET'
      
        '  `Num` = :`Num`, `UName` = :`UName`, `StateValue` = :`StateValu' +
        'e`, `TrtepNum` = :`TrtepNum`, `Kyass` = :`Kyass`, `GroupNo` = :`' +
        'GroupNo`'
      'WHERE'
      '  `Num` = :`Old_Num`')
    SQLLock.Strings = (
      
        'SELECT `Num`, `UName`, `StateValue`, `TrtepNum`, `Kyass`, `Group' +
        'No` FROM `units`'
      'WHERE'
      '  `Num` = :`Old_Num`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `Num`, `UName`, `StateValue`, `TrtepNum`, `Kyass`, `Group' +
        'No` FROM `units`'
      'WHERE'
      '  `Num` = :`Num`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM units')
    Connection = DbServer
    SQL.Strings = (
      'CALL VunitsForLocal()')
    Left = 1032
    Top = 24
    CommandStoredProcName = 'VunitsForLocal'
    object VunitsNum: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'Num'
    end
    object VunitsUName: TWideStringField
      FieldName = 'UName'
      Size = 50
    end
    object VunitsStateValue: TFloatField
      FieldName = 'StateValue'
    end
    object VunitsTrtepNum: TIntegerField
      FieldName = 'TrtepNum'
    end
    object VunitsKyass: TFloatField
      FieldName = 'Kyass'
    end
    object VunitsGroupNo: TSmallintField
      FieldName = 'GroupNo'
    end
  end
  object DVunits: TUniDataSource
    DataSet = Vunits
    Left = 1140
    Top = 36
  end
  object VsidewalkForServer: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `sidewalk`'
      '  (`NumAuto`, `NameSidewalk`)'
      'VALUES'
      '  (:`NumAuto`, :`NameSidewalk`)')
    SQLDelete.Strings = (
      'DELETE FROM `sidewalk`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`')
    SQLUpdate.Strings = (
      'UPDATE `sidewalk`'
      'SET'
      '  `NumAuto` = :`NumAuto`, `NameSidewalk` = :`NameSidewalk`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`')
    SQLLock.Strings = (
      'SELECT `NumAuto`, `NameSidewalk` FROM `sidewalk`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      'SELECT `NumAuto`, `NameSidewalk` FROM `sidewalk`'
      'WHERE'
      '  `NumAuto` = :`NumAuto`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM sidewalk')
    Connection = DbServer
    SQL.Strings = (
      'CALL VsidewalkForServer()')
    Left = 996
    Top = 156
    CommandStoredProcName = 'VsidewalkForServer'
    object VsidewalkForServerNumAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'NumAuto'
    end
    object VsidewalkForServerNameSidewalk: TWideStringField
      FieldName = 'NameSidewalk'
      Size = 200
    end
  end
  object DVsidewalkForServer: TUniDataSource
    DataSet = VsidewalkForServer
    Left = 1152
    Top = 156
  end
  object VamberForLocal: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `amber`'
      '  (`NumAuto`, `NameAmber`)'
      'VALUES'
      '  (:`NumAuto`, :`NameAmber`)')
    SQLDelete.Strings = (
      'DELETE FROM `amber`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`')
    SQLUpdate.Strings = (
      'UPDATE `amber`'
      'SET'
      '  `NumAuto` = :`NumAuto`, `NameAmber` = :`NameAmber`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`')
    SQLLock.Strings = (
      'SELECT `NumAuto`, `NameAmber` FROM `amber`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      'SELECT `NumAuto`, `NameAmber` FROM `amber`'
      'WHERE'
      '  `NumAuto` = :`NumAuto`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM amber')
    Connection = DbServer
    SQL.Strings = (
      'CALL VamberForLocal()')
    Left = 1044
    Top = 264
    CommandStoredProcName = 'VamberForLocal'
    object VamberForLocalNumAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'NumAuto'
    end
    object VamberForLocalNameAmber: TWideStringField
      FieldName = 'NameAmber'
      Size = 200
    end
  end
  object DVamberForLocal: TUniDataSource
    DataSet = VamberForLocal
    Left = 1212
    Top = 276
  end
  object VbandsupervisorForLocal: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO bandsupervisor'
      '  (NumAuto, NameBandSupervisor)'
      'VALUES'
      '  (:NumAuto, :NameBandSupervisor)')
    SQLDelete.Strings = (
      'DELETE FROM bandsupervisor'
      'WHERE'
      '  NumAuto = :Old_NumAuto')
    SQLUpdate.Strings = (
      'UPDATE bandsupervisor'
      'SET'
      '  NumAuto = :NumAuto, NameBandSupervisor = :NameBandSupervisor'
      'WHERE'
      '  NumAuto = :Old_NumAuto')
    SQLLock.Strings = (
      'SELECT NumAuto, NameBandSupervisor FROM bandsupervisor'
      'WHERE'
      '  NumAuto = :Old_NumAuto'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      'SELECT NumAuto, NameBandSupervisor FROM bandsupervisor'
      'WHERE'
      '  NumAuto = :NumAuto')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM bandsupervisor')
    Connection = DbServer
    SQL.Strings = (
      'CALL VbandsupervisorForLocal()')
    Left = 1032
    Top = 372
    CommandStoredProcName = 'VbandsupervisorForLocal'
    object VbandsupervisorForLocalNumAuto: TIntegerField
      FieldName = 'NumAuto'
    end
    object VbandsupervisorForLocalNameBandSupervisor: TWideStringField
      FieldName = 'NameBandSupervisor'
      Size = 200
    end
  end
  object DVbandsupervisorForLocal: TUniDataSource
    DataSet = VbandsupervisorForLocal
    Left = 1224
    Top = 384
  end
  object VcountersForLocal: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `thecounter`'
      '  (`NumAuto`, `NameTheCounter`, `NumEmp`)'
      'VALUES'
      '  (:`NumAuto`, :`NameTheCounter`, :`NumEmp`)')
    SQLDelete.Strings = (
      'DELETE FROM `thecounter`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`')
    SQLUpdate.Strings = (
      'UPDATE `thecounter`'
      'SET'
      
        '  `NumAuto` = :`NumAuto`, `NameTheCounter` = :`NameTheCounter`, ' +
        '`NumEmp` = :`NumEmp`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`')
    SQLLock.Strings = (
      'SELECT `NumAuto`, `NameTheCounter`, `NumEmp` FROM `thecounter`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      'SELECT `NumAuto`, `NameTheCounter`, `NumEmp` FROM `thecounter`'
      'WHERE'
      '  `NumAuto` = :`NumAuto`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM thecounter')
    Connection = DbServer
    SQL.Strings = (
      'CALL VcountersForLocal()')
    Left = 1032
    Top = 564
    CommandStoredProcName = 'VcountersForLocal'
    object VcountersForLocalNumAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'NumAuto'
    end
    object VcountersForLocalNameTheCounter: TWideStringField
      FieldName = 'NameTheCounter'
      Size = 250
    end
    object VcountersForLocalNumEmp: TWideStringField
      FieldName = 'NumEmp'
      Size = 25
    end
  end
  object DVcountersForLocal: TUniDataSource
    DataSet = VcountersForLocal
    Left = 1224
    Top = 540
  end
  object VcraneForLocal: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `crane`'
      '  (`NumAuto`, `NameCrane`)'
      'VALUES'
      '  (:`NumAuto`, :`NameCrane`)')
    SQLDelete.Strings = (
      'DELETE FROM `crane`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`')
    SQLUpdate.Strings = (
      'UPDATE `crane`'
      'SET'
      '  `NumAuto` = :`NumAuto`, `NameCrane` = :`NameCrane`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`')
    SQLLock.Strings = (
      'SELECT `NumAuto`, `NameCrane` FROM `crane`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      'SELECT `NumAuto`, `NameCrane` FROM `crane`'
      'WHERE'
      '  `NumAuto` = :`NumAuto`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM crane')
    Connection = DbServer
    SQL.Strings = (
      'CALL VcraneForLocal()')
    Left = 996
    Top = 684
    CommandStoredProcName = 'VcraneForLocal'
    object VcraneForLocalNumAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'NumAuto'
    end
    object VcraneForLocalNameCrane: TWideStringField
      FieldName = 'NameCrane'
      Size = 200
    end
  end
  object DVcraneForLocal: TUniDataSource
    DataSet = VcraneForLocal
    Left = 1212
    Top = 708
  end
  object VcraneoperatorForLocal: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `craneoperator`'
      '  (`NumAuto`, `NameCraneOperator`, `NumEmp`)'
      'VALUES'
      '  (:`NumAuto`, :`NameCraneOperator`, :`NumEmp`)')
    SQLDelete.Strings = (
      'DELETE FROM `craneoperator`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`')
    SQLUpdate.Strings = (
      'UPDATE `craneoperator`'
      'SET'
      
        '  `NumAuto` = :`NumAuto`, `NameCraneOperator` = :`NameCraneOpera' +
        'tor`, `NumEmp` = :`NumEmp`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`')
    SQLLock.Strings = (
      
        'SELECT `NumAuto`, `NameCraneOperator`, `NumEmp` FROM `craneopera' +
        'tor`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `NumAuto`, `NameCraneOperator`, `NumEmp` FROM `craneopera' +
        'tor`'
      'WHERE'
      '  `NumAuto` = :`NumAuto`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM craneoperator')
    Connection = DbServer
    SQL.Strings = (
      'CALL VcraneoperatorForLocal()')
    Left = 984
    Top = 828
    CommandStoredProcName = 'VcraneoperatorForLocal'
    object VcraneoperatorForLocalNumAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'NumAuto'
    end
    object VcraneoperatorForLocalNameCraneOperator: TWideStringField
      FieldName = 'NameCraneOperator'
      Size = 200
    end
    object VcraneoperatorForLocalNumEmp: TWideStringField
      FieldName = 'NumEmp'
      Size = 25
    end
  end
  object DVcraneoperatorForLocal: TUniDataSource
    DataSet = VcraneoperatorForLocal
    Left = 1200
    Top = 852
  end
  object VharmForLocal: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `harm`'
      '  (`NumAuto`, `NameHarm`)'
      'VALUES'
      '  (:`NumAuto`, :`NameHarm`)')
    SQLDelete.Strings = (
      'DELETE FROM `harm`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`')
    SQLUpdate.Strings = (
      'UPDATE `harm`'
      'SET'
      '  `NumAuto` = :`NumAuto`, `NameHarm` = :`NameHarm`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`')
    SQLLock.Strings = (
      'SELECT `NumAuto`, `NameHarm` FROM `harm`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      'SELECT `NumAuto`, `NameHarm` FROM `harm`'
      'WHERE'
      '  `NumAuto` = :`NumAuto`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM harm')
    Connection = DbServer
    SQL.Strings = (
      'CALL VharmForLocal()')
    Left = 948
    Top = 960
    CommandStoredProcName = 'VharmForLocal'
    object VharmForLocalNumAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'NumAuto'
    end
    object VharmForLocalNameHarm: TWideStringField
      FieldName = 'NameHarm'
      Size = 200
    end
  end
  object DVunitsForLocal: TUniDataSource
    DataSet = VharmForLocal
    Left = 1188
    Top = 996
  end
  object VsubmenucounterForLocalAllList: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `submenucounter`'
      
        '  (`NumAuto`, `NumMainList`, `TagNumber`, `ContainerType`, `Harm' +
        '`, `CauseDamage`, `swelling`, `rupture`, `bruises`, `other`, `ri' +
        'ght`, `left`, `Door`, `behind`, `Roof`, `floor`, `existing`, `Ot' +
        'herAspects`, `RF`, `Nort1`, `NumAdmH`, `AutoUID`, `Marks`, `Ente' +
        'r_Date`, `Enter_Time`, `Enter_User`, `N_Amber`, `N_sidewalk`, `N' +
        '_thecounter`, `N_bandsupervisor`, `N_crane`, `N_craneoperator`, ' +
        '`condition`, `Status_type`, `Handling_type`, `IS_CHEMICAL_MATERI' +
        'AL`, `goood_description`)'
      'VALUES'
      
        '  (:`NumAuto`, :`NumMainList`, :`TagNumber`, :`ContainerType`, :' +
        '`Harm`, :`CauseDamage`, :`swelling`, :`rupture`, :`bruises`, :`o' +
        'ther`, :`right`, :`left`, :`Door`, :`behind`, :`Roof`, :`floor`,' +
        ' :`existing`, :`OtherAspects`, :`RF`, :`Nort1`, :`NumAdmH`, :`Au' +
        'toUID`, :`Marks`, :`Enter_Date`, :`Enter_Time`, :`Enter_User`, :' +
        '`N_Amber`, :`N_sidewalk`, :`N_thecounter`, :`N_bandsupervisor`, ' +
        ':`N_crane`, :`N_craneoperator`, :`condition`, :`Status_type`, :`' +
        'Handling_type`, :`IS_CHEMICAL_MATERIAL`, :`goood_description`)')
    SQLDelete.Strings = (
      'DELETE FROM `submenucounter`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`')
    SQLUpdate.Strings = (
      'UPDATE `submenucounter`'
      'SET'
      
        '  `NumAuto` = :`NumAuto`, `NumMainList` = :`NumMainList`, `TagNu' +
        'mber` = :`TagNumber`, `ContainerType` = :`ContainerType`, `Harm`' +
        ' = :`Harm`, `CauseDamage` = :`CauseDamage`, `swelling` = :`swell' +
        'ing`, `rupture` = :`rupture`, `bruises` = :`bruises`, `other` = ' +
        ':`other`, `right` = :`right`, `left` = :`left`, `Door` = :`Door`' +
        ', `behind` = :`behind`, `Roof` = :`Roof`, `floor` = :`floor`, `e' +
        'xisting` = :`existing`, `OtherAspects` = :`OtherAspects`, `RF` =' +
        ' :`RF`, `Nort1` = :`Nort1`, `NumAdmH` = :`NumAdmH`, `AutoUID` = ' +
        ':`AutoUID`, `Marks` = :`Marks`, `Enter_Date` = :`Enter_Date`, `E' +
        'nter_Time` = :`Enter_Time`, `Enter_User` = :`Enter_User`, `N_Amb' +
        'er` = :`N_Amber`, `N_sidewalk` = :`N_sidewalk`, `N_thecounter` =' +
        ' :`N_thecounter`, `N_bandsupervisor` = :`N_bandsupervisor`, `N_c' +
        'rane` = :`N_crane`, `N_craneoperator` = :`N_craneoperator`, `con' +
        'dition` = :`condition`, `Status_type` = :`Status_type`, `Handlin' +
        'g_type` = :`Handling_type`, `IS_CHEMICAL_MATERIAL` = :`IS_CHEMIC' +
        'AL_MATERIAL`, `goood_description` = :`goood_description`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`')
    SQLLock.Strings = (
      
        'SELECT `NumAuto`, `NumMainList`, `TagNumber`, `ContainerType`, `' +
        'Harm`, `CauseDamage`, `swelling`, `rupture`, `bruises`, `other`,' +
        ' `right`, `left`, `Door`, `behind`, `Roof`, `floor`, `existing`,' +
        ' `OtherAspects`, `RF`, `Nort1`, `NumAdmH`, `AutoUID`, `Marks`, `' +
        'Enter_Date`, `Enter_Time`, `Enter_User`, `N_Amber`, `N_sidewalk`' +
        ', `N_thecounter`, `N_bandsupervisor`, `N_crane`, `N_craneoperato' +
        'r`, `condition`, `Status_type`, `Handling_type`, `IS_CHEMICAL_MA' +
        'TERIAL`, `goood_description` FROM `submenucounter`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `NumAuto`, `NumMainList`, `TagNumber`, `ContainerType`, `' +
        'Harm`, `CauseDamage`, `swelling`, `rupture`, `bruises`, `other`,' +
        ' `right`, `left`, `Door`, `behind`, `Roof`, `floor`, `existing`,' +
        ' `OtherAspects`, `RF`, `Nort1`, `NumAdmH`, `AutoUID`, `Marks`, `' +
        'Enter_Date`, `Enter_Time`, `Enter_User`, `N_Amber`, `N_sidewalk`' +
        ', `N_thecounter`, `N_bandsupervisor`, `N_crane`, `N_craneoperato' +
        'r`, `condition`, `Status_type`, `Handling_type`, `IS_CHEMICAL_MA' +
        'TERIAL`, `goood_description` FROM `submenucounter`'
      'WHERE'
      '  `NumAuto` = :`NumAuto`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM submenucounter')
    Connection = DbServer
    SQL.Strings = (
      'CALL VsubmenucounterForLocalAllList(:whoWrite, :Vnum)')
    Left = 720
    Top = 816
    ParamData = <
      item
        DataType = ftWideString
        Name = 'whoWrite'
        ParamType = ptInput
        Size = 15
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'Vnum'
        ParamType = ptInput
        Value = nil
      end>
    CommandStoredProcName = 'VsubmenucounterForLocalAllList'
    object VsubmenucounterForLocalAllListNumMainList: TIntegerField
      FieldName = 'NumMainList'
    end
    object VsubmenucounterForLocalAllListTagNumber: TWideStringField
      FieldName = 'TagNumber'
      Size = 75
    end
    object VsubmenucounterForLocalAllListContainerType: TWideStringField
      FieldName = 'ContainerType'
      Size = 25
    end
    object VsubmenucounterForLocalAllListCauseDamage: TSmallintField
      FieldName = 'CauseDamage'
    end
    object VsubmenucounterForLocalAllListHarm: TBooleanField
      FieldName = 'Harm'
    end
    object VsubmenucounterForLocalAllListNort1: TWideStringField
      FieldName = 'Nort1'
      Size = 100
    end
    object VsubmenucounterForLocalAllListRF: TSmallintField
      FieldName = 'RF'
    end
    object VsubmenucounterForLocalAllListNumAdmH: TIntegerField
      FieldName = 'NumAdmH'
    end
    object VsubmenucounterForLocalAllListswelling: TBooleanField
      FieldName = 'swelling'
    end
    object VsubmenucounterForLocalAllListrupture: TBooleanField
      FieldName = 'rupture'
    end
    object VsubmenucounterForLocalAllListbruises: TBooleanField
      FieldName = 'bruises'
    end
    object VsubmenucounterForLocalAllListother: TBooleanField
      FieldName = 'other'
    end
    object VsubmenucounterForLocalAllListright: TBooleanField
      FieldName = 'right'
    end
    object VsubmenucounterForLocalAllListleft: TBooleanField
      FieldName = 'left'
    end
    object VsubmenucounterForLocalAllListDoor: TBooleanField
      FieldName = 'Door'
    end
    object VsubmenucounterForLocalAllListbehind: TBooleanField
      FieldName = 'behind'
    end
    object VsubmenucounterForLocalAllListRoof: TBooleanField
      FieldName = 'Roof'
    end
    object VsubmenucounterForLocalAllListfloor: TBooleanField
      FieldName = 'floor'
    end
    object VsubmenucounterForLocalAllListexisting: TBooleanField
      FieldName = 'existing'
    end
    object VsubmenucounterForLocalAllListOtherAspects: TBooleanField
      FieldName = 'OtherAspects'
    end
    object VsubmenucounterForLocalAllListMarks: TSmallintField
      FieldName = 'Marks'
    end
    object VsubmenucounterForLocalAllListEnter_Date: TDateField
      FieldName = 'Enter_Date'
    end
    object VsubmenucounterForLocalAllListEnter_Time: TTimeField
      FieldName = 'Enter_Time'
    end
    object VsubmenucounterForLocalAllListEnter_User: TWideStringField
      FieldName = 'Enter_User'
      Size = 15
    end
    object VsubmenucounterForLocalAllListN_Amber: TIntegerField
      FieldName = 'N_Amber'
    end
    object VsubmenucounterForLocalAllListN_sidewalk: TIntegerField
      FieldName = 'N_sidewalk'
    end
    object VsubmenucounterForLocalAllListN_thecounter: TIntegerField
      FieldName = 'N_thecounter'
    end
    object VsubmenucounterForLocalAllListN_bandsupervisor: TIntegerField
      FieldName = 'N_bandsupervisor'
    end
    object VsubmenucounterForLocalAllListN_crane: TIntegerField
      FieldName = 'N_crane'
    end
    object VsubmenucounterForLocalAllListN_craneoperator: TIntegerField
      FieldName = 'N_craneoperator'
    end
    object VsubmenucounterForLocalAllListcondition: TSmallintField
      FieldName = 'condition'
    end
    object VsubmenucounterForLocalAllListStatus_type: TSmallintField
      FieldName = 'Status_type'
    end
    object VsubmenucounterForLocalAllListHandling_type: TSmallintField
      FieldName = 'Handling_type'
    end
    object VsubmenucounterForLocalAllListNumAuto: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'NumAuto'
    end
    object VsubmenucounterForLocalAllListAutoUID: TWideStringField
      FieldName = 'AutoUID'
      Required = True
      FixedChar = True
      Size = 36
    end
    object VsubmenucounterForLocalAllListIS_CHEMICAL_MATERIAL: TIntegerField
      FieldName = 'IS_CHEMICAL_MATERIAL'
    end
    object VsubmenucounterForLocalAllListgoood_description: TWideStringField
      FieldName = 'goood_description'
      Size = 250
    end
  end
  object DVsubmenucounterForLocalAllList: TUniDataSource
    DataSet = VsubmenucounterForLocalAllList
    Left = 720
    Top = 912
  end
  object VNotesForShip_NewData: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `shipnotes`'
      
        '  (`AutoUID`, `Notes`, `Enter_User`, `Enter_Date`, `M_AutoUID`, ' +
        '`isUpdated`)'
      'VALUES'
      
        '  (:`AutoUID`, :`Notes`, :`Enter_User`, :`Enter_Date`, :`M_AutoU' +
        'ID`, :`isUpdated`)')
    SQLDelete.Strings = (
      'DELETE FROM `shipnotes`'
      'WHERE'
      '  `AutoUID` = :`Old_AutoUID`')
    SQLUpdate.Strings = (
      'UPDATE `shipnotes`'
      'SET'
      
        '  `AutoUID` = :`AutoUID`, `Notes` = :`Notes`, `Enter_User` = :`E' +
        'nter_User`, `Enter_Date` = :`Enter_Date`, `M_AutoUID` = :`M_Auto' +
        'UID`, `isUpdated` = :`isUpdated`'
      'WHERE'
      '  `AutoUID` = :`Old_AutoUID`')
    SQLLock.Strings = (
      
        'SELECT `AutoUID`, `Notes`, `Enter_User`, `Enter_Date`, `M_AutoUI' +
        'D`, `isUpdated` FROM `shipnotes`'
      'WHERE'
      '  `AutoUID` = :`Old_AutoUID`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `AutoUID`, `Notes`, `Enter_User`, `Enter_Date`, `M_AutoUI' +
        'D`, `isUpdated` FROM `shipnotes`'
      'WHERE'
      '  `AutoUID` = :`AutoUID`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM shipnotes')
    Connection = DbServer
    SQL.Strings = (
      'CALL VNotesForShip_NewData(:VNum)')
    Left = 480
    Top = 156
    ParamData = <
      item
        DataType = ftString
        Name = 'VNum'
        ParamType = ptInput
        Size = 36
        Value = nil
      end>
    CommandStoredProcName = 'VNotesForShip_NewData'
    object VNotesForShip_NewDataNotes: TWideStringField
      FieldName = 'Notes'
      Size = 500
    end
    object VNotesForShip_NewDataEnter_User: TWideStringField
      FieldName = 'Enter_User'
      Size = 15
    end
    object VNotesForShip_NewDataEnter_Date: TDateTimeField
      FieldName = 'Enter_Date'
    end
    object VNotesForShip_NewDataM_AutoUID: TWideStringField
      FieldName = 'M_AutoUID'
      FixedChar = True
      Size = 36
    end
    object VNotesForShip_NewDataAutoUID: TWideStringField
      FieldName = 'AutoUID'
      Required = True
      FixedChar = True
      Size = 36
    end
    object VNotesForShip_NewDataisUpdated: TIntegerField
      FieldName = 'isUpdated'
    end
  end
  object VgetImagesForSubMenuCounter_getData: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `harm_images`'
      '  (`ID`, `AutoUID`, `img`, `M_AutoUID`)'
      'VALUES'
      '  (:`ID`, :`AutoUID`, :`img`, :`M_AutoUID`)')
    SQLDelete.Strings = (
      'DELETE FROM `harm_images`'
      'WHERE'
      '   `M_AutoUID` = :`Old_M_AutoUID`')
    SQLUpdate.Strings = (
      'UPDATE `harm_images`'
      'SET'
      
        '  `ID` = :`ID`, `AutoUID` = :`AutoUID`, `img` = :`img`, `M_AutoU' +
        'ID` = :`M_AutoUID`'
      'WHERE'
      '  `AutoUID` = :`Old_AutoUID` AND `M_AutoUID` = :`Old_M_AutoUID`')
    SQLLock.Strings = (
      'SELECT `ID`, `AutoUID`, `img`, `M_AutoUID` FROM `harm_images`'
      'WHERE'
      '  `AutoUID` = :`Old_AutoUID` AND `M_AutoUID` = :`Old_M_AutoUID`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      'SELECT `ID`, `AutoUID`, `img`, `M_AutoUID` FROM `harm_images`'
      'WHERE'
      '  `AutoUID` = :`AutoUID` AND `M_AutoUID` = :`M_AutoUID`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM harm_images')
    Connection = DbServer
    SQL.Strings = (
      'CALL getImagesForSubMenuCounter_getData(:id)')
    Left = 168
    Top = 1092
    ParamData = <
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptInput
        Size = 36
        Value = nil
      end>
    CommandStoredProcName = 'getImagesForSubMenuCounter_getData'
    object VgetImagesForSubMenuCounter_getDataID: TIntegerField
      FieldName = 'ID'
    end
    object VgetImagesForSubMenuCounter_getDataAutoUID: TWideStringField
      FieldName = 'AutoUID'
      Required = True
      FixedChar = True
      Size = 36
    end
    object VgetImagesForSubMenuCounter_getDataimg: TWideStringField
      FieldName = 'img'
      Required = True
      FixedChar = True
      Size = 150
    end
    object VgetImagesForSubMenuCounter_getDataM_AutoUID: TWideStringField
      FieldName = 'M_AutoUID'
      Required = True
      FixedChar = True
      Size = 36
    end
  end
  object DVgetImagesForSubMenuCounter_getData: TUniDataSource
    DataSet = VgetImagesForSubMenuCounter_getData
    Left = 528
    Top = 1092
  end
  object VgetImagesForSubMenuCounter: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `harm_images`'
      '  (`ID`, `AutoUID`, `img`, `M_AutoUID`)'
      'VALUES'
      '  (:`ID`, :`AutoUID`, :`img`, :`M_AutoUID`)')
    SQLDelete.Strings = (
      'DELETE FROM `harm_images`'
      'WHERE'
      '  `ID` = :`Old_ID`')
    SQLUpdate.Strings = (
      'UPDATE `harm_images`'
      'SET'
      
        '  `ID` = :`ID`, `AutoUID` = :`AutoUID`, `img` = :`img`, `M_AutoU' +
        'ID` = :`M_AutoUID`'
      'WHERE'
      '  `ID` = :`Old_ID`')
    SQLLock.Strings = (
      'SELECT `ID`, `AutoUID`, `img`, `M_AutoUID` FROM `harm_images`'
      'WHERE'
      '  `ID` = :`Old_ID`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      'SELECT `ID`, `AutoUID`, `img`, `M_AutoUID` FROM `harm_images`'
      'WHERE'
      '  `ID` = :`ID`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM harm_images')
    Connection = DbServer
    SQL.Strings = (
      'CALL getImagesForSubMenuCounter(:id)')
    Left = 288
    Top = 1236
    ParamData = <
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptInput
        Size = 36
        Value = nil
      end>
    CommandStoredProcName = 'getImagesForSubMenuCounter'
    object VgetImagesForSubMenuCounterID: TIntegerField
      FieldName = 'ID'
    end
    object VgetImagesForSubMenuCounterAutoUID: TWideStringField
      FieldName = 'AutoUID'
      Required = True
      FixedChar = True
      Size = 36
    end
    object VgetImagesForSubMenuCounterimg: TWideStringField
      FieldName = 'img'
      Required = True
      FixedChar = True
      Size = 150
    end
    object VgetImagesForSubMenuCounterM_AutoUID: TWideStringField
      FieldName = 'M_AutoUID'
      Required = True
      FixedChar = True
      Size = 36
    end
  end
  object DgetImagesForSubMenuCounter: TUniDataSource
    DataSet = VgetImagesForSubMenuCounter
    Left = 600
    Top = 1224
  end
  object Vperm: TUniTable
    TableName = 'perm'
    Connection = DbServer
    LockMode = lmNone
    Left = 1344
    Top = 144
    object VpermUserNum: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'UserNum'
    end
    object VpermUserName: TWideStringField
      FieldName = 'UserName'
      Size = 15
    end
    object VpermPass: TWideStringField
      FieldName = 'Pass'
      Size = 10
    end
    object VpermShipData: TBooleanField
      FieldName = 'ShipData'
      Required = True
    end
    object VpermAgent: TBooleanField
      FieldName = 'Agent'
      Required = True
    end
    object VpermHelp: TBooleanField
      FieldName = 'Help'
      Required = True
    end
    object VpermIncome: TBooleanField
      FieldName = 'Income'
      Required = True
    end
    object VpermShipp: TBooleanField
      FieldName = 'Shipp'
      Required = True
    end
    object VpermAdmis: TBooleanField
      FieldName = 'Admis'
      Required = True
    end
    object VpermAcList: TBooleanField
      FieldName = 'AcList'
      Required = True
    end
    object VpermPerm: TBooleanField
      FieldName = 'Perm'
      Required = True
    end
    object VpermReports: TBooleanField
      FieldName = 'Reports'
      Required = True
    end
    object VpermConst: TBooleanField
      FieldName = 'Const'
      Required = True
    end
    object VpermLockList: TBooleanField
      FieldName = 'LockList'
      Required = True
    end
    object VpermCommList: TBooleanField
      FieldName = 'CommList'
      Required = True
    end
    object VpermRsomList: TBooleanField
      FieldName = 'RsomList'
      Required = True
    end
    object VpermRga: TBooleanField
      FieldName = 'Rga'
      Required = True
    end
    object Vpermpyan1: TBooleanField
      FieldName = 'pyan1'
      Required = True
    end
    object Vpermpyan2: TBooleanField
      FieldName = 'pyan2'
      Required = True
    end
    object VpermpyanD: TBooleanField
      FieldName = 'pyanD'
      Required = True
    end
    object VpermDrevle: TBooleanField
      FieldName = 'Drevle'
      Required = True
    end
    object Vpermpoapa: TBooleanField
      FieldName = 'poapa'
      Required = True
    end
    object VpermAdorfrze: TBooleanField
      FieldName = 'Adorfrze'
      Required = True
    end
    object Vpermkzena: TBooleanField
      FieldName = 'kzena'
      Required = True
    end
    object Vpermdelload: TBooleanField
      FieldName = 'delload'
      Required = True
    end
    object Vpermdelbillload: TBooleanField
      FieldName = 'delbillload'
      Required = True
    end
    object Vpermdeltrans: TBooleanField
      FieldName = 'deltrans'
      Required = True
    end
    object VpermCarry: TBooleanField
      FieldName = 'Carry'
      Required = True
    end
    object VpermArchive: TBooleanField
      FieldName = 'Archive'
      Required = True
    end
    object VpermRsomBill: TBooleanField
      FieldName = 'RsomBill'
      Required = True
    end
    object VpermDelList: TBooleanField
      FieldName = 'DelList'
      Required = True
    end
    object VpermEnbEdit: TBooleanField
      FieldName = 'EnbEdit'
      Required = True
    end
    object VpermCarryRsom: TBooleanField
      FieldName = 'CarryRsom'
      Required = True
    end
    object VpermDailyClose: TBooleanField
      FieldName = 'DailyClose'
    end
    object VpermDailyView: TBooleanField
      FieldName = 'DailyView'
    end
    object VpermUnlockBill: TBooleanField
      FieldName = 'UnlockBill'
    end
    object VpermAlterBill: TBooleanField
      FieldName = 'AlterBill'
    end
    object VpermShipRsom: TBooleanField
      FieldName = 'ShipRsom'
    end
    object VpermAgentRsom: TBooleanField
      FieldName = 'AgentRsom'
    end
    object VpermHelpRsom: TBooleanField
      FieldName = 'HelpRsom'
    end
    object VpermCarryDRsom: TBooleanField
      FieldName = 'CarryDRsom'
    end
    object VpermCloseRsom: TBooleanField
      FieldName = 'CloseRsom'
    end
    object VpermUnlockRsom: TBooleanField
      FieldName = 'UnlockRsom'
    end
    object VpermAlterBillR: TBooleanField
      FieldName = 'AlterBillR'
    end
    object VpermDelBillR: TBooleanField
      FieldName = 'DelBillR'
    end
    object VpermReportsRsom: TBooleanField
      FieldName = 'ReportsRsom'
    end
    object VpermDailyViewR: TBooleanField
      FieldName = 'DailyViewR'
    end
    object VpermChType: TBooleanField
      FieldName = 'ChType'
    end
    object VpermRetDaily: TBooleanField
      FieldName = 'RetDaily'
    end
    object VpermPrepRep: TBooleanField
      FieldName = 'PrepRep'
    end
    object VpermIncoRep: TBooleanField
      FieldName = 'IncoRep'
    end
    object VpermDelRep: TBooleanField
      FieldName = 'DelRep'
    end
    object VpermFinalRep: TBooleanField
      FieldName = 'FinalRep'
    end
    object VpermGenRep: TBooleanField
      FieldName = 'GenRep'
    end
    object VpermGenRepEnt: TBooleanField
      FieldName = 'GenRepEnt'
    end
    object VpermChTypeR: TBooleanField
      FieldName = 'ChTypeR'
    end
    object VpermReCalc: TBooleanField
      FieldName = 'ReCalc'
    end
    object VpermTgValue: TBooleanField
      FieldName = 'TgValue'
    end
    object VpermEsalTr: TBooleanField
      FieldName = 'EsalTr'
    end
    object VpermAgentsTr: TBooleanField
      FieldName = 'AgentsTr'
    end
    object VpermConsTr: TBooleanField
      FieldName = 'ConsTr'
    end
    object VpermSrchTr: TBooleanField
      FieldName = 'SrchTr'
    end
    object VpermRepTr: TBooleanField
      FieldName = 'RepTr'
    end
    object VpermPermTr: TBooleanField
      FieldName = 'PermTr'
    end
    object VpermCurrent: TBooleanField
      FieldName = 'Current'
    end
    object VpermDebit: TBooleanField
      FieldName = 'Debit'
    end
    object VpermLockEsal: TBooleanField
      FieldName = 'LockEsal'
    end
    object VpermUnLockEsal: TBooleanField
      FieldName = 'UnLockEsal'
    end
    object VpermAdmArchive: TBooleanField
      FieldName = 'AdmArchive'
    end
    object VpermAcclistArch: TBooleanField
      FieldName = 'AcclistArch'
    end
    object VpermCreDataBase: TBooleanField
      FieldName = 'CreDataBase'
    end
    object Vpermoutport: TBooleanField
      FieldName = 'outport'
    end
    object VpermTransit: TBooleanField
      FieldName = 'Transit'
    end
    object VpermTrHelp: TBooleanField
      FieldName = 'TrHelp'
    end
    object VpermTrRep: TBooleanField
      FieldName = 'TrRep'
    end
    object VpermTrIncome: TBooleanField
      FieldName = 'TrIncome'
    end
    object VpermFreezing: TBooleanField
      FieldName = 'Freezing'
    end
    object VpermPers_Name: TWideStringField
      FieldName = 'Pers_Name'
      Size = 60
    end
    object VpermDelBill: TBooleanField
      FieldName = 'DelBill'
    end
    object Vpermmain_options: TBooleanField
      FieldName = 'main_options'
    end
    object Vpermsubordination: TSmallintField
      FieldName = 'subordination'
    end
  end
  object VShiftsForShip_NewData: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `shipshifts`'
      
        '  (`AutoUID`, `N_thecounter`, `N_bandsupervisor`, `Enter_Date`, ' +
        '`type`, `numberofshifts`, `containertype`, `M_AutoUID`, `isUpdat' +
        'ed`, `Container_ID`, `Start_Time`, `End_Time`, `N_crane`, `Nort`' +
        ', `type1`, `type2`)'
      'VALUES'
      
        '  (:`AutoUID`, :`N_thecounter`, :`N_bandsupervisor`, :`Enter_Dat' +
        'e`, :`type`, :`numberofshifts`, :`containertype`, :`M_AutoUID`, ' +
        ':`isUpdated`, :`Container_ID`, :`Start_Time`, :`End_Time`, :`N_c' +
        'rane`, :`Nort`, :`type1`, :`type2`)')
    SQLDelete.Strings = (
      'DELETE FROM `shipshifts`'
      'WHERE'
      '  `AutoUID` = :`Old_AutoUID`')
    SQLUpdate.Strings = (
      'UPDATE `shipshifts`'
      'SET'
      
        '  `AutoUID` = :`AutoUID`, `N_thecounter` = :`N_thecounter`, `N_b' +
        'andsupervisor` = :`N_bandsupervisor`, `Enter_Date` = :`Enter_Dat' +
        'e`, `type` = :`type`, `numberofshifts` = :`numberofshifts`, `con' +
        'tainertype` = :`containertype`, `M_AutoUID` = :`M_AutoUID`, `isU' +
        'pdated` = :`isUpdated`, `Container_ID` = :`Container_ID`, `Start' +
        '_Time` = :`Start_Time`, `End_Time` = :`End_Time`, `N_crane` = :`' +
        'N_crane`, `Nort` = :`Nort`, `type1` = :`type1`, `type2` = :`type' +
        '2`'
      'WHERE'
      '  `AutoUID` = :`Old_AutoUID`')
    SQLLock.Strings = (
      
        'SELECT `AutoUID`, `N_thecounter`, `N_bandsupervisor`, `Enter_Dat' +
        'e`, `type`, `numberofshifts`, `containertype`, `M_AutoUID`, `isU' +
        'pdated`, `Container_ID`, `Start_Time`, `End_Time`, `N_crane`, `N' +
        'ort`, `type1`, `type2` FROM `shipshifts`'
      'WHERE'
      '  `AutoUID` = :`Old_AutoUID`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `AutoUID`, `N_thecounter`, `N_bandsupervisor`, `Enter_Dat' +
        'e`, `type`, `numberofshifts`, `containertype`, `M_AutoUID`, `isU' +
        'pdated`, `Container_ID`, `Start_Time`, `End_Time`, `N_crane`, `N' +
        'ort`, `type1`, `type2` FROM `shipshifts`'
      'WHERE'
      '  `AutoUID` = :`AutoUID`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM shipshifts')
    Connection = DbServer
    SQL.Strings = (
      'CALL VShiftsForShip_NewData(:VNum)')
    Left = 996
    Top = 1152
    ParamData = <
      item
        DataType = ftWideString
        Name = 'VNum'
        ParamType = ptInput
        Size = 36
        Value = nil
      end>
    CommandStoredProcName = 'VShiftsForShip_NewData'
    object VShiftsForShip_NewDataAutoUID: TWideStringField
      FieldName = 'AutoUID'
      Required = True
      FixedChar = True
      Size = 36
    end
    object VShiftsForShip_NewDataN_thecounter: TIntegerField
      FieldName = 'N_thecounter'
    end
    object VShiftsForShip_NewDataN_bandsupervisor: TIntegerField
      FieldName = 'N_bandsupervisor'
    end
    object VShiftsForShip_NewDataEnter_Date: TDateTimeField
      FieldName = 'Enter_Date'
    end
    object VShiftsForShip_NewDatatype: TSmallintField
      FieldName = 'type'
    end
    object VShiftsForShip_NewDatanumberofshifts: TSmallintField
      FieldName = 'numberofshifts'
    end
    object VShiftsForShip_NewDatacontainertype: TWideStringField
      FieldName = 'containertype'
      Size = 50
    end
    object VShiftsForShip_NewDataM_AutoUID: TWideStringField
      FieldName = 'M_AutoUID'
      FixedChar = True
      Size = 36
    end
    object VShiftsForShip_NewDataisUpdated: TIntegerField
      FieldName = 'isUpdated'
    end
    object VShiftsForShip_NewDataContainer_ID: TWideStringField
      FieldName = 'Container_ID'
      Size = 200
    end
    object VShiftsForShip_NewDataStart_Time: TTimeField
      FieldName = 'Start_Time'
    end
    object VShiftsForShip_NewDataEnd_Time: TTimeField
      FieldName = 'End_Time'
    end
    object VShiftsForShip_NewDataN_crane: TIntegerField
      FieldName = 'N_crane'
    end
    object VShiftsForShip_NewDataNort: TWideStringField
      FieldName = 'Nort'
      Size = 250
    end
    object VShiftsForShip_NewDatatype1: TSmallintField
      FieldName = 'type1'
    end
    object VShiftsForShip_NewDatatype2: TSmallintField
      FieldName = 'type2'
    end
  end
  object VCoversForShip_NewData: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `shipcovers`'
      
        '  (`AutoUID`, `N_thecounter`, `N_bandsupervisor`, `Enter_Date`, ' +
        '`numberofcovers`, `M_AutoUID`, `isUpdated`, `Start_Time`, `End_T' +
        'ime`, `OperatoinType`, `N_crane`, `Nort`)'
      'VALUES'
      
        '  (:`AutoUID`, :`N_thecounter`, :`N_bandsupervisor`, :`Enter_Dat' +
        'e`, :`numberofcovers`, :`M_AutoUID`, :`isUpdated`, :`Start_Time`' +
        ', :`End_Time`, :`OperatoinType`, :`N_crane`, :`Nort`)')
    SQLDelete.Strings = (
      'DELETE FROM `shipcovers`'
      'WHERE'
      '  `AutoUID` = :`Old_AutoUID`')
    SQLUpdate.Strings = (
      'UPDATE `shipcovers`'
      'SET'
      
        '  `AutoUID` = :`AutoUID`, `N_thecounter` = :`N_thecounter`, `N_b' +
        'andsupervisor` = :`N_bandsupervisor`, `Enter_Date` = :`Enter_Dat' +
        'e`, `numberofcovers` = :`numberofcovers`, `M_AutoUID` = :`M_Auto' +
        'UID`, `isUpdated` = :`isUpdated`, `Start_Time` = :`Start_Time`, ' +
        '`End_Time` = :`End_Time`, `OperatoinType` = :`OperatoinType`, `N' +
        '_crane` = :`N_crane`, `Nort` = :`Nort`'
      'WHERE'
      '  `AutoUID` = :`Old_AutoUID`')
    SQLLock.Strings = (
      
        'SELECT `AutoUID`, `N_thecounter`, `N_bandsupervisor`, `Enter_Dat' +
        'e`, `numberofcovers`, `M_AutoUID`, `isUpdated`, `Start_Time`, `E' +
        'nd_Time`, `OperatoinType`, `N_crane`, `Nort` FROM `shipcovers`'
      'WHERE'
      '  `AutoUID` = :`Old_AutoUID`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `AutoUID`, `N_thecounter`, `N_bandsupervisor`, `Enter_Dat' +
        'e`, `numberofcovers`, `M_AutoUID`, `isUpdated`, `Start_Time`, `E' +
        'nd_Time`, `OperatoinType`, `N_crane`, `Nort` FROM `shipcovers`'
      'WHERE'
      '  `AutoUID` = :`AutoUID`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM shipcovers')
    Connection = DbServer
    SQL.Strings = (
      'CALL VCoversForShip_NewData(:VNum)')
    Left = 1290
    Top = 1146
    ParamData = <
      item
        DataType = ftWideString
        Name = 'VNum'
        ParamType = ptInput
        Size = 36
        Value = nil
      end>
    CommandStoredProcName = 'VCoversForShip_NewData'
    object VCoversForShip_NewDataAutoUID: TWideStringField
      FieldName = 'AutoUID'
      Required = True
      FixedChar = True
      Size = 36
    end
    object VCoversForShip_NewDataN_thecounter: TIntegerField
      FieldName = 'N_thecounter'
    end
    object VCoversForShip_NewDataN_bandsupervisor: TIntegerField
      FieldName = 'N_bandsupervisor'
    end
    object VCoversForShip_NewDataEnter_Date: TDateTimeField
      FieldName = 'Enter_Date'
    end
    object VCoversForShip_NewDatanumberofcovers: TSmallintField
      FieldName = 'numberofcovers'
    end
    object VCoversForShip_NewDataM_AutoUID: TWideStringField
      FieldName = 'M_AutoUID'
      FixedChar = True
      Size = 36
    end
    object VCoversForShip_NewDataisUpdated: TIntegerField
      FieldName = 'isUpdated'
    end
    object VCoversForShip_NewDataStart_Time: TTimeField
      FieldName = 'Start_Time'
    end
    object VCoversForShip_NewDataEnd_Time: TTimeField
      FieldName = 'End_Time'
    end
    object VCoversForShip_NewDataOperatoinType: TIntegerField
      FieldName = 'OperatoinType'
    end
    object VCoversForShip_NewDataN_crane: TIntegerField
      FieldName = 'N_crane'
    end
    object VCoversForShip_NewDataNort: TWideStringField
      FieldName = 'Nort'
      Size = 250
    end
  end
  object DVNotesForShip_NewData: TDataSource
    DataSet = VNotesForShip_NewData
    Left = 624
    Top = 120
  end
  object Vstarts_And_Stops: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `ship_starts_and_ends`'
      
        '  (`numAuto`, `AutoUID`, `Start_Date`, `End__Date`, `Start_Time`' +
        ', `End_Time`, `Enter_User`, `Enter_Date`, `Shipment_Type`)'
      'VALUES'
      
        '  (:`numAuto`, :`AutoUID`, :`Start_Date`, :`End__Date`, :`Start_' +
        'Time`, :`End_Time`, :`Enter_User`, :`Enter_Date`, :`Shipment_Typ' +
        'e`)')
    SQLDelete.Strings = (
      'DELETE FROM `ship_starts_and_ends`'
      'WHERE'
      '  `numAuto` = :`Old_numAuto`')
    SQLUpdate.Strings = (
      'UPDATE `ship_starts_and_ends`'
      'SET'
      
        '  `numAuto` = :`numAuto`, `AutoUID` = :`AutoUID`, `Start_Date` =' +
        ' :`Start_Date`, `End__Date` = :`End__Date`, `Start_Time` = :`Sta' +
        'rt_Time`, `End_Time` = :`End_Time`, `Enter_User` = :`Enter_User`' +
        ', `Enter_Date` = :`Enter_Date`, `Shipment_Type` = :`Shipment_Typ' +
        'e`'
      'WHERE'
      '  `numAuto` = :`Old_numAuto`')
    SQLLock.Strings = (
      
        'SELECT `numAuto`, `AutoUID`, `Start_Date`, `End__Date`, `Start_T' +
        'ime`, `End_Time`, `Enter_User`, `Enter_Date`, `Shipment_Type` FR' +
        'OM `ship_starts_and_ends`'
      'WHERE'
      '  `numAuto` = :`Old_numAuto`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      
        'SELECT `numAuto`, `AutoUID`, `Start_Date`, `End__Date`, `Start_T' +
        'ime`, `End_Time`, `Enter_User`, `Enter_Date`, `Shipment_Type` FR' +
        'OM `ship_starts_and_ends`'
      'WHERE'
      '  `numAuto` = :`numAuto`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM ship_starts_and_ends')
    Connection = DbServer
    SQL.Strings = (
      'CALL VVVStartsAndEnds(:VNum)')
    Left = 492
    Top = 696
    ParamData = <
      item
        DataType = ftString
        Name = 'VNum'
        ParamType = ptInput
        Size = 36
        Value = nil
      end>
    CommandStoredProcName = 'VVVStartsAndEnds'
    object Vstarts_And_StopsnumAuto: TIntegerField
      FieldName = 'numAuto'
    end
    object Vstarts_And_StopsAutoUID: TWideStringField
      FieldName = 'AutoUID'
      Required = True
      FixedChar = True
      Size = 36
    end
    object Vstarts_And_StopsStart_Date: TDateField
      FieldName = 'Start_Date'
      Required = True
    end
    object Vstarts_And_StopsEnd__Date: TDateField
      FieldName = 'End__Date'
      Required = True
    end
    object Vstarts_And_StopsStart_Time: TTimeField
      FieldName = 'Start_Time'
      Required = True
    end
    object Vstarts_And_StopsEnd_Time: TTimeField
      FieldName = 'End_Time'
      Required = True
    end
    object Vstarts_And_StopsEnter_User: TWideStringField
      FieldName = 'Enter_User'
      Required = True
      Size = 150
    end
    object Vstarts_And_StopsEnter_Date: TDateField
      FieldName = 'Enter_Date'
      Required = True
    end
    object Vstarts_And_StopsShipment_Type: TWideStringField
      FieldName = 'Shipment_Type'
      Size = 100
    end
  end
  object Vstarts_And_Stops_DS: TUniDataSource
    DataSet = Vstarts_And_Stops
    Left = 612
    Top = 744
  end
  object RemainShahen: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `submenucounter`'
      '  (`TagNumber`, `ContainerType`)'
      'VALUES'
      '  (:`TagNumber`, :`ContainerType`)')
    SQLDelete.Strings = (
      'DELETE FROM `submenucounter`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`')
    SQLUpdate.Strings = (
      'UPDATE `submenucounter`'
      'SET'
      '  `TagNumber` = :`TagNumber`, `ContainerType` = :`ContainerType`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`')
    SQLLock.Strings = (
      'SELECT `TagNumber`, `ContainerType` FROM `submenucounter`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      'SELECT `TagNumber`, `ContainerType` FROM `submenucounter`'
      'WHERE'
      '  `NumAuto` = :`NumAuto`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM submenucounter')
    Connection = DbServer
    SQL.Strings = (
      
        'SELECT ContainerType , TagNumber FROM submenucounter WHERE NumMa' +
        'inList=:VNUM AND  (`Handling_type` =2 OR  `Handling_type` =4 ) A' +
        'ND `condition` =2 ;')
    Left = 768
    Top = 1352
    ParamData = <
      item
        DataType = ftInteger
        Name = 'VNUM'
        Value = nil
      end>
    object RemainShahenTagNumber: TWideStringField
      DisplayLabel = #1578#1575#1602' '#1575#1604#1581#1575#1608#1610#1577
      FieldName = 'TagNumber'
      Size = 75
    end
    object RemainShahenContainerType: TWideStringField
      DisplayLabel = #1606#1608#1593' '#1575#1604#1581#1575#1608#1610#1577
      FieldName = 'ContainerType'
      Size = 25
    end
  end
  object RemainTfreeq: TUniQuery
    SQLInsert.Strings = (
      'INSERT INTO `submenucounter`'
      '  (`TagNumber`, `ContainerType`)'
      'VALUES'
      '  (:`TagNumber`, :`ContainerType`)')
    SQLDelete.Strings = (
      'DELETE FROM `submenucounter`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`')
    SQLUpdate.Strings = (
      'UPDATE `submenucounter`'
      'SET'
      '  `TagNumber` = :`TagNumber`, `ContainerType` = :`ContainerType`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`')
    SQLLock.Strings = (
      'SELECT `TagNumber`, `ContainerType` FROM `submenucounter`'
      'WHERE'
      '  `NumAuto` = :`Old_NumAuto`'
      'FOR UPDATE')
    SQLRefresh.Strings = (
      'SELECT `TagNumber`, `ContainerType` FROM `submenucounter`'
      'WHERE'
      '  `NumAuto` = :`NumAuto`')
    SQLRecCount.Strings = (
      'SELECT COUNT(*) FROM submenucounter')
    Connection = DbServer
    SQL.Strings = (
      
        'SELECT ContainerType , TagNumber FROM submenucounter WHERE NumMa' +
        'inList=:VNUM AND  (`Handling_type` =1 OR  `Handling_type` =3 OR ' +
        '`Handling_type` =6) AND `condition` =2 ;')
    Left = 656
    Top = 1344
    ParamData = <
      item
        DataType = ftInteger
        Name = 'VNUM'
        Value = nil
      end>
    object RemainTfreeqTagNumber: TWideStringField
      DisplayLabel = #1578#1575#1602' '#1575#1604#1581#1575#1608#1610#1577
      FieldName = 'TagNumber'
      Size = 75
    end
    object RemainTfreeqContainerType: TWideStringField
      DisplayLabel = #1606#1608#1593' '#1575#1604#1581#1575#1608#1610#1577
      FieldName = 'ContainerType'
      Size = 25
    end
  end
  object RemainTfreeqDS: TUniDataSource
    DataSet = RemainTfreeq
    Left = 936
    Top = 1328
  end
  object RemainShahenDS: TUniDataSource
    DataSet = RemainShahen
    Left = 1104
    Top = 1360
  end
end
