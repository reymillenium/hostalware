unit UfrmDetalleAlertaHuespedesPasadosDeTiempo;

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
  TfrmDetalleAlertaHuespedesPasadosDeTiempo = class(TForm)
    btnAceptar: TXiButton;
    DBAdvGlowNavigatorHuespedesPasadosDeTiempo: TDBAdvGlowNavigator;
    lblCantidadHabitacionesVacias: TLabel;
    AdvGroupBoxHuespedesRegistrados: TAdvGroupBox;
    DBGridHuespedesRegistrados: TDBAdvGrid;
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
  frmDetalleAlertaHuespedesPasadosDeTiempo: TfrmDetalleAlertaHuespedesPasadosDeTiempo;

implementation

uses StrUtils;
var
    HostalWare: TGestionCursistasHospedados;
    
{$R *.dfm}

procedure TfrmDetalleAlertaHuespedesPasadosDeTiempo.FormShow(Sender: TObject);
var
  hMenuHandle : HMENU;
begin
  //Aquí deshabilito el botón de Cerrar de la forma
  hMenuHandle := GetSystemMenu(frmDetalleAlertaHuespedesPasadosDeTiempo.Handle, FALSE);

  if (hMenuHandle <> 0)
    then
      begin
        DeleteMenu(hMenuHandle, SC_CLOSE, MF_BYCOMMAND);
      end;

  //Primero verifico que exista aun conexion a la base de datos
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Busco las habitaciones vacias en la BD
        HostalWare.MostrarHuespedesPasadosDeTiempoPorFechaActualParaAlertas(StrToDateTime(HostalWare.ObtenerFechaDelSistema + ' ' + HostalWare.ObtenerHoraDelSistema)  );

        //Muestro la cantidad de habitaciones vacias, en dependencia de la cantidad de ellas
        if (HostalWare.CantidadHuespedesPasadosDeTiempoPorFechaActualParaAlerta = 1)
          then
            begin
              lblCantidadHabitacionesVacias.Caption:= 'TOTAL = 1 huésped pasado de tiempo';
            end
              else
                begin
                  lblCantidadHabitacionesVacias.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadHuespedesPasadosDeTiempoPorFechaActualParaAlerta) + ' huéspedes pasados de tiempo';
                end;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);

            //Cierro la forma
            frmDetalleAlertaHuespedesPasadosDeTiempo.Close;
          end;
end;



procedure TfrmDetalleAlertaHuespedesPasadosDeTiempo.btnAceptarClick(Sender: TObject);
begin
  //Cierro la forma
  frmDetalleAlertaHuespedesPasadosDeTiempo.Close;
end;



procedure TfrmDetalleAlertaHuespedesPasadosDeTiempo.CentrarForma(var m: TWMWINDOWPOSCHANGED);
begin
  m.windowpos.x := (Screen.Width - Width) div 2;   {Left/Posicion X}
  m.windowpos.y := (Screen.Height - Height) div 2; {Left/Posicion X}
end;



end.
