object dm: Tdm
  OldCreateOrder = False
  Left = 726
  Top = 148
  Height = 220
  Width = 431
  object ADOConnection1: TADOConnection
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=Adm1n1strateur;Persist Security Inf' +
      'o=True;User ID=sa;Initial Catalog=gestion_budget;Data Source=ser' +
      'ver2'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 256
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
end
