unit UfrmModificarRegistro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,

  //Clases de Control
  UGestionCursistasHospedados,

  //Clases Entidad
  UHuesped,

  //Clases Interfaz

  //DataModules
  UDataModuleRegistroDeHuespedes,
  
  //Otros
  LbButton,

  //Dialogs especiales, esquemas, etc (Message Master)
  MessDlgs, AdvEdit, AdvCombo, Mask, AdvSpin, AdvGroupBox, AdvOfficePager,
  AdvOfficePagerStylers, Grids, DBGrids, ColListb, BaseGrid, AdvGrid,
  AdvSmoothListBox, AdvSmoothPanel, AdvSmoothMenu, DBCtrls, AppEvnts,
  ImgList, AdvMemo, AdvmBS, AdvOfficeButtons, LayeredForm,
  AdvSmartMessageBox, ComCtrls, AdvDateTimePicker, AdvPanel, DBAdvGrid,
  DBAdvGlowNavigator, AdvOfficeComboBox, AdvSmoothEdit,
  AdvSmoothEditButton, AdvSmoothDatePicker, AdvSmoothCalendar, DBAdvMemo;

  
type
  TfrmModificarRegistro = class(TForm)
    AdvOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    OfficePagerModificarRegistro: TAdvOfficePager;
    PageDatos: TAdvOfficePage;
    lblbtnLimpiar1: TLbButton;
    lblbtnAceptar1: TLbButton;
    lblbtnCancelar1: TLbButton;
    ImageListPaises: TImageList;
    grbxPersonales: TAdvGroupBox;
    lblProvinciaHuesped: TLabel;
    lblPais: TLabel;
    lblCarneIdentidad: TLabel;
    lblApellidos: TLabel;
    lblNombre: TLabel;
    PageDetalles: TAdvOfficePage;
    lblMunicipioHuesped: TLabel;
    lblDireccionParticular: TLabel;
    DBtxtID_Provincia: TDBText;
    DBlucmbxProvinciaHuesped: TDBLookupComboBox;
    DBlucmbxMunicipioHuesped: TDBLookupComboBox;
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
    lblbtnLimpiar3: TLbButton;
    lblbtnAceptar3: TLbButton;
    lblbtnCancelar3: TLbButton;
    lblFechaFinalHospedaje: TLabel;
    dtpFechaFinalHospedaje: TAdvDateTimePicker;
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
    DBlucmbxProvinciaCentroLaboral: TDBLookupComboBox;
    DBlucmbxMunicipioCentroLaboral: TDBLookupComboBox;
    lblLugarConsumo: TLabel;
    Panel5: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    DBtxtID_ProvinciaCentroLaboral: TDBText;
    dtpFechaInicioActividad: TAdvSmoothDatePicker;
    dtpFechaFinalActividad: TAdvSmoothDatePicker;
    DBedtNombre: TDBEdit;
    DBedtApellidos: TDBEdit;
    DBedtTelefonoParticular: TDBEdit;
    DBedtCarneIdentidad: TDBEdit;
    DBedtEmailHuesped: TDBEdit;
    DBedtNombreCentroLaboral: TDBEdit;
    DBedtTelefonoCentroLaboral: TDBEdit;
    DBedtEmailCentroLaboral: TDBEdit;
    DBcmbxPais: TDBComboBox;
    DBedtProvinciaHuesped: TDBEdit;
    DBedtMunicipioHuesped: TDBEdit;
    DBedtMunicipioCentroLaboral: TDBEdit;
    DBedtProvinciaCentroLaboral: TDBEdit;
    DBedtNombreCoordinadorActividad: TDBEdit;
    DBedtTituloActividad: TDBEdit;
    DBedtTelefonoActividad: TDBEdit;
    DBedtEmailActividad: TDBEdit;
    DBedtNombreInstitucionActividad: TDBEdit;
    DBtxtProvinciaHuesped: TDBText;
    DBtxtMunicipioHuesped: TDBText;
    DBtxtProvinciaCentroLaboral: TDBText;
    DBtxtMunicipioCentroLaboral: TDBText;
    DBcmbxMotivoHospedaje: TDBComboBox;
    DBcmbxModalidad: TDBComboBox;
    DBcmbxLugarConsumo: TDBComboBox;
    DBtxtDerechoADesayuno: TDBText;
    DBtxtDerechoAAlmuerzo: TDBText;
    DBtxtDerechoAComida: TDBText;
    DBtxtFechaInicioActividad: TDBText;
    DBtxtFechaFinalActividad: TDBText;
    DBtxtFechaFinalHospedaje: TDBText;
    DBtxtID_ProvinciaBuscada_Huesped: TDBText;
    DBtxtID_MunicipioBuscado_Huesped: TDBText;
    DBtxtID_ProvinciaBuscada_CentroLaboral: TDBText;
    DBtxtID_MunicipioBuscado_CentroLaboral: TDBText;
    DBMemoDireccionParticular: TDBMemo;
    DBMemoDireccionCentroLaboral: TDBMemo;
    DBMemoDireccionActividad: TDBMemo;
    Label1: TLabel;
    DBtxtNombreUsuarioQueRegistra: TDBText;
    Label2: TLabel;
    DBtxtFechaInicioHospedaje: TDBText;
    lblIncidenciasNegativas: TLabel;
    DBMemoIncidencias: TDBMemo;

    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);


    procedure cmbxPaisDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure CentrarForma(var m: TWMWINDOWPOSCHANGED); message
    WM_WINDOWPOSCHANGING;


    procedure lblbtnCancelarClick(Sender: TObject);
    procedure lblbtnAceptarClick(Sender: TObject);


    procedure lblbtnLimpiar1Click(Sender: TObject);
    procedure cmbxPaisChange(Sender: TObject);
    procedure DBlucmbxProvinciaHuespedClick(Sender: TObject);
    procedure PageDatosShow(Sender: TObject);
    procedure PageLaboralesShow(Sender: TObject);
    procedure PageDetallesShow(Sender: TObject);
    procedure DBlucmbxProvinciaCentroLaboralClick(Sender: TObject);
    procedure cmbxMotivoHospedajeChange(Sender: TObject);

    //Validaciones de pulsado de teclas
    procedure SoloNumerosSinEspaciosKeyPress(Sender: TObject; var Key: Char);  //Cantidades numericas enteras
    procedure SoloNumerosTelefonicosYExtensionKeyPress(Sender: TObject; var Key: Char); //Numeros telefonicos con su extension (ejemplo: 643-8782, Ext. 122)
    procedure Solo3NumerosKeyPress(Sender: TObject; var Key: Char);  //Cantidad numerica entera limitada (a 3 dígitos en este caso)

    procedure SoloLetrasYNumerosSinPuntuacionNiEspaciosKeyPress(Sender: TObject; var Key: Char); //IDs cubanos (números) y extranjeros (letras y números)
    procedure SoloLetrasYNumerosConPuntuacionYEspaciosKeyPress(Sender: TObject; var Key: Char); //Nombre de Instituciones, que pueden incluir números
    procedure SoloCorreosElectronicosKeyPress(Sender: TObject; var Key: Char); //IDs cubanos (números) y extranjeros (letras y números)

    procedure SoloLetrasConEspaciosYPuntuacionKeyPress(Sender: TObject; var Key: Char); //Para nombres, apellidos, etc.
    procedure SoloLetrasSinEspaciosNiTildesKeyPress(Sender: TObject; var Key: Char); //Para usuarios
       
  private
    { Private declarations }
  public
    { Public declarations }
    FID_Huesped: Integer;
    procedure ReposicionarComponentes;
    procedure RellenarHuespedTemporal(aHuesped: THuesped);
    procedure ResetearComponentes;
    procedure ResetearProvinciasCubanas;
    procedure ResetearMunicipiosCubanos;

    function CorreoEsValido(aEmail: AnsiString): Boolean;
    function CarneIdentidadCubanoEsValido(aCICubano: AnsiString): Boolean;
    function SeTeclearonLosValoresNecesarios: Boolean;
  end;

var
  frmModificarRegistro: TfrmModificarRegistro;

implementation

uses StrUtils;
var
    HostalWare: TGestionCursistasHospedados;
    TempViejoHuesped: THuesped;
    TempNuevoHuesped: THuesped;
{$R *.dfm}



