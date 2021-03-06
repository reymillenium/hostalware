unit UCama;

interface

uses
  Classes;
  
type
  TCama = Class(TObject)
  private
    //Posicionamiento
    FID_Cama: Integer;
    FID_Habitacion: Integer;

    //Datos de la cama
    FTipoCama: AnsiString;
    FNumeroSerie: AnsiString;
    FEstadoOcupacional: AnsiString;

  public
    Constructor Create;
    Destructor Destroy;

    //*** propertys de acceso a los campos de la Cama (6 campos) ***
    //Posicionamiento
    property ID_Cama: Integer read FID_Cama write FID_Cama;
    property ID_Habitacion: Integer read FID_Habitacion write FID_Habitacion;

    //Datos de la cama
    property TipoCama: AnsiString read FTipoCama write FTipoCama;
    property NumeroSerie: AnsiString read FNumeroSerie write FNumeroSerie;
    property EstadoOcupacional: AnsiString read FEstadoOcupacional write FEstadoOcupacional;

end;

implementation

{ TCama }



Constructor TCama.Create;
begin
  inherited Create;
end;



Destructor TCama.Destroy;
begin
   inherited Destroy;
end;



end.
