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
