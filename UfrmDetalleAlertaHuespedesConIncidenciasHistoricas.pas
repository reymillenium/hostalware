unit UfrmDetalleAlertaHuespedesConIncidenciasHistoricas;

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
  TfrmDetalleAlertaHuespedesConIncidenciasHistoricas = class(TForm)
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
  frmDetalleAlertaHuespedesConIncidenciasHistoricas: TfrmDetalleAlertaHuespedesConIncidenciasHistoricas;

implementation

uses StrUtils;
var
    HostalWare: TGestionCursistasHospedados;
    
{$R *.dfm}

procedure TfrmDetalleAlertaHuespedesConIncidenciasHistoricas.FormShow(Sender: TObject);
var
  hMenuHandle : HMENU;
begin
  //Aqu� deshabilito el bot�n de Cerrar de la forma
  hMenuHandle := GetSystemMenu(frmDetalleAlertaHuespedesConIncidenciasHistoricas.Handle, FALSE);

  if (hMenuHandle <> 0)
    then
      begin
        DeleteMenu(hMenuHandle, SC_CLOSE, MF_BYCOMMAND);
      end;

  //Primero verifico que exista aun conexion a la base de datos
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Busco los hu�spedes con antecedentes de incidencias en la BD
        HostalWare.MostrarHuespedesConIncidenciasSoloHistoricas;

        //Muestro la cantidad de hu�spedes con antecedentes de incidencias, en dependencia de la cantidad de ellas
        if (HostalWare.CantidadHuespedesConIncidenciasSoloHistoricas = 1)
          then
            begin
              lblCantidadHuespedesConIncidencias.Caption:= 'TOTAL = 1 hu�sped con antecedentes de incidencias';
            end
              else
                begin
                  lblCantidadHuespedesConIncidencias.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadHuespedesConIncidenciasSoloHistoricas) + ' hu�spedes con antecedentes de incidencias';
                end;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexi�n con la base de datos.' + #13 + 'Int�ntelo en otra ocasi�n', mtError, [mbOk], 0);

            //Cierro la forma
            frmDetalleAlertaHuespedesConIncidenciasHistoricas.Close;
          end;
end;



procedure TfrmDetalleAlertaHuespedesConIncidenciasHistoricas.btnAceptarClick(Sender: TObject);
begin
  //Cierro la forma
  frmDetalleAlertaHuespedesConIncidenciasHistoricas.Close;
end;



procedure TfrmDetalleAlertaHuespedesConIncidenciasHistoricas.CentrarForma(var m: TWMWINDOWPOSCHANGED);
begin
  m.windowpos.x := (Screen.Width - Width) div 2;   {Left/Posicion X}
  m.windowpos.y := (Screen.Height - Height) div 2; {Left/Posicion X}
end;



end.
