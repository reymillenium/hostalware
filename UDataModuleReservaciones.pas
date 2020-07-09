unit UDataModuleReservaciones;

interface

uses
  Forms,

  SysUtils, Classes, DB, ADODB, DBClient, UDataModuleConexionGeneral;

type
  TDataModuleReservaciones = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleReservaciones: TDataModuleReservaciones;

implementation

{$R *.dfm}

end.
