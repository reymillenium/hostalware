unit UDataModuleArchivoDeRegistros;

interface

uses
  Forms,

  SysUtils, Classes, DB, ADODB, DBClient, UDataModuleConexionGeneral;

type
  TDataModuleArchivoDeRegistros = class(TDataModule)
    spSelecRegistrosDeArchivoPorCarneIdentidadPorNombreYPorApellido: TADOStoredProc;
    spSelecRegistrosDeArchivoPorCarneIdentidadYPorNombre: TADOStoredProc;
    spSelecRegistrosDeArchivoPorCarneIdentidadYPorApellidos: TADOStoredProc;
    spSelecRegistrosDeArchivoPorNombreYPorApellidos: TADOStoredProc;
    spSelecRegistrosDeArchivoPorCarneIdentidad: TADOStoredProc;
    spSelecRegistrosDeArchivoPorNombre: TADOStoredProc;
    spSelecRegistrosDeArchivoPorApellidos: TADOStoredProc;
    dsSelecRegistrosDeArchivoPorCarneIdentidadPorNombreYPorApellido: TDataSource;
    dsSelecRegistrosDeArchivoPorCarneIdentidadYPorNombre: TDataSource;
    dsSelecRegistrosDeArchivoPorCarneIdentidadYPorApellidos: TDataSource;
    dsSelecRegistrosDeArchivoPorNombreYPorApellidos: TDataSource;
    dsSelecRegistrosDeArchivoPorCarneIdentidad: TDataSource;
    dsSelecRegistrosDeArchivoPorNombre: TDataSource;
    dsSelecRegistrosDeArchivoPorApellidos: TDataSource;
    spSelecRegistrosArchivadosPorIntervalosDeFechasFinalHospedaje: TADOStoredProc;
    spSelecRegistrosArchivadosPorIntervalosDeFechasInicioHospedaje: TADOStoredProc;
    dsSelecRegistrosArchivadosPorIntervalosDeFechasFinalHospedaje: TDataSource;
    dsSelecRegistrosArchivadosPorIntervalosDeFechasInicioHospedaje: TDataSource;
    spSelecRegistrosArchivadosEnIntervalosDeFechas: TADOStoredProc;
    dsSelecRegistrosArchivadosEnIntervalosDeFechas: TDataSource;
    spSelecRegistroArchivadoPorID_HuespedHistorico: TADOStoredProc;
    dsSelecRegistroArchivadoPorID_HuespedHistorico: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModuleArchivoDeRegistros: TDataModuleArchivoDeRegistros;

implementation

{$R *.dfm}

end.
