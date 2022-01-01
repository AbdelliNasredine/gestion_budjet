unit uDataModule;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  Tdm = class(TDataModule)
    ADOConnection1: TADOConnection;
    tblBranche: TADOTable;
    dsBranche: TDataSource;
    qryBranche: TADOQuery;
    qryEntreprise: TADOQuery;
    qryTypeEngagement: TADOQuery;
    dsTypeEngagement: TDataSource;
    qryTypeEmployee: TADOQuery;
    dsTypeEmployee: TDataSource;
    qryBanque: TADOQuery;
    dsBanque: TDataSource;
    Query: TADOQuery;
    dsEngagament: TDataSource;
    qryEngagement: TADOQuery;
    dsTransfert: TDataSource;
    qryTransfert: TADOQuery;
    qryMondat: TADOQuery;
    dsMondat: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{$R *.dfm}

end.
