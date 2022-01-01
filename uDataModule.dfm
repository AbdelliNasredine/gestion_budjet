object dm: Tdm
  OldCreateOrder = False
  Left = 179
  Top = 50
  Height = 526
  Width = 918
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
    Left = 264
    Top = 40
  end
  object dsBranche: TDataSource
    DataSet = tblBranche
    Left = 56
    Top = 120
  end
  object qryBranche: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 160
    Top = 66
  end
  object qryEntreprise: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 160
    Top = 117
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
    Left = 160
    Top = 166
  end
  object dsTypeEngagement: TDataSource
    AutoEdit = False
    DataSet = qryTypeEngagement
    Left = 56
    Top = 168
  end
  object qryTypeEmployee: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '    code_temp as '#39#1575#1604#1585#1602#1605#39','
      '    designation_temp_ar as '#39#1589#1606#1601' '#1575#1604#1605#1587#1578#1582#1583#1605#39','
      '    designation_temp_fr as '#39#1589#1606#1601' '#1575#1604#1605#1587#1578#1582#1583#1605' ('#1575#1604#1601#1585#1606#1587#1610#1577')'#39
      'FROM typemploye;')
    Left = 160
    Top = 216
  end
  object dsTypeEmployee: TDataSource
    AutoEdit = False
    DataSet = qryTypeEmployee
    Left = 56
    Top = 216
  end
  object qryBanque: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT '
      ' code_bq as '#39#1585#1602#1605#39','
      ' designation_bq_ar as '#39#1578#1587#1605#1610#1577' '#1575#1604#1576#1606#1603#39','
      ' designation_bq_fr as '#39#1578#1587#1605#1610#1577' '#1575#1604#1576#1606#1603' ('#1575#1604#1601#1585#1606#1587#1610#1577')'#39
      'FROM banques')
    Left = 160
    Top = 264
  end
  object dsBanque: TDataSource
    AutoEdit = False
    DataSet = qryBanque
    Left = 56
    Top = 264
  end
  object Query: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 496
    Top = 64
  end
  object dsEngagament: TDataSource
    DataSet = qryEngagement
    Left = 52
    Top = 328
  end
  object qryEngagement: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=Adm1n1strateur;Persist Security Inf' +
      'o=True;User ID=sa;Initial Catalog=gestion_budget;Data Source=ser' +
      'ver2'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select *,a.montant_a-(select sum(montant_e1+montant_e2+montant_e' +
        '3+montant_e4) from fiche_engagement where code_a=e.code_a)+(mont' +
        'ant_e1+montant_e2+montant_e3+montant_e4) as compte_anc, dbo.nomb' +
        're_en_chiffre_ar(floor(montant_e1+montant_e2+montant_e3+montant_' +
        'e4)) as nombre_en_chiffre, round((montant_e1+montant_e2+montant_' +
        'e3+montant_e4)-floor(montant_e1+montant_e2+montant_e3+montant_e4' +
        '),2,1)*100 as dec, (select designation_temp_ar from typemploye w' +
        'here e.code_temp=code_temp) as temp, (montant_e1+montant_e2+mont' +
        'ant_e3+montant_e4) as total, designation_te+'#39' '#39'+e1 as e10, (sele' +
        'ct designation_msg_ar from msgs where code_msg=e.sit) as sit_e f' +
        'rom fiche_engagement e, banques b, articles a, chapitres ch, typ' +
        'e_engagement teng'
      'where e.code_bq=b.code_bq'
      'and e.code_a=a.code_a'
      'and ch.code_ch=substring(a.code_a,1,8)'
      'and teng.code_te=e.code_te')
    Left = 160
    Top = 328
  end
  object dsTransfert: TDataSource
    DataSet = qryTransfert
    Left = 52
    Top = 400
  end
  object qryTransfert: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=Adm1n1strateur;Persist Security Inf' +
      'o=True;User ID=sa;Initial Catalog=gestion_budget;Data Source=ser' +
      'ver2'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      
        #9', (SELECT designation_a_ar FROM articles a WHERE a.code_a = t.t' +
        'rans_in) as des_in'
      
        #9', (SELECT designation_a_ar FROM articles a WHERE a.code_a = t.t' +
        'rans_out) as des_out '
      'FROM transferts t;')
    Left = 160
    Top = 400
  end
  object qryMondat: TADOQuery
    Active = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=Adm1n1strateur;Persist Security Inf' +
      'o=True;User ID=sa;Initial Catalog=gestion_budget;Data Source=ser' +
      'ver2'
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM mandat_paiement;')
    Left = 392
    Top = 288
  end
  object dsMondat: TDataSource
    DataSet = qryMondat
    Left = 340
    Top = 288
  end
end
