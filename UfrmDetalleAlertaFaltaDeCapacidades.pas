unit UfrmDetalleAlertaFaltaDeCapacidades;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, XiButton, Grids, BaseGrid,
  AdvGrid, DBAdvGrid, StdCtrls, AdvGroupBox, ExtCtrls, DBAdvGlowNavigator,

  //Clases de Control
  UGestionCursistasHospedados,

  //Clases Entidad

  //Clases Interfaz

  //DataModules
  UDataModuleAlertasDelSistema;

type
  TfrmDetalleAlertaFaltaDeCapacidades = class(TForm)
    btnAceptar: TXiButton;
    AdvGroupBoxHabitacionesExistentes: TAdvGroupBox;
    lblCantidadLibre: TLabel;
    lblCantidadOcupado: TLabel;
    lblCantidadTotal: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    lblPorCientoOcupado: TLabel;
    lblPorCientoLibre: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnAceptarClick(Sender: TObject);

    procedure CentrarForma(var m: TWMWINDOWPOSCHANGED); message
    WM_WINDOWPOSCHANGING;    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDetalleAlertaFaltaDeCapacidades: TfrmDetalleAlertaFaltaDeCapacidades;

implementation

uses StrUtils;
var
    HostalWare: TGestionCursistasHospedados;
    
{$R *.dfm}

procedure TfrmDetalleAlertaFaltaDeCapacidades.FormShow(Sender: TObject);
var
  hMenuHandle : HMENU;
begin
  //Aquí deshabilito el botón de Cerrar de la forma
  hMenuHandle := GetSystemMenu(frmDetalleAlertaFaltaDeCapacidades.Handle, FALSE);

  if (hMenuHandle <> 0)
    then
      begin
        DeleteMenu(hMenuHandle, SC_CLOSE, MF_BYCOMMAND);
      end;
end;



procedure TfrmDetalleAlertaFaltaDeCapacidades.btnAceptarClick(Sender: TObject);
begin
  //Cierro la forma
  frmDetalleAlertaFaltaDeCapacidades.Close;
end;



procedure TfrmDetalleAlertaFaltaDeCapacidades.CentrarForma(var m: TWMWINDOWPOSCHANGED);
begin
  m.windowpos.x := (Screen.Width - Width) div 2;   {Left/Posicion X}
  m.windowpos.y := (Screen.Height - Height) div 2; {Left/Posicion X}
end;



end.
