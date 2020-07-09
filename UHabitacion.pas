unit UHabitacion;

interface

uses
  Classes;
  
type
  THabitacion = Class(TObject)
  private
    //Posicionamiento
    FID_Habitacion: Integer;

    //Ubicacion
    FNumeroHabitacion: Integer;
    FPiso: AnsiString;

    //Equipos
    FTelevisores: Integer;
    FRefrigeradores: Integer;
    FVentiladores: Integer;
    FCalentadoresAgua: Integer;
    FSecadorPelo: AnsiString;
    FSillasYSillones: Integer;

    //Moviliario
    FMesasGrandes: Integer;
    FMesitasNoche: Integer;
    FMesasPC: Integer;
    FArmario: AnsiString;
    FCloset: AnsiString;
    FEspejo: AnsiString;

    //Servicios
    FAireAcondicionado: AnsiString;
    FAguaCaliente: AnsiString;
    FTomasElectricas: Integer;
    FTelefonoInterno: AnsiString;
    FTelefonoDirecto: AnsiString;
    FInternet: AnsiString;
    FTVSatelite: AnsiString;

  public
    Constructor Create;
    Destructor Destroy;

    //*** propertys de acceso a los campos de la Habitacion (15 campos) ***
    //Posicionamiento
    property ID_Habitacion: Integer read FID_Habitacion write FID_Habitacion;

    //Ubicacion
    property NumeroHabitacion: Integer read FNumeroHabitacion write FNumeroHabitacion;
    property Piso: AnsiString read FPiso write FPiso;

    //Equipos
    property Televisores: Integer read FTelevisores write FTelevisores;
    property Refrigeradores: Integer read FRefrigeradores write FRefrigeradores;
    property Ventiladores: Integer read FVentiladores write FVentiladores;
    property CalentadoresAgua: Integer read FCalentadoresAgua write FCalentadoresAgua;
    property SecadorPelo: AnsiString read FSecadorPelo write FSecadorPelo;
    property SillasYSillones: Integer read FSillasYSillones write FSillasYSillones;

    //Moviliario
    property MesasGrandes: Integer read FMesasGrandes write FMesasGrandes;
    property MesitasNoche: Integer read FMesitasNoche write FMesitasNoche;
    property MesasPC: Integer read FMesasPC write FMesasPC;
    property Armario: AnsiString read FArmario write FArmario;
    property Closet: AnsiString read FCloset write FCloset;
    property Espejo: AnsiString read FEspejo write FEspejo;

    //Servicios
    property AireAcondicionado: AnsiString read FAireAcondicionado write FAireAcondicionado;
    property AguaCaliente: AnsiString read FAguaCaliente write FAguaCaliente;
    property TomasElectricas: Integer read FTomasElectricas write FTomasElectricas;
    property TelefonoInterno: AnsiString read FTelefonoInterno write FTelefonoInterno;
    property TelefonoDirecto: AnsiString read FTelefonoDirecto write FTelefonoDirecto;
    property Internet: AnsiString read FInternet write FInternet;
    property TVSatelite: AnsiString read FTVSatelite write FTVSatelite;


end;

implementation

{ THabitacion }



Constructor THabitacion.Create;
begin
  inherited Create;
end;



Destructor THabitacion.Destroy;
begin
   inherited Destroy;
end;



end.
