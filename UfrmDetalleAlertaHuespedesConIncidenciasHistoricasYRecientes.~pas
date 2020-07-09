unit UfrmDetalleAlertaHuespedesConIncidenciasHistoricasYRecientes;

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
  UDataModuleAlertasDelSistema, DBCtrls;

type
  TfrmDetalleAlertaHuespedesConIncidenciasHistoricasYRecientes = class(TForm)
    btnAceptar: TXiButton;
    DBAdvGlowNavigatorHuespedesConIncidenciasRecientes: TDBAdvGlowNavigator;
    lblCantidadHuespedesConIncidencias: TLabel;
    AdvGroupBoxHuespedesRegistrados: TAdvGroupBox;
    DBGridHuespedesConIncidenciasRecientes: TDBAdvGrid;
    lblIncidenciasNegativas: TLabel;
    DBMemoIncidencias: TDBMemo;
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
  frmDetalleAlertaHuespedesConIncidenciasHistoricasYRecientes: TfrmDetalleAlertaHuespedesConIncidenciasHistoricasYRecientes;

implementation

uses StrUtils;
var
    HostalWare: TGestionCursistasHospedados;
    
{$R *.dfm}

procedure TfrmDetalleAlertaHuespedesConIncidenciasHistoricasYRecientes.FormShow(Sender: TObject);
var
  hMenuHandle : HMENU;
begin
  //Aquí deshabilito el botón de Cerrar de la forma
  hMenuHandle := GetSystemMenu(frmDetalleAlertaHuespedesConIncidenciasHistoricasYRecientes.Handle, FALSE);

  if (hMenuHandle <> 0)
    then
      begin
        DeleteMenu(hMenuHandle, SC_CLOSE, MF_BYCOMMAND);
      end;

  //Primero verifico que exista aun conexion a la base de datos
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Busco los huéspedes con antecedentes e incidencias recientes en la BD
        HostalWare.MostrarHuespedesConIncidenciasHistoricasYRecientes;

        //Muestro la cantidad de huéspedes con antecedentes e incidencias recientes, en dependencia de la cantidad de ellas
        if (HostalWare.CantidadHuespedesConIncidenciasHistoricasYRecientes = 1)
          then
            begin
              lblCantidadHuespedesConIncidencias.Caption:= 'TOTAL = 1 huésped con antecedentes e incidencias recientes';
            end
              else
                begin
                  lblCantidadHuespedesConIncidencias.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadHuespedesConIncidenciasHistoricasYRecientes) + ' huéspedes con antecedentes e incidencias recientes';
                end;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);

            //Cierro la forma
            frmDetalleAlertaHuespedesConIncidenciasHistoricasYRecientes.Close;
          end;
end;



procedure TfrmDetalleAlertaHuespedesConIncidenciasHistoricasYRecientes.btnAceptarClick(Sender: TObject);
begin
  //Cierro la forma
  frmDetalleAlertaHuespedesConIncidenciasHistoricasYRecientes.Close;
end;



procedure TfrmDetalleAlertaHuespedesConIncidenciasHistoricasYRecientes.CentrarForma(var m: TWMWINDOWPOSCHANGED);
begin
  m.windowpos.x := (Screen.Width - Width) div 2;   {Left/Posicion X}
  m.windowpos.y := (Screen.Height - Height) div 2; {Left/Posicion X}
end;



end.
