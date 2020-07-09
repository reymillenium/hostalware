unit UfrmDetalleDeRegistroEnArchivo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,

  //Clases de Control
  UGestionCursistasHospedados,

  //Clases Interfaz

  //DataModules
  UDataModuleArchivoDeRegistros,
  
  //Otros
  LbButton,

  //Dialogs especiales, esquemas, etc (Message Master)
  MessDlgs, AdvEdit, AdvCombo, Mask, AdvSpin, AdvGroupBox, AdvOfficePager,
  AdvOfficePagerStylers, Grids, DBGrids, ColListb, BaseGrid, AdvGrid,
  AdvSmoothListBox, AdvSmoothPanel, AdvSmoothMenu, DBCtrls, AppEvnts,
  ImgList, AdvMemo, AdvmBS, AdvOfficeButtons, LayeredForm,
  AdvSmartMessageBox, ComCtrls, AdvDateTimePicker, AdvPanel, DBAdvGrid,
  DBAdvGlowNavigator, AdvOfficeComboBox, AdvSmoothEdit,
  AdvSmoothEditButton, AdvSmoothDatePicker, AdvSmoothCalendar, DBAdvMemo,
  XiButton;

  
type
  TfrmDetalleDeRegistroEnArchivo = class(TForm)
    AdvOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    OfficePagerModificarRegistro: TAdvOfficePager;
    PageDatos: TAdvOfficePage;
    lblbtnCerrar1: TLbButton;
    grbxPersonales: TAdvGroupBox;
    lblProvinciaHuesped: TLabel;
    lblPais: TLabel;
    lblCarneIdentidad: TLabel;
    lblApellidos: TLabel;
    lblNombre: TLabel;
    PageDetalles: TAdvOfficePage;
    lblMunicipioHuesped: TLabel;
    lblDireccionParticular: TLabel;
    lblTelefonoParticular: TLabel;
    grbxDetalles: TAdvGroupBox;
    lblMotivoHospedaje: TLabel;
    lblModalidad: TLabel;
    lblTituloActividad: TLabel;
    lblNombreInstitucionActividad: TLabel;
    lblFechaFinalCurso: TLabel;
    lblFechaInicioCurso: TLabel;
    lblDireccionActividad: TLabel;
    lblEmailActividad: TLabel;
    lblTelefonoActividad: TLabel;
    lblNombreCoordinadorActividad: TLabel;
    lblEmailHuesped: TLabel;
    lblFechaFinalHospedaje: TLabel;
    grbxConDerechoA: TAdvGroupBox;
    chkbxDesayuno: TAdvOfficeCheckBox;
    chkbxAlmuerzo: TAdvOfficeCheckBox;
    chkbxComida: TAdvOfficeCheckBox;
    grbxLaborales: TAdvGroupBox;
    lblProvinciaCentroLaboral: TLabel;
    lblEmailCentroLaboral: TLabel;
    lblNombreCentroLaboral: TLabel;
    lblMunicipioCentroLaboral: TLabel;
    lblTelefonoCentroLaboral: TLabel;
    lblDireccionCentroLaboral: TLabel;
    lblLugarConsumo: TLabel;
    Panel5: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    DBedtNombre: TDBEdit;
    DBedtApellidos: TDBEdit;
    DBedtTelefonoParticular: TDBEdit;
    DBedtCarneIdentidad: TDBEdit;
    DBedtEmailHuesped: TDBEdit;
    DBedtNombreCentroLaboral: TDBEdit;
    DBedtTelefonoCentroLaboral: TDBEdit;
    DBedtEmailCentroLaboral: TDBEdit;
    DBedtProvinciaHuesped: TDBEdit;
    DBedtMunicipioHuesped: TDBEdit;
    DBedtMunicipioCentroLaboral: TDBEdit;
    DBedtProvinciaCentroLaboral: TDBEdit;
    DBedtNombreCoordinadorActividad: TDBEdit;
    DBedtTituloActividad: TDBEdit;
    DBedtTelefonoActividad: TDBEdit;
    DBedtEmailActividad: TDBEdit;
    DBedtNombreInstitucionActividad: TDBEdit;
    DBtxtDerechoADesayuno: TDBText;
    DBtxtDerechoAAlmuerzo: TDBText;
    DBtxtDerechoAComida: TDBText;
    DBtxtFechaFinalHospedaje: TDBText;
    DBMemoDireccionParticular: TDBMemo;
    DBMemoDireccionCentroLaboral: TDBMemo;
    DBMemoDireccionActividad: TDBMemo;
    Label1: TLabel;
    DBtxtNombreUsuarioQueRegistra: TDBText;
    Label2: TLabel;
    DBtxtFechaInicioHospedaje: TDBText;
    lblIncidenciasNegativas: TLabel;
    DBMemoIncidencias: TDBMemo;
    lblbtnCerrar2: TLbButton;
    DBedtPais: TDBEdit;
    DBedtMotivoHospedaje: TDBEdit;
    DBedtModalidad: TDBEdit;
    DBedtLugarConsumo: TDBEdit;
    DBedtFechaInicioActividad: TDBEdit;
    DBedtFechaFinalActividad: TDBEdit;

    procedure FormShow(Sender: TObject);
    procedure CentrarForma(var m: TWMWINDOWPOSCHANGED); message
    WM_WINDOWPOSCHANGING;
    procedure lblbtnCerrarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    FID_HuespedHistorico: Integer;
    
    procedure ReposicionarComponentes;
  end;

