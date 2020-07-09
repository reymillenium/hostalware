unit UDataModuleAdminCapacidades;

interface

uses
  Forms,

  SysUtils, Classes, DB, ADODB, DBClient, UDataModuleConexionGeneral;

type
  TDataModuleAdminCapacidades = class(TDataModule)
    ADOStoredProcSelecHabitaciones: TADOStoredProc;
    DataSourceSelecHabitaciones: TDataSource;
    ADOStoredProcInsertarHabitacion: TADOStoredProc;
    ADOStoredProcEliminarHabitacion: TADOStoredProc;
    ADOStoredProcModificarHabitacion: TADOStoredProc;
    ADOStoredProcSelecHabitacionPorID_Habitacion: TADOStoredProc;
    DataSourceSelecHabitacionPorID: TDataSource;
    ADOStoredProcExisteHabitacionConID: TADOStoredProc;
    DataSourceExisteHabitacionConID: TDataSource;
    ADOStoredProcSelecHabitacionPorNumero: TADOStoredProc;
    DataSourceSelecHabitacionPorNumero: TDataSource;
    ADOStoredProcInsertarCama: TADOStoredProc;
    ADOStoredProcSelecHabitacionesPorPiso: TADOStoredProc;
    DataSourceSelecHabitacionesPorPiso: TDataSource;
    ADOStoredProcEliminarCamasLibresPorID_Habitacion: TADOStoredProc;
    ADOStoredProcCopiarCamasPorID_Habitacion: TADOStoredProc;
    ADOStoredProcEliminarCamasTemporalesPorID_Habitacion: TADOStoredProc;
    ADOStoredProcEliminarCamaTemporalPorID_Cama: TADOStoredProc;
    ADOStoredProcSelecCamasPorID_Habitacion: TADOStoredProc;
    ADOStoredProcSelecCamasTemporalesPorID_Habitacion: TADOStoredProc;
    DataSourceSelecCamasPorID_Habitacion: TDataSource;
    DataSourceSelecCamasTemporalesPorID_Habitacion: TDataSource;
    ADOStoredProcInsertarCamaTemporal: TADOStoredProc;
    ADOStoredProcSelecCamaTemporalPorNumeroSerie: TADOStoredProc;
    DataSourceSelecCamaTemporalPorNumeroSerie: TDataSource;
    ADOStoredProcRellenarCamasLibresDesdeTemporales: TADOStoredProc;
    ADOStoredProcEliminarTodasLasCamasTemporales: TADOStoredProc;
    ADOStoredProcSelecHabitacionesConVacantes: TADOStoredProc;
    ADOStoredProcSelecHabitacionesSinVacantes: TADOStoredProc;
    ADOStoredProcSelecHabitacionesPorPisoYConVacantes: TADOStoredProc;
    ADOStoredProcSelecHabitacionesPorPisoYSinVacantes: TADOStoredProc;
    DataSourceSelecHabitacionesConVacantes: TDataSource;
    DataSourceSelecHabitacionesSinVacantes: TDataSource;
    DataSourceSelecHabitacionesPorPisoYConVacantes: TDataSource;
    DataSourceSelecHabitacionesPorPisoYSinVacantes: TDataSource;
    spSelecHabitacionConOcupantesPorID_Habitacion: TADOStoredProc;
    dsSelecHabitacionConOcupantesPorID_Habitacion: TDataSource;
    spSelecLechoOcupadoPorID_Cama: TADOStoredProc;
    dsSelecLechoOcupadoPorID_Cama: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleAdminCapacidades: TDataModuleAdminCapacidades;

implementation

{$R *.dfm}

end.
