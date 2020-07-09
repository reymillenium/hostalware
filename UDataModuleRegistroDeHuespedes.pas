unit UDataModuleRegistroDeHuespedes;

interface

uses
  Forms,

  SysUtils, Classes, DB, ADODB, DBClient, UDataModuleConexionGeneral;

type
  TDataModuleRegistroDeHuespedes = class(TDataModule)
  
    ADOStoredProcMostrarProvinciasCubanas: TADOStoredProc;
    DataSourceMostrarProvinciasCubanas: TDataSource;
    ADOStoredProcMostrarMunicipiosPorID_Provincia: TADOStoredProc;
    DataSourceMostrarMunicipiosPorID_Provincia: TDataSource;
    ADOStoredProcInsertarHuesped: TADOStoredProc;
    ADOStoredProcOcuparCamaPorID_Cama: TADOStoredProc;
    ADOStoredProcLiberarCamaPorID_Cama: TADOStoredProc;
    ADOStoredProcEliminarHuespedPorID_Huesped: TADOStoredProc;
    ADOStoredProcMostrarHuespedesTotales: TADOStoredProc;
    DataSourceMostrarHuespedesTotales: TDataSource;
    ADOStoredProcSelecHabitacionesConVacantesTotalesParaRegistro: TADOStoredProc;
    DataSourceSelecHabitacionesConVacantesTotalesParaRegistro: TDataSource;
    dsSelecLechosLibresPorID_HabitacionParaRegistro: TDataSource;
    spSelecLechosLibresPorID_HabitacionParaRegistro: TADOStoredProc;
    spSelecHuespedesPorMotivo: TADOStoredProc;
    dsSelecHuespedesPorMotivo: TDataSource;
    spSelecHuespedesPorPiso: TADOStoredProc;
    dsSelecHuespedesPorPiso: TDataSource;
    spSelecHuespedesPorMotivoYPorPiso: TADOStoredProc;
    dsSelecHuespedesPorMotivoYPorPiso: TDataSource;
    spMostrarProvinciasCubanasParaDatosLaborales: TADOStoredProc;
    dsMostrarProvinciasCubanasParaDatosLaborales: TDataSource;
    dsMostrarMunicipiosParaDatosLaboralesPorID_Provincia: TDataSource;
    spMostrarMunicipiosParaDatosLaboralesPorID_Provincia: TADOStoredProc;
    spSelecHabConVacantesTotalesYConCamasParaRegistro: TADOStoredProc;
    spSelecHabConVacantesTotalesYConLiterasParaRegistro: TADOStoredProc;
    spSelecHabConVacantesTotalesYConLiterasAbajoParaRegistro: TADOStoredProc;
    spSelecHabConVacantesTotalesYConLiterasArribaParaRegistro: TADOStoredProc;
    spSelecHabConVacantesPorPisoParaRegistro: TADOStoredProc;
    spSelecHabConVacantesPorPisoYConCamasParaRegistro: TADOStoredProc;
    spSelecHabConVacantesPorPisoYConLiterasParaRegistro: TADOStoredProc;
    spSelecHabConVacantesPorPisoYConLiterasAbajoParaRegistro: TADOStoredProc;
    dsSelecHabConVacantesTotalesYConCamasParaRegistro: TDataSource;
    dsSelecHabConVacantesTotalesYConLiterasParaRegistro: TDataSource;
    dsSelecHabConVacantesTotalesYConLiterasAbajoParaRegistro: TDataSource;
    dsSelecHabConVacantesTotalesYConLiterasArribaParaRegistro: TDataSource;
    dsSelecHabConVacantesPorPisoParaRegistro: TDataSource;
    dsSelecHabConVacantesPorPisoYConCamasParaRegistro: TDataSource;
    dsSelecHabConVacantesPorPisoYConLiterasParaRegistro: TDataSource;
    dsSelecHabConVacantesPorPisoYConLiterasAbajoParaRegistro: TDataSource;
    spSelecHabConVacantesPorPisoYConLiterasArribaParaRegistro: TADOStoredProc;
    dsSelecHabConVacantesPorPisoYConLiterasArribaParaRegistro: TDataSource;
    spSelecCamasLibresPorID_HabitacionParaRegistro: TADOStoredProc;
    spSelecLiterasLibresPorID_HabitacionParaRegistro: TADOStoredProc;
    spSelecLiterasArribaLibresPorID_HabitacionParaRegistro: TADOStoredProc;
    spSelecLiterasAbajoLibresPorID_HabitacionParaRegistro: TADOStoredProc;
    dsSelecCamasLibresPorID_HabitacionParaRegistro: TDataSource;
    dsSelecLiterasLibresPorID_HabitacionParaRegistro: TDataSource;
    dsSelecLiterasArribaLibresPorID_HabitacionParaRegistro: TDataSource;
    dsSelecLiterasAbajoLibresPorID_HabitacionParaRegistro: TDataSource;
    spSelecHuespedPorID_Huesped: TADOStoredProc;
    dsSelecHuespedPorID_Huesped: TDataSource;
    spModificarHuespedPorID_Huesped: TADOStoredProc;
    spSelecID_ProvinciaCubanaHuespedPorNombreProvincia: TADOStoredProc;
    spSelecID_MunicipioCubanoHuespedPorNombreMunicipio: TADOStoredProc;
    dsSelecID_ProvinciaCubanaHuespedPorNombreProvincia: TDataSource;
    dsSelecID_MunicipioCubanoHuespedPorNombreMunicipio: TDataSource;
    spSelecID_ProvinciaCubanaCentroLaboralPorNombreProvincia: TADOStoredProc;
    spSelecID_MunicipioCubanoCentroLaboralPorNombreMunicipio: TADOStoredProc;
    dsSelecID_ProvinciaCubanaCentroLaboralPorNombreProvincia: TDataSource;
    dsSelecID_MunicipioCubanoCentroLaboralPorNombreMunicipio: TDataSource;
    spTrasladarHuespedDeCamaPorID_Huesped: TADOStoredProc;
    spSelecCamaPorID_Cama: TADOStoredProc;
    dsSelecCamaPorID_Cama: TDataSource;
    spSelecDatosTotalesDeHuespedPorID_Huesped: TADOStoredProc;
    dsSelecDatosTotalesDeHuespedPorID_Huesped: TDataSource;
    spSelecOtrosHuespedesTotalesPorID_Huesped: TADOStoredProc;
    spSelecOtrosHuespedesPorMotivoYPorID_Huesped: TADOStoredProc;
    spSelecOtrosHuespedesPorPisoYPorID_Huesped: TADOStoredProc;
    spSelecOtrosHuespedesPorMotivoYPorPisoYPorID_Huesped: TADOStoredProc;
    dsSelecOtrosHuespedesTotalesPorID_Huesped: TDataSource;
    dsSelecOtrosHuespedesPorMotivoYPorID_Huesped: TDataSource;
    dsSelecOtrosHuespedesPorPisoYPorID_Huesped: TDataSource;
    dsSelecOtrosHuespedesPorMotivoYPorPisoYPorID_Huesped: TDataSource;
    spSelecHuespedPorCarneIdentidad: TADOStoredProc;
    dsSelecHuespedPorCarneIdentidad: TDataSource;
    spArchivarHuespedPorID_Huesped: TADOStoredProc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleRegistroDeHuespedes: TDataModuleRegistroDeHuespedes;

implementation

{$R *.dfm}

end.
