unit UHuesped;

interface

uses
  Classes;
  
type
  THuesped = Class(TObject)
  private
    FID_Huesped: Integer;
    FNombre: AnsiString;
    FCarneIdentidad: AnsiString;
    FApellidos: AnsiString;
    FTelefonoParticular: AnsiString;
    FPais: AnsiString;
    FEmailHuesped: AnsiString;
    FProvinciaHuesped: AnsiString;
    FMunicipioHuesped: AnsiString;
    FDireccionParticular: AnsiString;
    FNombreCentroLaboral: AnsiString;
    FEmailCentroLaboral: AnsiString;
    FTelefonoCentroLaboral: AnsiString;
    FProvinciaCentroLaboral: AnsiString;
    FMunicipioCentroLaboral: AnsiString;
    FDireccionCentroLaboral: AnsiString;
    FMotivoHospedaje: AnsiString;
    FModalidad: AnsiString;
    FFechaInicioActividad: AnsiString;
    FFechaFinalActividad: AnsiString;
    FTituloActividad: AnsiString;
    FNombreInstitucionActividad: AnsiString;
    FEmailActividad: AnsiString;
    FTelefonoActividad: AnsiString;
    FNombreCoordinadorActividad: AnsiString;
    FDireccionActividad: AnsiString;
    FID_Cama: Integer;
    FFechaInicioHospedaje: TDateTime;
    FFechaFinalHospedaje: TDateTime;
    //FHoraInicioHospedaje: AnsiString;
    //FHoraFinalHospedaje: AnsiString;
    FDerechoADesayuno: AnsiString;
    FDerechoAAlmuerzo: AnsiString;
    FDerechoAcomida: AnsiString;
    FLugarConsumo: AnsiString;
    FNombreCompletoDeRegistrador: AnsiString;
    FIncidencias: AnsiString;

  public
    Constructor Create;
    Destructor Destroy;

    //propertys de acceso a los campos del Huesped (32 campos)

    property ID_Huesped: Integer read FID_Huesped write FID_Huesped;
    property Nombre: AnsiString read FNombre write FNombre;
    property CarneIdentidad: AnsiString read FCarneIdentidad write FCarneIdentidad;
    property Apellidos: AnsiString read FApellidos write FApellidos;
    property TelefonoParticular: AnsiString read FTelefonoParticular write FTelefonoParticular;
    property Pais: AnsiString read FPais write FPais;
    property EmailHuesped: AnsiString read FEmailHuesped write FEmailHuesped;
    property ProvinciaHuesped: AnsiString read FProvinciaHuesped write FProvinciaHuesped;
    property MunicipioHuesped: AnsiString read FMunicipioHuesped write FMunicipioHuesped;
    property DireccionParticular: AnsiString read FDireccionParticular write FDireccionParticular;
    property NombreCentroLaboral: AnsiString read FNombreCentroLaboral write FNombreCentroLaboral;
    property EmailCentroLaboral: AnsiString read FEmailCentroLaboral write FEmailCentroLaboral;
    property TelefonoCentroLaboral: AnsiString read FTelefonoCentroLaboral write FTelefonoCentroLaboral;
    property ProvinciaCentroLaboral: AnsiString read FProvinciaCentroLaboral write FProvinciaCentroLaboral;
    property MunicipioCentroLaboral: AnsiString read FMunicipioCentroLaboral write FMunicipioCentroLaboral;
    property DireccionCentroLaboral: AnsiString read FDireccionCentroLaboral write FDireccionCentroLaboral;
    property MotivoHospedaje: AnsiString read FMotivoHospedaje write FMotivoHospedaje;
    property Modalidad: AnsiString read FModalidad write FModalidad;
    property FechaInicioActividad: AnsiString read FFechaInicioActividad write FFechaInicioActividad;
    property FechaFinalActividad: AnsiString read FFechaFinalActividad write FFechaFinalActividad;
    property TituloActividad: AnsiString read FTituloActividad write FTituloActividad;
    property NombreInstitucionActividad: AnsiString read FNombreInstitucionActividad write FNombreInstitucionActividad;
    property EmailActividad: AnsiString read FEmailActividad write FEmailActividad;
    property TelefonoActividad: AnsiString read FTelefonoActividad write FTelefonoActividad;
    property NombreCoordinadorActividad: AnsiString read FNombreCoordinadorActividad write FNombreCoordinadorActividad;
    property DireccionActividad: AnsiString read FDireccionActividad write FDireccionActividad;
    property ID_Cama: Integer read FID_Cama write FID_Cama;
    property FechaInicioHospedaje: TDateTime read FFechaInicioHospedaje write FFechaInicioHospedaje;
    property FechaFinalHospedaje: TDateTime read FFechaFinalHospedaje write FFechaFinalHospedaje;
    //property HoraInicioHospedaje: AnsiString read FHoraInicioHospedaje write FHoraInicioHospedaje;
    //property HoraFinalHospedaje: AnsiString read FHoraFinalHospedaje write FHoraFinalHospedaje;
    property DerechoADesayuno: AnsiString read FDerechoADesayuno write FDerechoADesayuno;
    property DerechoAAlmuerzo: AnsiString read FDerechoAAlmuerzo write FDerechoAAlmuerzo;
    property DerechoAcomida: AnsiString read FDerechoAcomida write FDerechoAcomida;
    property LugarConsumo: AnsiString read FLugarConsumo write FLugarConsumo;
    property NombreCompletoDeRegistrador: AnsiString read FNombreCompletoDeRegistrador write FNombreCompletoDeRegistrador;
    property Incidencias: AnsiString read FIncidencias write FIncidencias;

end;

implementation

{ THuesped }



Constructor THuesped.Create;
begin
  inherited Create;
end;



Destructor THuesped.Destroy;
begin
   inherited Destroy;
end;



end.