procedure TfrmModificarRegistro.btnCancelarClick(Sender: TObject);
begin
  //Cierro la forma
  frmModificarRegistro.Close;
end;



procedure TfrmModificarRegistro.FormShow(Sender: TObject);
var
  ID_Huesped: Integer;
  hMenuHandle : HMENU;
  ID_ProvinciaHuesped, ID_ProvinciaCentroLaboral, ID_Habitacion: Integer;
begin
  //Aquí deshabilito el botón de Cerrar de la forma
  hMenuHandle := GetSystemMenu(frmModificarRegistro.Handle, FALSE);

  if (hMenuHandle <> 0)
    then
      begin
        DeleteMenu(hMenuHandle, SC_CLOSE, MF_BYCOMMAND);
      end;

  //Activo la primera pestaña
  OfficePagerModificarRegistro.ActivePageIndex:= 0;

  //Inicializo los componentes
  //cmbxPais.ItemIndex:= 54;

  ID_Huesped:= FID_Huesped;
  
  //Muestro los valores que deseo modificar
  HostalWare.MostrarHuespedPorID_Huesped(ID_Huesped);

  //Mando a reposicionar componentes faltantes
  ReposicionarComponentes;

  //Creo un Huesped Temporal Viejo
  TempViejoHuesped:= THuesped.Create;
  
  //Relleno un Registro Temporal Viejo
  RellenarHuespedTemporal(TempViejoHuesped);

{
  //Habilito los componentes de datos necesarios
  lblTituloActividad.Enabled:= True;
  DBedtTituloActividad.Enabled:= True;

  lblNombreCoordinadorActividad.Enabled:= True;
  DBedtNombreCoordinadorActividad.Enabled:= True;

  lblTelefonoActividad.Enabled:= True;
  DBedtTelefonoActividad.Enabled:= True;

  lblModalidad.Enabled:= True;
  DBcmbxModalidad.Enabled:= True;

  lblEmailActividad.Enabled:= True;
  DBedtEmailActividad.Enabled:= True;

  lblNombreInstitucionActividad.Enabled:= True;
  DBedtNombreInstitucionActividad.Enabled:= True;

  lblFechaInicioCurso.Enabled:= True;
  dtpFechaInicioActividad.Enabled:= True;

  lblFechaFinalCurso.Enabled:= True;
  dtpFechaFinalActividad.Enabled:= True;

  lblDireccionActividad.Enabled:= True;
  DBMemoDireccionActividad.Enabled:= True;

  //Habilito el DBLookUpComboBox de provincia (Centro Laboral)
  DBlucmbxProvinciaCentroLaboral.Enabled:= True;

  //Habilito el DBLookUpComboBox de municipio (Centro Laboral)
  if (DBlucmbxProvinciaCentroLaboral.Text <> '')
    then
      begin
        DBlucmbxMunicipioCentroLaboral.Enabled:= True;
      end;

  //Habilito el nombre y direccion del centro laboral
  DBedtNombreCentroLaboral.Enabled:= True;
  DBMemoDireccionCentroLaboral.Enabled:= True;
}
end;



