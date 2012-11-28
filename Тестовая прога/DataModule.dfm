object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 150
  Width = 215
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=216564;Persist Security Info=True;U' +
      'ser ID=sa;Initial Catalog=test;Data Source=192.168.21.12'
    Provider = 'SQLOLEDB.1'
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT '
      'hdr_MaterialPicking.TargetLocationName AS '#1050#1083#1072#1076#1086#1074#1097#1080#1082', '
      'COUNT(*) AS '#1055#1080#1082#1080#1085#1075#1080', '
      
        'CAST(SUM(case when hdr_MaterialPicking.AlternateMaterialUnitName' +
        ' = '#39#1064#1090#1091#1082#1072#39' then hdr_MaterialPicking.BaseQuantity end) AS INT) AS' +
        ' '#1064#1090#1091#1082#1080', '
      
        'CAST(SUM(case when hdr_MaterialPicking.AlternateMaterialUnitName' +
        ' = '#39#1050#1086#1088#1086#1073#1082#1072#39' then hdr_MaterialPicking.BaseQuantity/MaterialUnits' +
        '.UnitKoeff end) AS INT) AS '#1050#1086#1088#1086#1073#1082#1080' '
      'FROM hdr_MaterialPicking, MaterialUnits'
      
        'WHERE hdr_MaterialPicking.AlternateMaterialUnit_id = MaterialUni' +
        'ts.tid '
      
        'AND (hdr_MaterialPicking.TaskDate BETWEEN '#39'11.01.2012 10:00'#39' AND' +
        ' '#39'11.30.2012 8:00'#39')-- AND hdr_MaterialPicking.TargetLocationName' +
        ' LIKE '#39'%'#1091#1083#1072#1096#1082#1080#1085#1072'_'#1058'%'#39
      'GROUP BY hdr_MaterialPicking.TargetLocationName')
    Left = 32
  end
end
