unit UPlazaReservada;

interface

uses
  Classes;
  
type
  TPlazaReservada = Class(TObject)
  private
    FID_PlazaReservada: Integer;
    FID_Reservacion: Integer;
    FID_Cama: Integer;

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

  public
    Constructor Create;
    Destructor Destroy;

    //propertys de acceso a los campos de la Plaza Reservada ( campos)
    property ID_PlazaReservada: Integer read FID_PlazaReservada write FID_PlazaReservada;
	  property ID_Reservacion: Integer read FID_Reservacion write FID_Reservacion;
    property ID_Cama: Integer read FID_Cama write FID_Cama;

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


end;

implementation

{ THuesped }



Constructor TPlazaReservada.Create;
begin
  inherited Create;
end;



Destructor TPlazaReservada.Destroy;
begin
   inherited Destroy;
end;



end.
