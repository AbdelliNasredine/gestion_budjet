object dm: Tdm
  OldCreateOrder = False
  Left = 224
  Top = 158
  Height = 389
  Width = 575
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=Adm1n1strateur;Persist Security Inf' +
      'o=True;User ID=sa;Initial Catalog=gestion_budget;Data Source=ser' +
      'ver2'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 496
    Top = 8
  end
  object tblBranche: TADOTable
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Branche'
    Left = 24
    Top = 8
  end
  object dsBranche: TDataSource
    DataSet = tblBranche
    Left = 24
    Top = 80
  end
  object qryBranche: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 96
    Top = 10
  end
  object qryEntreprise: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 104
    Top = 82
  end
  object qryTypeEngagement: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT '
      '   code_te as '#39#1585#1602#1605#39','
      '   designation_te as '#39#1606#1608#1593' '#1575#1604#1575#1578#1586#1575#1605#39
      'FROM type_engagement;')
    Left = 136
    Top = 176
  end
  object dsTypeEngagement: TDataSource
    AutoEdit = False
    DataSet = qryTypeEngagement
    Left = 32
    Top = 176
  end
end