var
  frmDetalleDeRegistroEnArchivo: TfrmDetalleDeRegistroEnArchivo;

implementation

uses StrUtils;
var
    HostalWare: TGestionCursistasHospedados;
{$R *.dfm}



procedure TfrmDetalleDeRegistroEnArchivo.FormShow(Sender: TObject);
var
  ID_Huesped: Integer;
  hMenuHandle : HMENU;
begin
  //Aquí deshabilito el botón de Cerrar de la forma
  hMenuHandle := GetSystemMenu(frmDetalleDeRegistroEnArchivo.Handle, FALSE);

  if (hMenuHandle <> 0)
    then
      begin
        DeleteMenu(hMenuHandle, SC_CLOSE, MF_BYCOMMAND);
      end;

  //Activo la primera pestaña
  OfficePagerModificarRegistro.ActivePageIndex:= 0;

  ID_Huesped:= FID_HuespedHistorico;
  
  //Muestro el registro en el archivo que deseo detallar
  HostalWare.MostrarRegistroArchivadoPorID_HuespedHistorico(ID_Huesped);

  //Reposiciono los checkbox
  ReposicionarComponentes;
end;



procedure TfrmDetalleDeRegistroEnArchivo.CentrarForma(var m : TWMWINDOWPOSCHANGED);
begin
  m.windowpos.x := (Screen.Width - Width) div 2;   {Left/Posicion X}
  m.windowpos.y := (Screen.Height - Height) div 2; {Left/Posicion X}
end;



procedure TfrmDetalleDeRegistroEnArchivo.ReposicionarComponentes;
begin
  //Derechos de consumo
  if (DBtxtDerechoADesayuno.Field.Text = 'Sí')
    then
      begin
        chkbxDesayuno.Checked:= True;
      end
        else
          begin
            chkbxDesayuno.Checked:= False;
          end;
          
  if (DBtxtDerechoAAlmuerzo.Field.Text = 'Sí')
    then
      begin
        chkbxAlmuerzo.Checked:= True;
      end
        else
          begin
            chkbxAlmuerzo.Checked:= False;
          end;

  if (DBtxtDerechoAComida.Field.Text = 'Sí')
    then
      begin
        chkbxComida.Checked:= True;
      end
        else
          begin
            chkbxComida.Checked:= False;
          end;
end;



procedure TfrmDetalleDeRegistroEnArchivo.lblbtnCerrarClick(
  Sender: TObject);
begin
  //Cierro la forma
  frmDetalleDeRegistroEnArchivo.Close;
end;



end.
