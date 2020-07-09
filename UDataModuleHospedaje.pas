unit UDataModuleHospedaje;

interface

uses
  Forms,

  SysUtils, Classes, DB, ADODB, DBClient, UDataModuleConexionGeneral;

type
  TDataModuleControlHospedaje = class(TDataModule)
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
    ADOStoredProcEliminarCamasPorID_Habitacion: TADOStoredProc;
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
    ADOStoredProcRellenarCamasDesdeTemporales: TADOStoredProc;
    ADOStoredProcEliminarTodasLasCamasTemporales: TADOStoredProc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleControlHospedaje: TDataModuleControlHospedaje;

implementation

{$R *.dfm}

end.
