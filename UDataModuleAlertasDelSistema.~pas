unit UDataModuleAlertasDelSistema;

interface

uses
  Forms,

  SysUtils, Classes, DB, ADODB, DBClient, UDataModuleConexionGeneral;

type
  TDataModuleAlertasDelSistema = class(TDataModule)
    spSelecHabitacionesVacias: TADOStoredProc;
    dsSelecHabitacionesVacias: TDataSource;
    spEliminarTodasLasAlertasDelSistema: TADOStoredProc;
    spInsertarAlertaDelSistema: TADOStoredProc;
    spSelecTodasLasAlertasDelSistema: TADOStoredProc;
    dsSelecTodasLasAlertasDelSistema: TDataSource;
    spSelecHuespedesPasadosDeTiempoPorFechaActual: TADOStoredProc;
    dsSelecHuespedesPasadosDeTiempoPorFechaActual: TDataSource;
    spSelecLechosTotales: TADOStoredProc;
    dsSelecLechosTotales: TDataSource;
    spSelecLechosLibresTotales: TADOStoredProc;
    spSelecLechosOcupadosTotales: TADOStoredProc;
    dsSelecLechosLibresTotales: TDataSource;
    dsSelecLechosOcupadosTotales: TDataSource;
    spSelecHuespedesConIncidenciasSoloRecientes: TADOStoredProc;
    spSelecHuespedesConIncidenciasSoloHistoricas: TADOStoredProc;
    spSelecHuespedesConIncidenciasHistoricasYRecientes: TADOStoredProc;
    dsSelecHuespedesConIncidenciasSoloRecientes: TDataSource;
    dsSelecHuespedesConIncidenciasSoloHistoricas: TDataSource;
    dsSelecHuespedesConIncidenciasHistoricasYRecientes: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleAlertasDelSistema: TDataModuleAlertasDelSistema;

implementation

{$R *.dfm}

end.