procedure TfrmModificarRegistro.SoloLetrasConEspaciosYPuntuacionKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then lblbtnAceptar1.Click;

  //Valido para solo nombres
  if not (Key in['a'..'z', 'A'..'Z', 'ñ', 'Ñ', 'á', 'é', 'í', 'ó', 'ú', 'Á', 'É', 'Í', 'Ó', 'Ú', ' ', #8, #13]) then Abort;
end;



procedure TfrmModificarRegistro.SoloLetrasSinEspaciosNiTildesKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then lblbtnAceptar1.Click;

  //Valido para solo letras (sin espacios ni tildes)
  if not (Key in['a'..'z', 'A'..'Z', 'ñ', 'Ñ', #8, #13]) then Abort;
end;



procedure TfrmModificarRegistro.cmbxPaisDrawItem(Control: TWinControl; Index: Integer; Rect: TRect;
  State: TOwnerDrawState);
//const
  //clPaleGreen= TColor($CCFFCC);
  //clPaleRed= TColor($CCCCFF);
  //clStrongRed=TColor($006C6CFF);
var
   bTemp:TBitmap;
begin
{
  with (Control as TComboBox) do
    begin
      //El primer Item (Operador) en verde pálido y
       //el segundo Item (Administrador) en rojo pálido
      if (Index= 0)
        then
          Canvas.Brush.Color:= clPaleRed
            else
              Canvas.Brush.Color:= clPaleGreen;

      Canvas.FillRect(Rect);
      Canvas.TextOut(Rect.Left, Rect.Top, Items[Index]);
    end;
}


  bTemp:=TBitmap.Create;
  if Index<ImageListPaises.Count then
  begin
    ImageListPaises.GetBitmap(Index, bTemp);
  end;
 
  with (Control as TDBComboBox) do 
  begin
    Canvas.FillRect(Rect);
    Canvas.TextOut(Rect.Left+ImageListPaises.Height + 2, Rect.Top, Items[Index]);
    Canvas.Draw(Rect.Left, Rect.Top, bTemp);
  end;
  bTemp.Free;
end;



procedure TfrmModificarRegistro.CentrarForma(var m : TWMWINDOWPOSCHANGED);
begin
  m.windowpos.x := (Screen.Width - Width) div 2;   {Left/Posicion X}
  m.windowpos.y := (Screen.Height - Height) div 2; {Left/Posicion X}
end;



procedure TfrmModificarRegistro.SoloNumerosSinEspaciosKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then lblbtnAceptar1.Click;

  //Valido para solo numeros
  if not (Key in['0'..'9', #8, #13]) then Abort;
end;



procedure TfrmModificarRegistro.lblbtnCancelarClick(Sender: TObject);
begin
  //Cierro la forma
  frmModificarRegistro.Close;
end;



procedure TfrmModificarRegistro.lblbtnAceptarClick(Sender: TObject);
var
  i, ID_Habitacion: Integer;
  NumeroIncompleto: AnsiString;
begin
  //Primero verifico que aun exista conexión con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Luego verifico que se hayan tecleado los valores necesarios
        if (SeTeclearonLosValoresNecesarios = True)
          then
            begin
              //Valido el formato del correo electronico personal
              if (CorreoEsValido(DBedtEmailHuesped.Text) = True)
                then
                  begin //El formato del correo electronico personal es válido
                    //Valido el formato del correo electronico del Centro laboral
                    if (CorreoEsValido(DBedtEmailCentroLaboral.Text) = True)
                      then
                        begin //El formato del correo electronico del Centro laboral es válido
                          //Valido el formato del correo electronico de la Actividad
                          if (CorreoEsValido(DBedtEmailActividad.Text) = True)
                            then
                              begin //El formato del correo electronico de la Actividad es válido
                                //Valido el Carne de Identidad, en dependencia de si es cubano o no
                                if (DBcmbxPais.Text = 'Cuba')
                                  then
                                    begin //Es cubano
                                      //Valido que sean 11 la cantidad de números del Carne de Identidad
                                      if (CarneIdentidadCubanoEsValido(DBedtCarneIdentidad.Text) = True)
                                        then
                                          begin //Son 11 caracteres (OK)
                                            //Creo un Huesped Temporal Nuevo
                                            TempNuevoHuesped:= THuesped.Create;

                                            //Relleno el huesped temporal
                                            RellenarHuespedTemporal(TempNuevoHuesped);

                                            //Modifico los datos del huesped en la BD
                                            HostalWare.ModificarHuesped(TempNuevoHuesped);

                                            //Inserto la Traza
                                            HostalWare.GuardarTrazaDelSistema('Modificó el registro del huesped: ' + TempViejoHuesped.Nombre + ' ' + TempViejoHuesped.Apellidos + ', con Carné de Identidad ' + TempViejoHuesped.CarneIdentidad + '.');

                                            //Actualizo todas las trazas
                                            HostalWare.MostrarTodasLasTrazas;

                                            //Actualizo el DBGrid (forma principal) de los huespedes
                                            //HostalWare.MostrarHuespedesTotales;

                                            //Destruyo el huesped temporal Viejo
                                            TempViejoHuesped.Destroy;

                                            //Destruyo el huesped temporal Nuevo
                                            TempNuevoHuesped.Destroy;

                                           //Cierro la forma de modificacion
                                           frmModificarRegistro.Close;
                                          end
                                            else
                                              begin //No son 11 caracteres
                                                MessageDlg('En la República de Cuba el Número de Carné de Identidad' + #13 + 'posee 11 dígitos. El suyo no los tiene.', mtError, [mbOk], 0);
                                              end;                                     
                                    end
                                      else
                                        begin //Es extranjero
                                          //Creo un Huesped Temporal Nuevo
                                          TempNuevoHuesped:= THuesped.Create;

                                          //Relleno el huesped temporal
                                          RellenarHuespedTemporal(TempNuevoHuesped);

                                          //Modifico los datos del huesped en la BD
                                          HostalWare.ModificarHuesped(TempNuevoHuesped);

                                          //Inserto la Traza
                                          HostalWare.GuardarTrazaDelSistema('Modificó el registro del huesped: ' + TempViejoHuesped.Nombre + ' ' + TempViejoHuesped.Apellidos + ', con Carné de Identidad ' + TempViejoHuesped.CarneIdentidad + '.');

                                          //Actualizo todas las trazas
                                          HostalWare.MostrarTodasLasTrazas;

                                          //Actualizo el DBGrid (forma principal) de los huespedes
                                          //HostalWare.MostrarHuespedesTotales;

                                          //Destruyo el huesped temporal Viejo
                                          TempViejoHuesped.Destroy;

                                          //Destruyo el huesped temporal Nuevo
                                          TempNuevoHuesped.Destroy;

                                         //Cierro la forma de modificacion
                                         frmModificarRegistro.Close;
                                        end;
                              end
                                else
                                  begin //El formato del correo electronico de la Actividad no es válido
                                    MessageDlg('El correo electrónico de la Actividad no es válido.', mtError, [mbOk], 0);
                                  end;
                        end
                          else
                            begin //El formato del correo electronico del Centro laboral no es válido
                              MessageDlg('El correo electrónico del Centro Laboral no es válido.', mtError, [mbOk], 0);
                            end;
                  end
                    else
                      begin //El formato del correo electronico personal no es válido
                        MessageDlg('El correo electrónico personal no es válido.', mtError, [mbOk], 0);
                      end;
            end
              else //No se teclearon los valores necesarios
                begin
                  MessageDlg('Antes debe llenar los datos que faltan.', mtError, [mbOk], 0);
                end;
      end
        else  //No existe conexión con la BD
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);

            //Cierro la forma
            frmModificarRegistro.Close;
          end;
end;



procedure TfrmModificarRegistro.RellenarHuespedTemporal(aHuesped: THuesped);
begin
  //Creo el Huesped Temporal
  //aHuesped:= THuesped.Create;

  //Posicionamiento
  aHuesped.ID_Huesped:= FID_Huesped;

  //*** Relleno sus Datos Personales ***
  aHuesped.Nombre:= DBedtNombre.Field.Text;
  aHuesped.CarneIdentidad:= DBedtCarneIdentidad.Field.Text;
  aHuesped.Apellidos:= DBedtApellidos.Text;
  aHuesped.TelefonoParticular:= DBedtTelefonoParticular.Field.Text;
  aHuesped.Pais:= DBcmbxPais.Field.Text;
  aHuesped.EmailHuesped:= DBedtEmailHuesped.Field.Text;

  if (DBcmbxPais.Field.Text = 'Cuba')
    then
      begin
        aHuesped.ProvinciaHuesped:= DBlucmbxProvinciaHuesped.Text;
        aHuesped.MunicipioHuesped:= DBlucmbxMunicipioHuesped.Text;
      end
        else
          begin
            aHuesped.ProvinciaHuesped:= DBtxtProvinciaHuesped.Field.Text;
            aHuesped.MunicipioHuesped:= DBtxtMunicipioHuesped.Field.Text;
         end;

  aHuesped.DireccionParticular:= DBMemoDireccionParticular.Lines.Text;





  //*** Relleno sus Datos Laborales ***
  if (DBcmbxMotivoHospedaje.Field.Text = 'Trabajador Interno')
    then
      begin
        aHuesped.NombreCentroLaboral:= 'Centro Nacional de Perfeccionamiento Técnico de la Salud - CENAPET';
      end
        else
          begin
            aHuesped.NombreCentroLaboral:= DBedtNombreCentroLaboral.Field.Text;
          end;

  aHuesped.EmailCentroLaboral:= DBedtEmailCentroLaboral.Field.Text;
  aHuesped.TelefonoCentroLaboral:= DBedtTelefonoCentroLaboral.Field.Text;

  if (DBcmbxPais.Field.Text = 'Cuba')
    then
      begin
        aHuesped.ProvinciaCentroLaboral:= DBlucmbxProvinciaCentroLaboral.Text;
        aHuesped.MunicipioCentroLaboral:= DBlucmbxMunicipioCentroLaboral.Text;
      end
        else
          begin
            aHuesped.ProvinciaCentroLaboral:= DBtxtProvinciaCentroLaboral.Field.Text;
            aHuesped.MunicipioCentroLaboral:= DBtxtMunicipioCentroLaboral.Field.Text;
         end;

  aHuesped.DireccionCentroLaboral:= DBMemoDireccionCentroLaboral.Lines.Text;




  
  //*** Relleno sus Datos de Actividades ***
  aHuesped.MotivoHospedaje:= DBcmbxMotivoHospedaje.Field.Text;
  aHuesped.Modalidad:= DBcmbxModalidad.Field.Text;
  
  aHuesped.FechaInicioActividad:= DateToStr(dtpFechaInicioActividad.Date);
  aHuesped.FechaFinalActividad:= DateToStr(dtpFechaFinalActividad.Date);
  
  aHuesped.TituloActividad:= DBedtTituloActividad.Field.Text;
  aHuesped.NombreInstitucionActividad:= DBedtNombreInstitucionActividad.Text;
  aHuesped.EmailActividad:= DBedtEmailActividad.Field.Text;
  aHuesped.TelefonoActividad:= DBedtTelefonoActividad.Field.Text;
  aHuesped.NombreCoordinadorActividad:= DBedtNombreCoordinadorActividad.Field.Text;
  aHuesped.DireccionActividad:= DBMemoDireccionActividad.Lines.Text;



  

  //*** Relleno sus Datos de Asignacion ***
  //aHuesped.FechaInicioHospedaje:= StrToDateTime(HostalWare.ObtenerFechaDelSistema + ' ' + HostalWare.ObtenerHoraDelSistema) ;  //No se debe modificar la fecha incial, pues ya estaba registrado de antes
  aHuesped.FechaFinalHospedaje:= dtpFechaFinalHospedaje.DateTime;

  //aHuesped.HoraInicioHospedaje:= HostalWare.ObtenerHoraDelSistema;
  //aHuesped.HoraFinalHospedaje:=  TimeToStr(dtpFechaFinalHospedaje.Time);

  if (chkbxDesayuno.Checked = True)
    then
      begin
        aHuesped.DerechoADesayuno:= 'Sí';
      end
        else
          begin
            aHuesped.DerechoADesayuno:= 'Nó';
          end;

  if (chkbxAlmuerzo.Checked = True)
    then
      begin
        aHuesped.DerechoAAlmuerzo:= 'Sí';
      end
        else
          begin
            aHuesped.DerechoAAlmuerzo:= 'No';
          end;

  if (chkbxComida.Checked = True)
    then
      begin
        aHuesped.DerechoAComida:= 'Sí';
      end
        else
          begin
            aHuesped.DerechoAComida:= 'No';
          end;

  aHuesped.LugarConsumo:= DBcmbxLugarConsumo.Text;
  aHuesped.Incidencias:= DBMemoIncidencias.Lines.Text;
end;



procedure TfrmModificarRegistro.SoloLetrasYNumerosSinPuntuacionNiEspaciosKeyPress(Sender: TObject; var Key: Char);
begin
  //Valido para solo caracteres
  if not (Key in['a'..'z', 'A'..'Z', '0'..'9', #8, #13]) then Abort;
end;



procedure TfrmModificarRegistro.Solo3NumerosKeyPress(Sender: TObject; var Key: Char);
begin
{
  //Verifico que no haya más de 3 numeros
  if (Length( edtNumeroCuarto1.Text ) < 3)
    then
      begin
        if (Key in [#13]) then lblbtnAceptar1.Click;

        //Valido para solo numeros + borrar + return
        if not (Key in['0'..'9', #8, #13]) then Abort;
      end
        else
          begin
            if (Key in [#13]) then lblbtnAceptar1.Click;

            //Solo borrar y returm
            if not (Key in[#8, #13]) then Abort;
          end;
}          
end;


  
procedure TfrmModificarRegistro.lblbtnLimpiar1Click(Sender: TObject);
begin
  //Reseteo los componentes
  ResetearComponentes;
end;



procedure TfrmModificarRegistro.ResetearComponentes;
begin
  //Muestro los valores que deseo modificar
  HostalWare.MostrarHuespedPorID_Huesped(FID_Huesped);

  //Mando a reposicionar componentes faltantes
  ReposicionarComponentes;

  //** No estaba pinchando bien esta parte (mostraba los cambios echos por mi, post reseteo) **
{
  //Componentes de Datos Personales
  DBedtNombre.Text:= TempViejoHuesped.Nombre;


  DBedtCarneIdentidad.Text:= TempViejoHuesped.CarneIdentidad;
  DBedtApellidos.Text:= TempViejoHuesped.Apellidos;
  DBedtTelefonoParticular.Text:= TempViejoHuesped.TelefonoParticular;

  DBcmbxPais.Text:= TempViejoHuesped.Pais; //Cuba de 1er país del listado

  DBedtEmailHuesped.Text:= TempViejoHuesped.EmailHuesped;

  //Detallar esto
  DBedtProvinciaHuesped.Text:= TempViejoHuesped.ProvinciaHuesped;
  DBedtMunicipioHuesped.Text:= TempViejoHuesped.MunicipioHuesped;

  //DBlucmbxProvinciaHuesped.Refresh;
  //DBlucmbxMunicipioHuesped.Refresh;
  DBMemoDireccionParticular.Lines.Text:= TempViejoHuesped.DireccionParticular;

  //Componentes de Datos Laborales
  DBedtNombreCentroLaboral.Text:= TempViejoHuesped.NombreCentroLaboral;
  DBedtEmailCentroLaboral.Text:= TempViejoHuesped.EmailCentroLaboral;
  DBedtTelefonoCentroLaboral.Text:= TempViejoHuesped.TelefonoCentroLaboral;

  //Detallar esto
  DBedtProvinciaCentroLaboral.Text:= TempViejoHuesped.ProvinciaCentroLaboral;
  DBedtMunicipioCentroLaboral.Text:= TempViejoHuesped.MunicipioCentroLaboral;

  //DBlucmbxProvinciaCentroLaboral.Refresh;
  //DBlucmbxMunicipioCentroLaboral.Refresh;
  DBMemoDireccionCentroLaboral.Lines.Text:= TempViejoHuesped.DireccionCentroLaboral;

  //Componentes de Detalles
  DBcmbxMotivoHospedaje.Text:= TempViejoHuesped.MotivoHospedaje;
  DBcmbxModalidad.Text:= TempViejoHuesped.Modalidad;

  dtpFechaInicioActividad.Date:= StrToDate(TempViejoHuesped.FechaInicioActividad);
  dtpFechaFinalActividad.Date:= StrToDate(TempViejoHuesped.FechaFinalActividad);
  
  DBedtTituloActividad.Text:= TempViejoHuesped.TituloActividad;
  DBedtNombreInstitucionActividad.Text:= TempViejoHuesped.NombreInstitucionActividad;
  DBedtEmailActividad.Text:= TempViejoHuesped.EmailActividad;
  DBedtTelefonoActividad.Text:= TempViejoHuesped.TelefonoActividad;
  DBedtNombreCoordinadorActividad.Text:= TempViejoHuesped.NombreCoordinadorActividad;
  DBMemoDireccionActividad.Lines.Text:= TempViejoHuesped.DireccionActividad;

  //Componentes de Asignación
  if (TempViejoHuesped.DerechoADesayuno = 'Sí')
    then
      begin
        chkbxDesayuno.Checked:= True;
      end
        else
          begin
            chkbxDesayuno.Checked:= False;
          end;

  if (TempViejoHuesped.DerechoAAlmuerzo = 'Sí')
    then
      begin
        chkbxAlmuerzo.Checked:= True;
      end
        else
          begin
            chkbxAlmuerzo.Checked:= False;
          end;

  if (TempViejoHuesped.DerechoAcomida = 'Sí')
    then
      begin
        chkbxComida.Checked:= True;
      end
        else
          begin
            chkbxComida.Checked:= False;
          end;

  dtpFechaFinalHospedaje.Date:= StrToDate(TempViejoHuesped.FechaFinalHospedaje);
  dtpFechaFinalHospedaje.Time:= StrToTime(TempViejoHuesped.HoraFinalHospedaje);

  DBcmbxLugarConsumo.Text:= TempViejoHuesped.LugarConsumo
}  
end;



procedure TfrmModificarRegistro.cmbxPaisChange(Sender: TObject);
var
  ID_ProvinciaHuesped, ID_ProvinciaCentroLaboral: Integer;
begin
  //Mando a mostrar las provincias en caso de que se seleccione a Cuba
  if (DBcmbxPais.Text = 'Cuba')
    then //Pais = Cuba
      begin
        //Escondo los edits de Provincia y Municipio (Datos Personales y Laborales)
        DBedtProvinciaHuesped.Visible:= False;
        DBedtMunicipioHuesped.Visible:= False;
        DBedtProvinciaCentroLaboral.Visible:= False;
        DBedtMunicipioCentroLaboral.Visible:= False;
        
        //Habilito los DBComboBox de Provincias y Municipios de Cuba
        //DBLookupComboBoxProvincias.Enabled:= True;
        //DBLookupComboBoxMunicipios.Enabled:= True;

        //Muestro los DBComboBox de Provincias y Municipios de Cuba (Datos Personales y Laborales)
        DBlucmbxProvinciaHuesped.Visible:= True;
        DBlucmbxMunicipioHuesped.Visible:= True;
        DBlucmbxProvinciaCentroLaboral.Visible:= True;
        DBlucmbxMunicipioCentroLaboral.Visible:= True;

        //Le especifico el DataSource a los componentes necesarios
        //DBComboBoxProvincias.DataField:= 'Nombre_Provincia';
        //DBComboBoxProvincias.DataSource:= DataModuleRegistroDeHuespedes.DataSourceMostrarProvinciasCubanas;
        //DBTextID_Provincia.DataField:= 'ID_Provincia';
        //DBTextID_Provincia.DataSource:= DataModuleRegistroDeHuespedes.DataSourceMostrarProvinciasCubanas;


        //Realizo la busqueda de las provincias (Datos Personales y Laborales)
        HostalWare.MostrarProvinciasCubanas;
        HostalWare.MostrarProvinciasCubanasParaDatosLaborales;
        
        //Recojo el ID de la provincia seleccionada (Datos Personales y Laborales)
        ID_ProvinciaHuesped:= StrToInt(DBtxtID_Provincia.Field.Text);
        ID_ProvinciaCentroLaboral:= StrToInt(DBtxtID_ProvinciaCentroLaboral.Field.Text);

        //Le especifico el DataSource a los componentes necesarios
        //DBComboBoxMunicipios.DataField:= 'Nombre_Municipio';
        //DBComboBoxMunicipios.DataSource:= DataModuleRegistroDeHuespedes.DataSourceMostrarMunicipiosPorID_Provincia;

        //Realizo la busqueda de los municipios de la provincia seleccionada (Datos Personales y Laborales)
        HostalWare.MostrarMunicipiosPorID_Provincia(ID_ProvinciaHuesped);
        HostalWare.MostrarMunicipiosParaDatosLaboralesPorID_Provincia(ID_ProvinciaCentroLaboral);
      end
        else //Otro pais
          begin
            //Muestro los edits de Provincia y Municipio
            DBedtProvinciaHuesped.Visible:= True;
            DBedtMunicipioHuesped.Visible:= True;
            DBedtProvinciaCentroLaboral.Visible:= True;
            DBedtMunicipioCentroLaboral.Visible:= True;

            //Deshabilito los DBComboBox de Provincias y Municipios de Cuba
            //DBLookupComboBoxProvincias.Enabled:= False;
            //DBLookupComboBoxMunicipios.Enabled:= False;

            //Escondo los DBComboBox de Provincias y Municipios de Cuba
            DBlucmbxProvinciaHuesped.Visible:= False;
            DBlucmbxMunicipioHuesped.Visible:= False;
            DBlucmbxProvinciaCentroLaboral.Visible:= False;
            DBlucmbxMunicipioCentroLaboral.Visible:= False;
          end;
end;



procedure TfrmModificarRegistro.DBlucmbxProvinciaHuespedClick(Sender: TObject);
var
  ID_Provincia: Integer;
begin
  //Verifico que se haya seleccionado una provincia (Datos Personales)
  if (DBlucmbxProvinciaHuesped.Text <> '')
    then
      begin
        //Recojo el ID de la provincia seleccionada
        ID_Provincia:= StrToInt(DBlucmbxProvinciaHuesped.KeyValue);

        //Habilito el DBLookUp de Municipios
        DBlucmbxMunicipioHuesped.Enabled:= True;

        //Realizo la busqueda de los municipios de la provincia seleccionada
        HostalWare.MostrarMunicipiosPorID_Provincia(ID_Provincia);
      end
        else
          begin
            //Deshabilito el DBLookUp de Municipios
            DBlucmbxMunicipioHuesped.Enabled:= False;
          end;
end;



function TfrmModificarRegistro.SeTeclearonLosValoresNecesarios: Boolean;
begin
  //En dependencia del motivo de hospedaje
  if (   (DBcmbxMotivoHospedaje.Text = 'Trabajador Interno') or (DBcmbxMotivoHospedaje.Text = 'Interés del Centro')   )
    then
      begin //Se inhabilitan muchos componentes, que no hay que llenar
        //En dependencia del Pais de residencia

        if (DBcmbxPais.Text = 'Cuba')
          then
            begin
              //Componentes de Datos Personales
              if (   (DBedtNombre.Text <> '') and (DBedtCarneIdentidad.Text <> '') and (DBedtApellidos.Text <> '')  and (DBlucmbxProvinciaHuesped.KeyField <> '') and (DBlucmbxMunicipioHuesped.KeyField <> '') and (DBMemoDireccionParticular.Lines.Text <> '')   )
                then
                  begin
                    Result:= True;
                  end
                    else
                      begin
                        Result:= False;
                      end;

            end
              else
                begin
                  //Componentes de Datos Personales
                  if (   (DBedtNombre.Text <> '')
                  and (DBedtCarneIdentidad.Text <> '')
                  and (DBedtApellidos.Text <> '')
                  //edtTelefonoParticular.Clear;
                  //cmbxPais.ItemIndex:= 54; //Cuba de 1er país del listado
                  //edtEmailHuesped.Clear;
                  and (DBedtProvinciaHuesped.Text <> '')
                  and (DBedtMunicipioHuesped.Text <> '')
                  //and (DBlucmbxProvinciaHuesped.Field.Text <> '')
                  //and (DBlucmbxMunicipioHuesped.Field.Text <> '')
                  and (DBMemoDireccionParticular.Lines.Text <> '')   )

                  //Componentes de Datos Laborales
                  //and (edtNombreCentroLaboral.Text <> '');
                  //edtEmailCentroLaboral.Clear;
                  //edtTelefonoCentroLaboral.Clear;
                  //and (edtProvinciaCentroLaboral.Text <> '')
                  //and (edtMunicipioCentroLaboral.Text <> '')
                  //and (DBlucmbxProvinciaCentroLaboral.Field.Text <> '')
                  //and (DBlucmbxMunicipioCentroLaboral.Field.Text <> '')
                  //and (MemoDireccionCentroLaboral.Text <> '')

                  //Componentes de Detalles
                  //cmbxMotivoHospedaje.ItemIndex:= 0;  //'Curso' de 1ro del listado
                  //cmbxModalidad.ItemIndex:= 0;  //'Presencial' de 1ro del listado

                  //dtpFechaInicioActividad.Refresh;
                  //dtpFechaFinalActividad.Refresh;

                  //and (edtTituloActividad.Text <> '')
                  //and (edtNombreInstitucionActividad.Text <> '')
                  //edtEmailActividad.Clear;
                  //edtTelefonoActividad.Clear;
                  //and (edtNombreCoordinadorActividad.Text <> '')
                  //and (MemoDireccionActividad.Text <> '')   )

                  //Componentes de Asignación
                  //cmbxFiltroXPiso.ItemIndex:= 0; //'TODOS' de 1ro del listado
                  //cmbxFiltroXTipoLecho.ItemIndex:= 0; //'TODOS' de 1ro del listado
                  //chkbxDesayuno.Checked:= False;
                  //chkbxAlmuerzo.Checked:= False;
                  //chkbxComida.Checked:= False;

                  //dtpFechaFinalHospedaje.Refresh;

                  //cmbxLugarConsumo.ItemIndex:= 0; //'Comedor Obrero' de 1ro del listado
                    then
                      begin
                        Result:= True;
                      end
                        else
                          begin
                            Result:= False;
                          end;
                end;
      end
        else
          begin  //Casi todos los componentes son necesarios llenarse
            //En dependencia del Pais de residencia
            if (DBcmbxPais.Text = 'Cuba')
              then
                begin
                  //Componentes de Datos Personales
                  if (   (DBedtNombre.Text <> '')
                  and (DBedtCarneIdentidad.Text <> '')
                  and (DBedtApellidos.Text <> '')
                  //edtTelefonoParticular.Clear;
                  //cmbxPais.ItemIndex:= 54; //Cuba de 1er país del listado
                  //edtEmailHuesped.Clear;
                  //edtProvinciaHuesped.Clear;
                  //edtMunicipioHuesped.Clear;
                  and (DBlucmbxProvinciaHuesped.KeyField <> '')
                  and (DBlucmbxMunicipioHuesped.KeyField <> '')
                  and (DBMemoDireccionParticular.Lines.Text <> '')

                  //Componentes de Datos Laborales
                  and (DBedtNombreCentroLaboral.Text <> '')
                  //edtEmailCentroLaboral.Clear;
                  //edtTelefonoCentroLaboral.Clear;
                  //edtProvinciaCentroLaboral.Clear;
                  //edtMunicipioCentroLaboral.Clear;
                  and (DBlucmbxProvinciaCentroLaboral.KeyField <> '')
                  and (DBlucmbxMunicipioCentroLaboral.KeyField <> '')
                  and (DBMemoDireccionCentroLaboral.Lines.Text <> '')

                  //Componentes de Detalles
                  //cmbxMotivoHospedaje.ItemIndex:= 0;  //'Curso' de 1ro del listado
                  //cmbxModalidad.ItemIndex:= 0;  //'Presencial' de 1ro del listado

                  //dtpFechaInicioActividad.Refresh;
                  //dtpFechaFinalActividad.Refresh;

                  and (DBedtTituloActividad.Text <> '')
                  and (DBedtNombreInstitucionActividad.Text <> '')
                  //edtEmailActividad.Clear;
                  //edtTelefonoActividad.Clear;
                  and (DBedtNombreCoordinadorActividad.Text <> '')
                  and (DBMemoDireccionActividad.Lines.Text <> '')   )

                  //Componentes de Asignación
                  //cmbxFiltroXPiso.ItemIndex:= 0; //'TODOS' de 1ro del listado
                  //cmbxFiltroXTipoLecho.ItemIndex:= 0; //'TODOS' de 1ro del listado
                  //chkbxDesayuno.Checked:= False;
                  //chkbxAlmuerzo.Checked:= False;
                  //chkbxComida.Checked:= False;

                  //dtpFechaFinalHospedaje.Refresh;

                  //cmbxLugarConsumo.ItemIndex:= 0; //'Comedor Obrero' de 1ro del listado
                    then
                      begin
                        Result:= True;
                      end
                        else
                          begin
                            Result:= False;
                          end;
              end
                else
                  begin
                    //Componentes de Datos Personales
                    if (   (DBedtNombre.Text <> '')
                    and (DBedtCarneIdentidad.Text <> '')
                    and (DBedtApellidos.Text <> '')
                    //edtTelefonoParticular.Clear;
                    //cmbxPais.ItemIndex:= 54; //Cuba de 1er país del listado
                    //edtEmailHuesped.Clear;
                    and (DBedtProvinciaHuesped.Text <> '')
                    and (DBedtMunicipioHuesped.Text <> '')
                    //and (DBlucmbxProvinciaHuesped.Field.Text <> '')
                    //and (DBlucmbxMunicipioHuesped.Field.Text <> '')
                    and (DBMemoDireccionParticular.Lines.Text <> '')

                    //Componentes de Datos Laborales
                    and (DBedtNombreCentroLaboral.Text <> '')
                    //edtEmailCentroLaboral.Clear;
                    //edtTelefonoCentroLaboral.Clear;
                    and (DBedtProvinciaCentroLaboral.Text <> '')
                    and (DBedtMunicipioCentroLaboral.Text <> '')
                    //and (DBlucmbxProvinciaCentroLaboral.Field.Text <> '')
                    //and (DBlucmbxMunicipioCentroLaboral.Field.Text <> '')
                    and (DBMemoDireccionCentroLaboral.Lines.Text <> '')

                    //Componentes de Detalles
                    //cmbxMotivoHospedaje.ItemIndex:= 0;  //'Curso' de 1ro del listado
                    //cmbxModalidad.ItemIndex:= 0;  //'Presencial' de 1ro del listado

                    //dtpFechaInicioActividad.Refresh;
                    //dtpFechaFinalActividad.Refresh;

                    and (DBedtTituloActividad.Text <> '')
                    and (DBedtNombreInstitucionActividad.Text <> '')
                    //edtEmailActividad.Clear;
                    //edtTelefonoActividad.Clear;
                    and (DBedtNombreCoordinadorActividad.Text <> '')
                    and (DBMemoDireccionActividad.Lines.Text <> '')   )

                    //Componentes de Asignación
                    //cmbxFiltroXPiso.ItemIndex:= 0; //'TODOS' de 1ro del listado
                    //cmbxFiltroXTipoLecho.ItemIndex:= 0; //'TODOS' de 1ro del listado
                    //chkbxDesayuno.Checked:= False;
                    //chkbxAlmuerzo.Checked:= False;
                    //chkbxComida.Checked:= False;

                    //dtpFechaFinalHospedaje.Refresh;

                    //cmbxLugarConsumo.ItemIndex:= 0; //'Comedor Obrero' de 1ro del listado
                      then
                        begin
                          Result:= True;
                        end
                          else
                            begin
                              Result:= False;
                            end;
                   end;
          end;
end;



procedure TfrmModificarRegistro.PageDatosShow(Sender: TObject);
begin
{
  //Dispongo el Focus en dependencia de lo que este lleno o vacio, y por orden de prioridad
  if (DBedtNombre.Text = '')
    then
      begin
        //Pongo el focus en el Edit de Nombre
        DBedtNombre.SetFocus;
      end
        else
          begin
            if (DBedtCarneIdentidad.Text = '')
              then
                begin
                  //Pongo el focus en el Edit de Carne de Identidad
                  DBedtCarneIdentidad.SetFocus;
                end
                  else
                    begin
                      if (DBedtApellidos.Text = '')
                        then
                          begin
                            DBedtApellidos.SetFocus;
                          end
                            else
                              begin
                                if (DBedtTelefonoParticular.Text = '')
                                  then
                                    begin
                                      DBedtTelefonoParticular.SetFocus;
                                    end
                                      else
                                        begin
                                          if (DBedtEmailHuesped.Text = '')
                                            then
                                              begin
                                                DBedtEmailHuesped.SetFocus;
                                              end
                                                else
                                                  begin
                                                    if (DBMemoDireccionParticular.Lines.Text = '')
                                                      then
                                                        begin
                                                          DBMemoDireccionParticular.SetFocus;
                                                        end;
                                                  end;
                                        end;
                              end;
                    end;
          end;
}
end;



procedure TfrmModificarRegistro.PageLaboralesShow(Sender: TObject);
begin
  //Dispongo el Focus en dependencia de lo que este lleno o vacio, y por orden de prioridad
  if (DBedtNombreCentroLaboral.Field.Text = '')
    then
      begin
        //Pongo el focus en el Edit de Institucion Laboral
        DBedtNombreCentroLaboral.SetFocus;
      end
        else
          begin
            if (DBedtEmailCentroLaboral.Field.Text = '')
              then
                begin
                  DBedtEmailCentroLaboral.SetFocus;
                end
                  else
                    begin
                      if (DBedtTelefonoCentroLaboral.Field.Text = '')
                        then
                          begin
                            DBedtTelefonoCentroLaboral.SetFocus;
                          end
                            else
                              begin
                                if (DBMemoDireccionCentroLaboral.Lines.Text = '')
                                  then
                                    begin
                                      DBMemoDireccionCentroLaboral.SetFocus;
                                    end;
                              end;
                    end;
          end;
end;



procedure TfrmModificarRegistro.PageDetallesShow(Sender: TObject);
begin
  //Dispongo el Focus en dependencia de lo que este lleno o vacio, y por orden de prioridad
  if (   (DBedtTituloActividad.Text = '') and (DBedtTituloActividad.Enabled = True)   )
    then
      begin
        //Pongo el focus en el Edit del Titulo de la Actividad
        DBedtTituloActividad.SetFocus;
      end
        else
          begin
            if (   (DBedtNombreInstitucionActividad.Text = '') and (DBedtNombreInstitucionActividad.Enabled = True)   )
              then
                begin
                  DBedtNombreInstitucionActividad.SetFocus;
                end
                  else
                    begin
                      if (   (DBedtEmailActividad.Text = '') and (DBedtEmailActividad.Enabled = True)   )
                        then
                          begin
                            DBedtEmailActividad.SetFocus;
                          end
                            else
                              begin
                                if (   (DBedtTelefonoActividad.Text = '') and (DBedtTelefonoActividad.Enabled = True)   )
                                  then
                                    begin
                                      DBedtTelefonoActividad.SetFocus;
                                    end
                                      else
                                        begin
                                          if (   (DBedtNombreCoordinadorActividad.Text = '') and (DBedtNombreCoordinadorActividad.Enabled = True)   )
                                            then
                                              begin
                                                DBedtNombreCoordinadorActividad.SetFocus;
                                              end
                                                else
                                                  begin
                                                    if (   (DBMemoDireccionActividad.Lines.Text = '') and (DBMemoDireccionActividad.Enabled = True)   )
                                                      then
                                                        begin
                                                          DBMemoDireccionActividad.SetFocus;
                                                        end;
                                                  end;
                                        end;
                              end;
                    end;
          end;
end;



procedure TfrmModificarRegistro.DBlucmbxProvinciaCentroLaboralClick(Sender: TObject);
var
  ID_Provincia: Integer;
begin
  //Verifico que se haya seleccionado una provincia (Datos Laborales)
  if (DBlucmbxProvinciaCentroLaboral.Text <> '')
    then
      begin
        //Recojo el ID de la provincia seleccionada
        ID_Provincia:= StrToInt(DBlucmbxProvinciaCentroLaboral.KeyValue);

        //Habilito el DBLookUp de Municipios (Datos Laborales)
        DBlucmbxMunicipioCentroLaboral.Enabled:= True;

        //Realizo la busqueda de los municipios de la provincia seleccionada
        HostalWare.MostrarMunicipiosParaDatosLaboralesPorID_Provincia(ID_Provincia);
      end
        else
          begin
            //Deshabilito el DBLookUp de Municipios (Datos Laborales)
            DBlucmbxMunicipioCentroLaboral.Enabled:= False;
          end;
end;



procedure TfrmModificarRegistro.cmbxMotivoHospedajeChange(Sender: TObject);
begin
  //Valido los Componentes que se llenarán
  if (DBcmbxMotivoHospedaje.Text = 'Trabajador Interno')
    then
      begin //Es un Trabajador Interno
        //Deshabilito los componentes de datos innecesarios
        //Datos Laborales


        //Actividades
        lblTituloActividad.Enabled:= False;
        DBedtTituloActividad.Clear;
        DBedtTituloActividad.Enabled:= False;

        lblNombreCoordinadorActividad.Enabled:= False;
        DBedtNombreCoordinadorActividad.Clear;
        DBedtNombreCoordinadorActividad.Enabled:= False;

        lblTelefonoActividad.Enabled:= False;
        DBedtTelefonoActividad.Clear;
        DBedtTelefonoActividad.Enabled:= False;

        lblModalidad.Enabled:= False;
        DBcmbxModalidad.Enabled:= False;

        lblEmailActividad.Enabled:= False;
        DBedtEmailActividad.Clear;
        DBedtEmailActividad.Enabled:= False;

        lblNombreInstitucionActividad.Enabled:= False;
        DBedtNombreInstitucionActividad.Clear;
        DBedtNombreInstitucionActividad.Enabled:= False;

        lblFechaInicioCurso.Enabled:= False;
        dtpFechaInicioActividad.Enabled:= False;

        lblFechaFinalCurso.Enabled:= False;
        dtpFechaFinalActividad.Enabled:= False;

        lblDireccionActividad.Enabled:= False;
        DBMemoDireccionActividad.Clear;
        DBMemoDireccionActividad.Enabled:= False;

        //Selecciono la provincia CH para el Centro Laboral
        DBlucmbxProvinciaCentroLaboral.KeyValue:= '4';
        DBlucmbxProvinciaCentroLaboral.OnClick(self);  //Ya esto habilita el DBLookUpComboBox de municipios Laborales

        //Selecciono el municipio Boyeros para el Centro Laboral
        DBlucmbxMunicipioCentroLaboral.KeyValue:= 45;

        //Deshabilito los DBLookUpComboBox de provincia y Municipio (para que no los cambien)
        DBlucmbxProvinciaCentroLaboral.Enabled:= False;
        DBlucmbxMunicipioCentroLaboral.Enabled:= False;

        DBedtNombreCentroLaboral.Clear;
        //Establezco el nombre FIJO del Centro Laboral
        DBedtNombreCentroLaboral.Text:= 'Centro Nacional de Perfeccionamiento Técnico de la Salud - CENAPET';

        //Inhabilito el edit de Nombre del Centro Laboral (para que no lo alteren)
        DBedtNombreCentroLaboral.Enabled:= False;

        //Borro lo que había antes en el Memo Direccion Centro laboral
        DBMemoDireccionCentroLaboral.Clear;

        //Establezco la direccion FIJA del Centro Laboral
        DBMemoDireccionCentroLaboral.Lines.Add('Calle 100 entre Perla y E, Altahabana.');
        DBMemoDireccionCentroLaboral.Lines.Add('Municipio Boyeros, La Habana, Cuba.  C.P. 10 800');
        DBMemoDireccionCentroLaboral.Lines.Add('Teléfonos 643-8782  y  643-8783 (pizarra).  643-7489 (Dirección)');
        DBMemoDireccionCentroLaboral.Lines.Add('Fax (537) 33-3511. Email: zaida@cenapet.sld.cu');

        //Inhabilito la direccion FIJA del Centro Laboral (para que no lo alteren)
        DBMemoDireccionCentroLaboral.Enabled:= False;
      end
        else
          begin //Otro motivo de hospedaje
            //Habilito los componentes de datos necesarios
            lblTituloActividad.Enabled:= True;
            DBedtTituloActividad.Enabled:= True;

            lblNombreCoordinadorActividad.Enabled:= True;
            DBedtNombreCoordinadorActividad.Enabled:= True;

            lblTelefonoActividad.Enabled:= True;
            DBedtTelefonoActividad.Enabled:= True;

            lblModalidad.Enabled:= True;
            DBcmbxModalidad.Enabled:= True;

            lblEmailActividad.Enabled:= True;
            DBedtEmailActividad.Enabled:= True;

            lblNombreInstitucionActividad.Enabled:= True;
            DBedtNombreInstitucionActividad.Enabled:= True;

            lblFechaInicioCurso.Enabled:= True;
            dtpFechaInicioActividad.Enabled:= True;

            lblFechaFinalCurso.Enabled:= True;
            dtpFechaFinalActividad.Enabled:= True;

            lblDireccionActividad.Enabled:= True;
            DBMemoDireccionActividad.Enabled:= True;

            //Habilito el DBLookUpComboBox de provincia (Centro Laboral)
            DBlucmbxProvinciaCentroLaboral.Enabled:= True;

            //Habilito el DBLookUpComboBox de municipio (Centro Laboral)
            if (DBlucmbxProvinciaCentroLaboral.Text <> '')
              then
                begin
                  DBlucmbxMunicipioCentroLaboral.Enabled:= True;
                end;

            //Habilito el nombre y direccion del centro laboral
            DBedtNombreCentroLaboral.Enabled:= True;
            DBMemoDireccionCentroLaboral.Enabled:= True;
          end;
end;



procedure TfrmModificarRegistro.ReposicionarComponentes;
var
  ID_ProvinciaHuesped, ID_ProvinciaCentroLaboral: Integer;
  ID_MunicipioHuesped, ID_MunicipioCentroLaboral: Integer;
begin
  //Reposiciono los componentes restantes
  //Mando a mostrar las provincias en caso de que se seleccione a Cuba
  if (DBcmbxPais.Text = 'Cuba')
    then //Pais = Cuba
      begin
        //Escondo los DBedits de Provincia y Municipio (Datos Personales y Laborales)
        DBedtProvinciaHuesped.Visible:= False;
        DBedtMunicipioHuesped.Visible:= False;
        DBedtProvinciaCentroLaboral.Visible:= False;
        DBedtMunicipioCentroLaboral.Visible:= False;
        
        //Habilito los DBComboBox de Provincias y Municipios de Cuba
        //DBLookupComboBoxProvincias.Enabled:= True;
        //DBLookupComboBoxMunicipios.Enabled:= True;

        //Muestro los DBComboBox de Provincias y Municipios de Cuba (Datos Personales y Laborales)
        //En dependencia de la provincia y el municipio de cuba, es la posicion que adoptará el DBLookUpComboBox

        DBlucmbxProvinciaHuesped.Visible:= True;
        DBlucmbxMunicipioHuesped.Visible:= True;
        DBlucmbxProvinciaCentroLaboral.Visible:= True;
        DBlucmbxMunicipioCentroLaboral.Visible:= True;



        //Realizo la busqueda de las provincias (Datos Personales y Laborales)
        HostalWare.MostrarProvinciasCubanas;
        HostalWare.MostrarProvinciasCubanasParaDatosLaborales;
        
        //Recojo el ID de la provincia seleccionada (Datos Personales y Laborales)
        //ID_ProvinciaHuesped:= StrToInt(DBtxtID_Provincia.Field.Text);
        //ID_ProvinciaCentroLaboral:= StrToInt(DBtxtID_ProvinciaCentroLaboral.Field.Text);

        //Busco el ID_Provincia Huesped, por su Provincia Huesped
        HostalWare.BuscarID_ProvinciaCubanaHuespedPorNombreProvincia(DBtxtProvinciaHuesped.Field.Text);

        //Busco el ID_Provincia Centro Laboral, por su Provincia Centro Laboral
        HostalWare.BuscarID_ProvinciaCubanaCentroLaboralPorNombreProvincia(DBtxtProvinciaCentroLaboral.Field.Text);

        //Recojo el ID de la provincia encontrada (Datos Personales y Laborales)
        ID_ProvinciaHuesped:= StrToInt(DBtxtID_ProvinciaBuscada_Huesped.Field.Text);
        ID_ProvinciaCentroLaboral:= StrToInt(DBtxtID_ProvinciaBuscada_CentroLaboral.Field.Text);

        //Posiciono los DBLookUpComboBox de Provincias en la posicion correcta (Datos Personales y Laborales)
        DBlucmbxProvinciaHuesped.KeyValue:= ID_ProvinciaHuesped;
        DBlucmbxProvinciaHuesped.OnClick(self); //Ya esto habilita el DBLookUpComboBox de municipios Personales

        DBlucmbxProvinciaCentroLaboral.KeyValue:= ID_ProvinciaCentroLaboral;
        DBlucmbxProvinciaCentroLaboral.OnClick(self); //Ya esto habilita el DBLookUpComboBox de municipios Laborales



        //Le especifico el DataSource a los componentes necesarios
        //DBComboBoxMunicipios.DataField:= 'Nombre_Municipio';
        //DBComboBoxMunicipios.DataSource:= DataModuleRegistroDeHuespedes.DataSourceMostrarMunicipiosPorID_Provincia;

        //Realizo la busqueda de los municipios de la provincia seleccionada (Datos Personales y Laborales)
        HostalWare.MostrarMunicipiosPorID_Provincia(ID_ProvinciaHuesped);
        HostalWare.MostrarMunicipiosParaDatosLaboralesPorID_Provincia(ID_ProvinciaCentroLaboral);

        //Busco el ID_Municipio Huesped, por su Municipio Huesped
        HostalWare.BuscarID_MunicipioCubanoHuespedPorNombreMunicipio(DBtxtMunicipioHuesped.Field.Text);

        //Busco el ID_Municipio Centro Laboral, por su Municipio Centro Laboral
        HostalWare.BuscarID_MunicipioCubanoCentroLaboralPorNombreMunicipio(DBtxtMunicipioCentroLaboral.Field.Text);

        //Recojo los ID de los municipios encontrados (Datos Personales y Laborales)
        ID_MunicipioHuesped:= StrToInt(DBtxtID_MunicipioBuscado_Huesped.Field.Text);
        ID_MunicipioCentroLaboral:= StrToInt(DBtxtID_MunicipioBuscado_CentroLaboral.Field.Text);

        //Posiciono los DBLookUpComboBox de Municipios en la posicion correcta (Datos Personales y Laborales)
        DBlucmbxMunicipioHuesped.KeyValue:= ID_MunicipioHuesped;
        DBlucmbxMunicipioCentroLaboral.KeyValue:= ID_MunicipioCentroLaboral;
      end
        else //Otro pais
          begin
            //Muestro los DBedits de Provincia y Municipio
            DBedtProvinciaHuesped.Visible:= True;
            DBedtMunicipioHuesped.Visible:= True;
            DBedtProvinciaCentroLaboral.Visible:= True;
            DBedtMunicipioCentroLaboral.Visible:= True;

            //Deshabilito los DBComboBox de Provincias y Municipios de Cuba
            //DBLookupComboBoxProvincias.Enabled:= False;
            //DBLookupComboBoxMunicipios.Enabled:= False;

            //Escondo los DBComboBox de Provincias y Municipios de Cuba (Datos Personales y Laborales)
            DBlucmbxProvinciaHuesped.Visible:= False;
            DBlucmbxMunicipioHuesped.Visible:= False;
            DBlucmbxProvinciaCentroLaboral.Visible:= False;
            DBlucmbxMunicipioCentroLaboral.Visible:= False;
          end;

  //Ejecuto el evento OnChange del DBComboBox de Motivo de Hospedaje
  DBcmbxMotivoHospedaje.OnChange(Self);

  //Fechas de inicio y fin de la Actividad
  dtpFechaInicioActividad.Date:= StrToDate(DBtxtFechaInicioActividad.Field.Text);
  dtpFechaFinalActividad.Date:= StrToDate(DBtxtFechaFinalActividad.Field.Text);

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

  //Fecha de fin del hospedaje
  //dtpFechaFinalHospedaje.Date:= StrToDate(DBtxtFechaFinalHospedaje.Field.Text);
  //dtpFechaFinalHospedaje.Time:= StrToTime(DBtxtHoraFinalHospedaje.Field.Text);
  
  dtpFechaFinalHospedaje.DateTime:= StrToDateTime(DBtxtFechaFinalHospedaje.Field.Text);
end;



procedure TfrmModificarRegistro.ResetearMunicipiosCubanos;
begin
  //En dependencia del
end;



procedure TfrmModificarRegistro.ResetearProvinciasCubanas;
begin
  //
end;



function TfrmModificarRegistro.CorreoEsValido(aEmail: AnsiString): Boolean;
var
  CantArrobas: Integer;
  CantPuntoYComas: Integer;
  Correos: AnsiString;
  i: Integer;
label Salida;
begin
  //Compruebo el formato de los correos electrónicos, si no está vacío el componente
  if (aEmail <> '')
    then
      begin
        //Inicializo las variables
        CantArrobas:= 0;
        CantPuntoYComas:= 0;

        //Guardo el valor del correo en una variable local
        Correos:= aEmail;

        //Compruebo si incluye el caracter '@' dentro de ese grupo potencial de correos (al menos una vez)
        if (AnsiContainsStr(Correos, '@')= True)
          then
            begin
              //Ahora debo contar la cantidad de correos (cantidad de '@' presentes)
              for i:= 1 to Length(aEmail) do
                begin
                  if (   MidStr(Correos , i, 1)= '@'   )
                    then
                      CantArrobas:= CantArrobas + 1;
                end;

              //Verifico que haya una arroba "@"
              if (CantArrobas = 1)
                then
                  begin
                    //Verifico que no haya espacios vacios
                    if (AnsiContainsStr(Correos, ' ') = False)
                      then
                        begin
                          //Verifico que no termine con un punto
                          if (AnsiRightStr(Correos, 1) <> '.')
                            then
                              begin
                                //Verifico que no empiece con un "."
                                if (AnsiLeftStr(Correos, 1) <> '.')
                                  then
                                    begin
                                      //Verifico que no haya dos "." juntos
                                      if (AnsiContainsStr(Correos, '..') = False)
                                        then
                                          begin
                                            //Verifico que no haya un "." antes o después de la "@"
                                            if (   (AnsiContainsStr(Correos, '.@') = False) and (AnsiContainsStr(Correos, '@.') = False)   )
                                              then
                                                begin
                                                  //Verifico que posea al menos un punto
                                                  if (AnsiContainsStr(Correos, '.')= False)
                                                    then
                                                      begin //No posee al menos un punto
                                                        Result:= False;
                                                      end
                                                        else
                                                          begin //TODO OK
                                                            Result:= True;
                                                          end;
                                                end
                                                  else
                                                    begin //Hay al menos un "." antes o después de la "@"
                                                      Result:= False;
                                                    end;
                                          end
                                            else
                                              begin //Hay dos "." juntos
                                                Result:= False;
                                              end;
                                    end
                                      else
                                        begin //Empieza con un "."
                                          Result:= False;
                                        end;
                              end
                                else
                                  begin //Termina con un punto "."
                                    Result:= False;
                                  end;
                        end
                          else
                            begin //Hay espacios vacios
                              Result:= False;
                            end;
                  end
                    else
                      begin //No hay una arroba "@"
                        Result:= False;
                      end;
            end
              else
                begin //No incluye ni siquiera una "@"
                  Result:= False;
                end;
      end
        else
          begin  //El email es nulo o tiene solo espacios en blanco
            Result:= True;
          end;


  //Etiqueta de salida del procedimiento
  Salida:
end;



function TfrmModificarRegistro.CarneIdentidadCubanoEsValido(aCICubano: AnsiString): Boolean;
begin
  //Compruebo si tiene exactamente 11 dígitos el CI
  if (Length(aCICubano) <> 11)
    then
      begin //No tiene 11 caracteres
        Result:= False;
      end
        else
          begin //Sí tiene 11 caracteres.
            Result:= True;
          end;
end;



procedure TfrmModificarRegistro.SoloNumerosTelefonicosYExtensionKeyPress(Sender: TObject; var Key: Char);
begin
  //Valido para solo letras y numeros, con espacios, puntos y guiones
  if not (Key in['a'..'z', 'A'..'Z', '0'..'9', ' ', ',', '-', '.', #8, #13]) then Abort;
end;



procedure TfrmModificarRegistro.SoloCorreosElectronicosKeyPress(Sender: TObject; var Key: Char);
begin
  //Valido para solo caracteres
  if not (Key in['a'..'z', 'A'..'Z', '0'..'9', '.', '_', '@', #8, #13]) then Abort;
end;



procedure TfrmModificarRegistro.SoloLetrasYNumerosConPuntuacionYEspaciosKeyPress(
  Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then lblbtnAceptar1.Click;

  //Valido para solo nombres
  if not (Key in['a'..'z', 'A'..'Z', 'ñ', 'Ñ', 'á', 'é', 'í', 'ó', 'ú', 'Á', 'É', 'Í', 'Ó', 'Ú', '0'..'9', ' ', #8, #13]) then Abort;
end;



end.
