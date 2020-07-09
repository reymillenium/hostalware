unit UfrmNuevoRegistro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,

  //Clases de Control
  UGestionCursistasHospedados,

  //Clases Entidad
  UHabitacion, UCama, UHuesped,

  //Clases Interfaz

  //DataModules
  UDataModuleAdminCapacidades,
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
  AdvSmoothEditButton, AdvSmoothDatePicker, AdvSmoothCalendar;

  
type
  TfrmNuevoRegistro = class(TForm)
    AdvOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    OfficePagerNuevoRegistro: TAdvOfficePager;
    PageDatos: TAdvOfficePage;
    PageAsignacion: TAdvOfficePage;
    lblbtnLimpiar1: TLbButton;
    lblbtnAceptar1: TLbButton;
    lblbtnCancelar1: TLbButton;
    grbxPersonales: TAdvGroupBox;
    lblProvinciaHuesped: TLabel;
    cmbxPais: TComboBox;
    lblPais: TLabel;
    edtCarneIdentidad: TEdit;
    lblCarneIdentidad: TLabel;
    edtApellidos: TEdit;
    lblApellidos: TLabel;
    edtNombre: TEdit;
    lblNombre: TLabel;
    PageDetalles: TAdvOfficePage;
    lblMunicipioHuesped: TLabel;
    MemoDireccionParticular: TMemo;
    lblDireccionParticular: TLabel;
    edtProvinciaHuesped: TEdit;
    edtMunicipioHuesped: TEdit;
    DBtxtID_Provincia: TDBText;
    DBlucmbxProvinciaHuesped: TDBLookupComboBox;
    DBlucmbxMunicipioHuesped: TDBLookupComboBox;
    lblTelefonoParticular: TLabel;
    edtTelefonoParticular: TEdit;
    grbxDetalles: TAdvGroupBox;
    lblMotivoHospedaje: TLabel;
    lblModalidad: TLabel;
    lblTituloActividad: TLabel;
    lblNombreInstitucionActividad: TLabel;
    edtTituloActividad: TEdit;
    edtNombreInstitucionActividad: TEdit;
    lblFechaFinalCurso: TLabel;
    lblFechaInicioCurso: TLabel;
    lblDireccionActividad: TLabel;
    MemoDireccionActividad: TMemo;
    lblEmailActividad: TLabel;
    edtEmailActividad: TEdit;
    lblTelefonoActividad: TLabel;
    edtTelefonoActividad: TEdit;
    lblNombreCoordinadorActividad: TLabel;
    edtNombreCoordinadorActividad: TEdit;
    lblEmailHuesped: TLabel;
    edtEmailHuesped: TEdit;
    lblbtnLimpiar3: TLbButton;
    lblbtnAceptar3: TLbButton;
    lblbtnCancelar3: TLbButton;
    lblbtnLimpiar4: TLbButton;
    lblbtnAceptar4: TLbButton;
    lblbtnCancelar4: TLbButton;
    lblFechaFinalHospedaje: TLabel;
    dtpFechaFinalHospedaje: TAdvDateTimePicker;
    grbxConDerechoA: TAdvGroupBox;
    chkbxDesayuno: TAdvOfficeCheckBox;
    chkbxAlmuerzo: TAdvOfficeCheckBox;
    chkbxComida: TAdvOfficeCheckBox;
    lblbtnAnularAsignacion: TLbButton;
    lblbtnAsignarCama: TLbButton;
    AdvGroupBoxHabitacionesExistentes: TAdvGroupBox;
    DBGridHabitacionesConVacantes: TDBAdvGrid;
    lblFiltrarPorPiso: TLabel;
    lblFiltrarPorTipoLecho: TLabel;
    DBtxtID_Habitacion: TDBText;
    AdvGroupBox1: TAdvGroupBox;
    DBGridCamasLibresExistentes: TDBAdvGrid;
    DBtxtID_Cama: TDBText;
    grbxLaborales: TAdvGroupBox;
    lblProvinciaCentroLaboral: TLabel;
    lblEmailCentroLaboral: TLabel;
    lblNombreCentroLaboral: TLabel;
    lblMunicipioCentroLaboral: TLabel;
    lblTelefonoCentroLaboral: TLabel;
    lblDireccionCentroLaboral: TLabel;
    edtMunicipioCentroLaboral: TEdit;
    edtProvinciaCentroLaboral: TEdit;
    edtEmailCentroLaboral: TEdit;
    edtNombreCentroLaboral: TEdit;
    DBlucmbxProvinciaCentroLaboral: TDBLookupComboBox;
    DBlucmbxMunicipioCentroLaboral: TDBLookupComboBox;
    edtTelefonoCentroLaboral: TEdit;
    MemoDireccionCentroLaboral: TMemo;
    lblLugarConsumo: TLabel;
    Panel5: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    DBtxtID_ProvinciaCentroLaboral: TDBText;
    lblCantidadHabitaciones: TLabel;
    DBAdvGlowNavigatorHabitacionesExistentes: TDBAdvGlowNavigator;
    lblCantidadCamas: TLabel;
    cmbxFiltroXPiso: TAdvOfficeSelector;
    cmbxFiltroXTipoLecho: TAdvOfficeSelector;
    cmbxMotivoHospedaje: TAdvOfficeSelector;
    cmbxModalidad: TAdvOfficeSelector;
    cmbxLugarConsumo: TAdvOfficeSelector;
    dtpFechaInicioActividad: TAdvSmoothDatePicker;
    dtpFechaFinalActividad: TAdvSmoothDatePicker;
    ImageListPaises: TImageList;
    lblIncidencias: TLabel;
    MemoIncidencias: TMemo;

    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
   


    procedure cmbxPaisDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure CentrarForma(var m: TWMWINDOWPOSCHANGED); message
    WM_WINDOWPOSCHANGING;

    procedure lblbtnCancelarClick(Sender: TObject);
    procedure lblbtnAceptarClick(Sender: TObject);
    procedure SoloCaracteresKeyPress(Sender: TObject; var Key: Char);
    procedure Solo3NumerosKeyPress(Sender: TObject; var Key: Char);
    procedure lblbtnLimpiar1Click(Sender: TObject);
    procedure cmbxPaisChange(Sender: TObject);
    procedure DBlucmbxProvinciaHuespedClick(Sender: TObject);
    procedure lblbtnAsignarCamaClick(Sender: TObject);
    procedure DBGridHabitacionesConVacantesCellClick(Column: TColumn);
    procedure DBGridHabitacionesConVacantesMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure lblbtnAnularAsignacionClick(Sender: TObject);
    procedure PageDatosShow(Sender: TObject);
    procedure PageLaboralesShow(Sender: TObject);
    procedure PageDetallesShow(Sender: TObject);
    procedure DBlucmbxProvinciaCentroLaboralClick(Sender: TObject);
    procedure cmbxMotivoHospedajeChange(Sender: TObject);
    procedure cmbxFiltroXPisoChange(Sender: TObject);
    procedure cmbxFiltroXTipoLechoChange(Sender: TObject);
    procedure DBAdvGlowNavigatorHabitacionesExistentesClick(
      Sender: TObject; Button: TAdvNavigateBtn);

    //Validaciones de pulsado de teclas
    procedure SoloNumerosSinEspaciosKeyPress(Sender: TObject; var Key: Char);  //Cantidades numericas enteras
    procedure SoloNumerosTelefonicosYExtensionKeyPress(Sender: TObject; var Key: Char); //Numeros telefonicos con su extension (ejemplo: 643-8782, Ext. 122)

    procedure SoloLetrasYNumerosSinPuntuacionNiEspaciosKeyPress(Sender: TObject; var Key: Char); //IDs cubanos (números) y extranjeros (letras y números)
    procedure SoloLetrasYNumerosConPuntuacionYEspaciosKeyPress(Sender: TObject; var Key: Char); //Nombre de Instituciones, que pueden incluir números
    procedure SoloCorreosElectronicosKeyPress(Sender: TObject; var Key: Char); //IDs cubanos (números) y extranjeros (letras y números)

    procedure SoloLetrasConEspaciosYPuntuacionKeyPress(Sender: TObject; var Key: Char); //Para nombres, apellidos, etc.
    procedure SoloLetrasSinEspaciosNiTildesKeyPress(Sender: TObject; var Key: Char); //Para usuarios      

  private
    { Private declarations }
  public
    { Public declarations }
    FID_Cama: Integer;
    procedure RellenarHuespedTemporal;
    procedure BorrarComponentes;

    procedure ActualizarCapacidadesParaRegistro;
    procedure ActualizarSoloLechosParaRegistro;

    function SeAsignoUnaCama: Boolean;
    function SeTeclearonLosValoresNecesarios: Boolean;
  end;

var
  frmNuevoRegistro: TfrmNuevoRegistro;

implementation

uses StrUtils;
var
    HostalWare: TGestionCursistasHospedados;
    TempHuesped: THuesped;
    TempHabitacion: THabitacion;
    TempCama: TCama;
{$R *.dfm}



procedure TfrmNuevoRegistro.btnCancelarClick(Sender: TObject);
begin
  //Cierro la forma
  frmNuevoRegistro.Close;
end;



procedure TfrmNuevoRegistro.FormShow(Sender: TObject);
var
  hMenuHandle : HMENU;
  ID_ProvinciaHuesped, ID_ProvinciaCentroLaboral: Integer;
  ID_Habitacion: Integer;
begin
  //Mando a reiniciar los componentes (limpio cambios anteriores)
  lblbtnLimpiar1.Click;

  //Pongo el FID_Cama en cero
  FID_Cama:= 0;

  //En dependencia de si hubo asignación de cama o no
  if (FID_Cama = 0)
    then
      begin //No hubo asignación
        lblbtnAsignarCama.Enabled:= True;
        lblbtnAnularAsignacion.Enabled:= False;
      end
        else
          begin //Hubo asignación
            lblbtnAsignarCama.Enabled:= False;
            lblbtnAnularAsignacion.Enabled:= True;
          end;  
  
  //Aquí deshabilito el botón de Cerrar de la forma
  hMenuHandle := GetSystemMenu(frmNuevoRegistro.Handle, FALSE);

  if (hMenuHandle <> 0)
    then
      begin
        DeleteMenu(hMenuHandle, SC_CLOSE, MF_BYCOMMAND);
      end;

  //Activo la primera pestaña
  OfficePagerNuevoRegistro.ActivePageIndex:= 0;

  //Pongo el focus en el Edit de Nombre
  edtNombre.SetFocus;

  //Inicializo los componentes
  cmbxPais.ItemIndex:= 54;

            //Habilito los componentes de datos necesarios
            lblTituloActividad.Enabled:= True;
            edtTituloActividad.Enabled:= True;

            lblNombreCoordinadorActividad.Enabled:= True;
            edtNombreCoordinadorActividad.Enabled:= True;

            lblTelefonoActividad.Enabled:= True;
            edtTelefonoActividad.Enabled:= True;

            lblModalidad.Enabled:= True;
            cmbxModalidad.Enabled:= True;

            lblEmailActividad.Enabled:= True;
            edtEmailActividad.Enabled:= True;

            lblNombreInstitucionActividad.Enabled:= True;
            edtNombreInstitucionActividad.Enabled:= True;

            lblFechaInicioCurso.Enabled:= True;
            dtpFechaInicioActividad.Enabled:= True;

            lblFechaFinalCurso.Enabled:= True;
            dtpFechaFinalActividad.Enabled:= True;

            lblDireccionActividad.Enabled:= True;
            MemoDireccionActividad.Enabled:= True;

            //Habilito el DBLookUpComboBox de provincia (Centro Laboral)
            DBlucmbxProvinciaCentroLaboral.Enabled:= True;

            //Habilito el DBLookUpComboBox de municipio (Centro Laboral)
            if (DBlucmbxProvinciaCentroLaboral.Text <> '')
              then
                begin
                  DBlucmbxMunicipioCentroLaboral.Enabled:= True;
                end;

            //Habilito el nombre y direccion del centro laboral
            edtNombreCentroLaboral.Enabled:= True;
            MemoDireccionCentroLaboral.Enabled:= True;





  //Mando a actualizar las Capacidades para Registro
  ActualizarCapacidadesParaRegistro;

  //Mando a mostrar las provincias en caso de que se seleccione a Cuba
  if (cmbxPais.Text = 'Cuba')
    then //Pais = Cuba
      begin
        //Escondo los edits de Provincia y Municipio (Datos Personales y Laborales)
        edtProvinciaHuesped.Visible:= False;
        edtMunicipioHuesped.Visible:= False;
        edtProvinciaCentroLaboral.Visible:= False;
        edtMunicipioCentroLaboral.Visible:= False;

        //Habilito los DBComboBox de Provincias y Municipios de Cuba
        //DBLookupComboBoxProvincias.Enabled:= True;
        //DBLookupComboBoxMunicipios.Enabled:= True;

        //Muestro los DBLookUpComboBox de Provincias y Municipios de Cuba
        DBlucmbxProvinciaHuesped.Visible:= True;
        DBlucmbxMunicipioHuesped.Visible:= True;
        DBlucmbxProvinciaCentroLaboral.Visible:= True;
        DBlucmbxMunicipioCentroLaboral.Visible:= True;

        //Le especifico el DataSource a los componentes necesarios
        //DBComboBoxProvincias.DataField:= 'Nombre_Provincia';
        //DBComboBoxProvincias.DataSource:= DataModuleRegistroDeHuespedes.DataSourceMostrarProvinciasCubanas;
        //DBTextID_Provincia.DataField:= 'ID_Provincia';
        //DBTextID_Provincia.DataSource:= DataModuleRegistroDeHuespedes.DataSourceMostrarProvinciasCubanas;

        //Reinicio los DBLookUpComboBox de Provincias y Municipios de Cuba
        DBlucmbxProvinciaHuesped.KeyValue:= Null;
        DBlucmbxMunicipioHuesped.KeyValue:= Null;
        DBlucmbxProvinciaCentroLaboral.KeyValue:= Null;
        DBlucmbxMunicipioCentroLaboral.KeyValue:= Null;

        //Invoco al evento OnClick de DBLookUpComboBox de Provincias de Cuba (esto inhabilita los de municipios)
        DBlucmbxProvinciaHuesped.OnClick(Self);
        DBlucmbxProvinciaCentroLaboral.OnClick(Self);        


        //Realizo la busqueda de las provincias (Datos Personales y Laborales)
        HostalWare.MostrarProvinciasCubanas;
        HostalWare.MostrarProvinciasCubanasParaDatosLaborales;

        //Recojo el ID de la provincia seleccionada (Datos Personales y Laborales)
        ID_ProvinciaHuesped:= StrToInt(DBtxtID_Provincia.Field.Text);
        ID_ProvinciaCentroLaboral:= StrToInt(DBtxtID_ProvinciaCentroLaboral.Field.Text);
        
        //Le especifico el DataSource a los componentes necesarios
        //DBComboBoxMunicipios.DataField:= 'Nombre_Municipio';
        //DBComboBoxMunicipios.DataSource:= DataModuleRegistroDeHuespedes.DataSourceMostrarMunicipiosPorID_Provincia;

        //Realizo la busqueda de los municipios de la provincia seleccionada  (Datos Personales y Laborales)
        HostalWare.MostrarMunicipiosPorID_Provincia(ID_ProvinciaHuesped);
        HostalWare.MostrarMunicipiosParaDatosLaboralesPorID_Provincia(ID_ProvinciaCentroLaboral);
      end
        else //Otro pais
          begin
            //Muestro los edits de Provincia y Municipio (Datos Personales y Laborales)
            edtProvinciaHuesped.Visible:= True;
            edtMunicipioHuesped.Visible:= True;
            edtProvinciaCentroLaboral.Visible:= True;
            edtMunicipioCentroLaboral.Visible:= True;

            //Deshabilito los DBComboBox de Provincias y Municipios de Cuba
            //DBLookupComboBoxProvincias.Enabled:= False;
            //DBLookupComboBoxMunicipios.Enabled:= False;

            //Escondo los DBLookUpComboBox de Provincias y Municipios de Cuba (Datos Personales y Laborales)
            DBlucmbxProvinciaHuesped.Visible:= False;
            DBlucmbxMunicipioHuesped.Visible:= False;
            DBlucmbxProvinciaCentroLaboral.Visible:= False;
            DBlucmbxMunicipioCentroLaboral.Visible:= False;
          end;
{
  //Verifico que haya algo insertado en los ListBox, para entonces poder borrar
  if (ListBoxTipoCama.Count<> 0)
    then
      begin //hay algo insertado ya en los ListBox
        //Habilito el boton de Quitar
        lblbtnEliminarCama.Enabled:= True;
      end
        else //No hay nada insertado
          begin
            //Deshabilito el boton de Quitar
            lblbtnEliminarCama.Enabled:= False;
          end;  
}
end;



procedure TfrmNuevoRegistro.cmbxPaisDrawItem(Control: TWinControl; Index: Integer; Rect: TRect;
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
 
  with (Control as TComboBox) do 
  begin
    Canvas.FillRect(Rect);
    Canvas.TextOut(Rect.Left+ImageListPaises.Height + 2, Rect.Top, Items[Index]);
    Canvas.Draw(Rect.Left, Rect.Top, bTemp);
  end;
  bTemp.Free;
end;



procedure TfrmNuevoRegistro.CentrarForma(var m : TWMWINDOWPOSCHANGED);
begin
  m.windowpos.x := (Screen.Width - Width) div 2;   {Left/Posicion X}
  m.windowpos.y := (Screen.Height - Height) div 2; {Left/Posicion X}
end;



procedure TfrmNuevoRegistro.lblbtnCancelarClick(Sender: TObject);
begin
  //Cierro la forma
  frmNuevoRegistro.Close;
end;



procedure TfrmNuevoRegistro.lblbtnAceptarClick(Sender: TObject);
var
  i, ID_Habitacion: Integer;
  NumeroIncompleto: AnsiString;
begin

  //Primero verifico que aun exista conexión con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Luego verifico que se haya asignado una cama los valores necesarios
        if (SeAsignoUnaCama = True)
          then
            begin //Se asignó una cama al futuro hospedado
              //Luego verifico que se hayan tecleado los valores necesarios
              if (SeTeclearonLosValoresNecesarios = True)
                then
                  begin
                    //Luego verifico que ya no esté registrado el huesped
                    if (HostalWare.ExisteHuespedPorCarneIdentidad(edtCarneIdentidad.Text) = False)
                      then
                        begin //No está registrado, por lo que se puede registrar
                          //Relleno el huesped temporal
                          RellenarHuespedTemporal;

                          //Introduzco los datos del huesped en la BD
                          HostalWare.InsertarHuesped(TempHuesped);

                          //Ocupo la cama que se le dio al recién hospedado
                          HostalWare.OcuparCamaPorID_Cama(TempHuesped.ID_Cama);

                          //Inserto la Traza
                          HostalWare.GuardarTrazaDelSistema('Registró el huesped ' + TempHuesped.Nombre + ' ' + TempHuesped.Apellidos + ', con Carné de Identidad ' + TempHuesped.CarneIdentidad + ', en la habitación ' + IntToStr(DBGridHabitacionesConVacantes.SelectedField.Value));

                          //Actualizo todas las trazas
                          HostalWare.MostrarTodasLasTrazas;

                          //Actualizo el DBGrid (forma principal) de los huespedes
                          HostalWare.MostrarHuespedesTotales;

                          //Destruyo el huesped temporal
                          TempHuesped.Destroy;

                         //Cierro la forma
                         frmNuevoRegistro.Close;
                        end
                          else
                            begin //Ya está registrado
                              MessageDlg('El huésped ya se encuentra registrado.' + #13 + 'No se puede volver a registrar.', mtError, [mbOk], 0);
                            end;
                  end
                    else //No se teclearon los valores necesarios
                      begin
                        MessageDlg('Antes debe llenar los datos que faltan.', mtError, [mbOk], 0);
                      end;
           end
              else //No se asignó una cama aun
                begin
                  MessageDlg('Antes debe asignarle una cama al futuro hospedado.', mtError, [mbOk], 0);
                end; 
      end
        else  //No existe conexión con la BD
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);

            //Cierro la forma
            frmNuevoRegistro.Close;
          end;
end;



procedure TfrmNuevoRegistro.RellenarHuespedTemporal;
begin
  //Creo el Huesped Temporal
  TempHuesped:= THuesped.Create;

  //Relleno sus campos personales
  TempHuesped.Nombre:= edtNombre.Text;
  TempHuesped.CarneIdentidad:= edtCarneIdentidad.Text;
  TempHuesped.Apellidos:= edtApellidos.Text;
  TempHuesped.TelefonoParticular:= edtTelefonoParticular.Text;
  TempHuesped.Pais:= cmbxPais.Text;
  TempHuesped.EmailHuesped:= edtEmailHuesped.Text;

  //En dependencia de si es cubano o no
  if (cmbxPais.Text = 'Cuba')
    then
      begin
        TempHuesped.ProvinciaHuesped:= DBlucmbxProvinciaHuesped.Text;
        TempHuesped.MunicipioHuesped:= DBlucmbxMunicipioHuesped.Text;
      end
        else
          begin
            TempHuesped.ProvinciaHuesped:= edtProvinciaHuesped.Text;
            TempHuesped.MunicipioHuesped:= edtMunicipioHuesped.Text;
          end;
          

  
  TempHuesped.DireccionParticular:= MemoDireccionParticular.Text;

  //Relleno sus campos laborales
  TempHuesped.NombreCentroLaboral:= edtNombreCentroLaboral.Text;
  TempHuesped.EmailCentroLaboral:= edtEmailCentroLaboral.Text;
  TempHuesped.TelefonoCentroLaboral:= edtTelefonoCentroLaboral.Text;
  
  //En dependencia de si es cubano o no
  if (cmbxPais.Text = 'Cuba')
    then
      begin
        TempHuesped.ProvinciaCentroLaboral:= DBlucmbxProvinciaCentroLaboral.Text;
        TempHuesped.MunicipioCentroLaboral:= DBlucmbxMunicipioCentroLaboral.Text;
      end
        else
          begin
            TempHuesped.ProvinciaCentroLaboral:= edtProvinciaCentroLaboral.Text;
            TempHuesped.MunicipioCentroLaboral:= edtMunicipioCentroLaboral.Text;
          end;

  
  TempHuesped.DireccionCentroLaboral:= MemoDireccionCentroLaboral.Text;

  //Relleno sus campos detalles
  TempHuesped.MotivoHospedaje:= cmbxMotivoHospedaje.Text;
  TempHuesped.Modalidad:= cmbxModalidad.Text;

  TempHuesped.FechaInicioActividad:= DateToStr(dtpFechaInicioActividad.Date);
  TempHuesped.FechaFinalActividad:= DateToStr(dtpFechaFinalActividad.Date);

  TempHuesped.TituloActividad:= edtTituloActividad.Text;
  TempHuesped.NombreInstitucionActividad:= edtNombreInstitucionActividad.Text;
  TempHuesped.EmailActividad:= edtEmailActividad.Text;
  TempHuesped.TelefonoActividad:= edtTelefonoActividad.Text;
  TempHuesped.NombreCoordinadorActividad:= edtNombreCoordinadorActividad.Text;
  TempHuesped.DireccionActividad:= MemoDireccionActividad.Text;

  
  //Relleno sus campos asignacion
  TempHuesped.ID_Cama:= StrToInt(DBtxtID_Cama.Field.Text);

  TempHuesped.FechaInicioHospedaje:= StrToDateTime(HostalWare.ObtenerFechaDelSistema + ' ' + HostalWare.ObtenerHoraDelSistema);
  TempHuesped.FechaFinalHospedaje:= dtpFechaFinalHospedaje.DateTime;
  
  //TempHuesped.HoraInicioHospedaje:= HostalWare.ObtenerHoraDelSistema;
  //TempHuesped.HoraFinalHospedaje:=  TimeToStr(dtpFechaFinalHospedaje.Time);

  if (chkbxDesayuno.Checked = True)
    then
      begin
        TempHuesped.DerechoADesayuno:= 'Sí';
      end
        else
          begin
            TempHuesped.DerechoADesayuno:= 'No';
          end;

  if (chkbxAlmuerzo.Checked = True)
    then
      begin
        TempHuesped.DerechoAAlmuerzo:= 'Sí';
      end
        else
          begin
            TempHuesped.DerechoAAlmuerzo:= 'No';
          end;

  if (chkbxComida.Checked = True)
    then
      begin
        TempHuesped.DerechoAComida:= 'Sí';
      end
        else
          begin
            TempHuesped.DerechoAComida:= 'No';
          end;

  TempHuesped.LugarConsumo:= cmbxLugarConsumo.Text;

  //Extras
  TempHuesped.NombreCompletoDeRegistrador:= HostalWare.NombreCompletoDelLoggeado;
  TempHuesped.Incidencias:= MemoIncidencias.Text;
end;



procedure TfrmNuevoRegistro.SoloCaracteresKeyPress(Sender: TObject; var Key: Char);
begin
  //Valido para solo caracteres
  if not (Key in['a'..'z', 'A'..'Z', '0'..'9', #8, #13]) then Abort;
end;



procedure TfrmNuevoRegistro.Solo3NumerosKeyPress(Sender: TObject; var Key: Char);
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


  
procedure TfrmNuevoRegistro.lblbtnLimpiar1Click(Sender: TObject);
begin
  //Borro e inicializo los componentes
  BorrarComponentes;
end;



procedure TfrmNuevoRegistro.BorrarComponentes;
begin
  //Componentes de Datos Personales
  edtNombre.Clear;
  edtCarneIdentidad.Clear;
  edtApellidos.Clear;
  edtTelefonoParticular.Clear;
  cmbxPais.ItemIndex:= 54; //Cuba de 1er país del listado
  edtEmailHuesped.Clear;
  edtProvinciaHuesped.Clear;
  edtMunicipioHuesped.Clear;
  //DBlucmbxProvinciaHuesped.Refresh;
  //DBlucmbxMunicipioHuesped.Refresh;
  MemoDireccionParticular.Clear;

  //Componentes de Datos Laborales
  edtNombreCentroLaboral.Clear;
  edtEmailCentroLaboral.Clear;
  edtTelefonoCentroLaboral.Clear;
  edtProvinciaCentroLaboral.Clear;
  edtMunicipioCentroLaboral.Clear;
  //DBlucmbxProvinciaCentroLaboral.Refresh;
  //DBlucmbxMunicipioCentroLaboral.Refresh;
  MemoDireccionCentroLaboral.Clear;

  //Componentes de Detalles
  cmbxMotivoHospedaje.ItemIndex:= 0;  //'Curso' de 1ro del listado
  cmbxModalidad.ItemIndex:= 0;  //'Presencial' de 1ro del listado
  dtpFechaInicioActividad.Refresh;
  dtpFechaFinalActividad.Refresh;
  edtTituloActividad.Clear;
  edtNombreInstitucionActividad.Clear;
  edtEmailActividad.Clear;
  edtTelefonoActividad.Clear;
  edtNombreCoordinadorActividad.Clear;
  MemoDireccionActividad.Clear;

  //Componentes de Asignación
  //cmbxFiltroXPiso.ItemIndex:= 0; //'TODOS' de 1ro del listado
  //cmbxFiltroXTipoLecho.ItemIndex:= 0; //'TODOS' de 1ro del listado
  chkbxDesayuno.Checked:= False;
  chkbxAlmuerzo.Checked:= False;
  chkbxComida.Checked:= False;
  dtpFechaFinalHospedaje.Refresh;
  cmbxLugarConsumo.ItemIndex:= 0; //'Comedor Obrero' de 1ro del listado
  MemoIncidencias.Clear;
end;



procedure TfrmNuevoRegistro.cmbxPaisChange(Sender: TObject);
var
  ID_ProvinciaHuesped, ID_ProvinciaCentroLaboral: Integer;
begin
  //Mando a mostrar las provincias en caso de que se seleccione a Cuba
  if (cmbxPais.Text = 'Cuba')
    then //Pais = Cuba
      begin
        //Escondo los edits de Provincia y Municipio (Datos Personales y Laborales)
        edtProvinciaHuesped.Visible:= False;
        edtMunicipioHuesped.Visible:= False;
        edtProvinciaCentroLaboral.Visible:= False;
        edtMunicipioCentroLaboral.Visible:= False;
        
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
            edtProvinciaHuesped.Visible:= True;
            edtMunicipioHuesped.Visible:= True;
            edtProvinciaCentroLaboral.Visible:= True;
            edtMunicipioCentroLaboral.Visible:= True;

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

procedure TfrmNuevoRegistro.DBlucmbxProvinciaHuespedClick(Sender: TObject);
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



function TfrmNuevoRegistro.SeTeclearonLosValoresNecesarios: Boolean;
begin
  //En dependencia del motivo de hospedaje
  if (   (cmbxMotivoHospedaje.Text = 'Trabajador Interno') or (cmbxMotivoHospedaje.Text = 'Interés del Centro')   )
    then
      begin //Se inhabilitan muchos componentes, que no hay que llenar
        //En dependencia del Pais de residencia

        if (cmbxPais.Text = 'Cuba')
          then
            begin
              //Componentes de Datos Personales
              if (   (edtNombre.Text <> '') and (edtCarneIdentidad.Text <> '') and (edtApellidos.Text <> '')  and (DBlucmbxProvinciaHuesped.KeyField <> '') and (DBlucmbxMunicipioHuesped.KeyField <> '') and (MemoDireccionParticular.Text <> '')   )
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
                  if (   (edtNombre.Text <> '')
                  and (edtCarneIdentidad.Text <> '')
                  and (edtApellidos.Text <> '')
                  //edtTelefonoParticular.Clear;
                  //cmbxPais.ItemIndex:= 54; //Cuba de 1er país del listado
                  //edtEmailHuesped.Clear;
                  and (edtProvinciaHuesped.Text <> '')
                  and (edtMunicipioHuesped.Text <> '')
                  //and (DBlucmbxProvinciaHuesped.Field.Text <> '')
                  //and (DBlucmbxMunicipioHuesped.Field.Text <> '')
                  and (MemoDireccionParticular.Text <> '')   )

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
            if (cmbxPais.Text = 'Cuba')
              then
                begin
                  //Componentes de Datos Personales
                  if (   (edtNombre.Text <> '')
                  and (edtCarneIdentidad.Text <> '')
                  and (edtApellidos.Text <> '')
                  //edtTelefonoParticular.Clear;
                  //cmbxPais.ItemIndex:= 54; //Cuba de 1er país del listado
                  //edtEmailHuesped.Clear;
                  //edtProvinciaHuesped.Clear;
                  //edtMunicipioHuesped.Clear;
                  and (DBlucmbxProvinciaHuesped.KeyField <> '')
                  and (DBlucmbxMunicipioHuesped.KeyField <> '')
                  and (MemoDireccionParticular.Text <> '')

                  //Componentes de Datos Laborales
                  and (edtNombreCentroLaboral.Text <> '')
                  //edtEmailCentroLaboral.Clear;
                  //edtTelefonoCentroLaboral.Clear;
                  //edtProvinciaCentroLaboral.Clear;
                  //edtMunicipioCentroLaboral.Clear;
                  and (DBlucmbxProvinciaCentroLaboral.KeyField <> '')
                  and (DBlucmbxMunicipioCentroLaboral.KeyField <> '')
                  and (MemoDireccionCentroLaboral.Text <> '')

                  //Componentes de Detalles
                  //cmbxMotivoHospedaje.ItemIndex:= 0;  //'Curso' de 1ro del listado
                  //cmbxModalidad.ItemIndex:= 0;  //'Presencial' de 1ro del listado

                  //dtpFechaInicioActividad.Refresh;
                  //dtpFechaFinalActividad.Refresh;

                  and (edtTituloActividad.Text <> '')
                  and (edtNombreInstitucionActividad.Text <> '')
                  //edtEmailActividad.Clear;
                  //edtTelefonoActividad.Clear;
                  and (edtNombreCoordinadorActividad.Text <> '')
                  and (MemoDireccionActividad.Text <> '')   )

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
                    if (   (edtNombre.Text <> '')
                    and (edtCarneIdentidad.Text <> '')
                    and (edtApellidos.Text <> '')
                    //edtTelefonoParticular.Clear;
                    //cmbxPais.ItemIndex:= 54; //Cuba de 1er país del listado
                    //edtEmailHuesped.Clear;
                    and (edtProvinciaHuesped.Text <> '')
                    and (edtMunicipioHuesped.Text <> '')
                    //and (DBlucmbxProvinciaHuesped.Field.Text <> '')
                    //and (DBlucmbxMunicipioHuesped.Field.Text <> '')
                    and (MemoDireccionParticular.Text <> '')

                    //Componentes de Datos Laborales
                    and (edtNombreCentroLaboral.Text <> '')
                    //edtEmailCentroLaboral.Clear;
                    //edtTelefonoCentroLaboral.Clear;
                    and (edtProvinciaCentroLaboral.Text <> '')
                    and (edtMunicipioCentroLaboral.Text <> '')
                    //and (DBlucmbxProvinciaCentroLaboral.Field.Text <> '')
                    //and (DBlucmbxMunicipioCentroLaboral.Field.Text <> '')
                    and (MemoDireccionCentroLaboral.Text <> '')

                    //Componentes de Detalles
                    //cmbxMotivoHospedaje.ItemIndex:= 0;  //'Curso' de 1ro del listado
                    //cmbxModalidad.ItemIndex:= 0;  //'Presencial' de 1ro del listado

                    //dtpFechaInicioActividad.Refresh;
                    //dtpFechaFinalActividad.Refresh;

                    and (edtTituloActividad.Text <> '')
                    and (edtNombreInstitucionActividad.Text <> '')
                    //edtEmailActividad.Clear;
                    //edtTelefonoActividad.Clear;
                    and (edtNombreCoordinadorActividad.Text <> '')
                    and (MemoDireccionActividad.Text <> '')   )

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



function TfrmNuevoRegistro.SeAsignoUnaCama: Boolean;
begin
  //Verifico si se asignó una cama al hospedado
  if (FID_Cama <> 0)
    then
      begin
        Result:= True;
      end
        else
          begin
            Result:= False;
          end;
end;



procedure TfrmNuevoRegistro.lblbtnAsignarCamaClick(Sender: TObject);
begin
  //Primero verifico que aun exista conexión con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Asigno el ID_Cama a la variable global
        FID_Cama:= StrToInt(DBtxtID_Cama.Field.Text);

        //En dependencia de si hubo asignación de cama o no
        if (FID_Cama = 0)
          then
            begin //No hubo asignación
              lblbtnAsignarCama.Enabled:= True;
              lblbtnAnularAsignacion.Enabled:= False;
            end
              else
                begin //Hubo asignación
                  lblbtnAsignarCama.Enabled:= False;
                  lblbtnAnularAsignacion.Enabled:= True;
                end;
      end
        else  //No existe conexión con la BD
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);

            //Cierro la forma
            frmNuevoRegistro.Close;
          end;
end;



procedure TfrmNuevoRegistro.DBGridHabitacionesConVacantesCellClick(Column: TColumn);
var
  ID_Habitacion: Integer;
begin
  //Recojo el ID de la habitacion con vacantes seleccionada
  ID_Habitacion:= StrToInt(DBtxtID_Habitacion.Field.Text);

  //Muetsro las camas libres para registro, para la habitacion seleccionada
  HostalWare.MostrarCamasLibresPorID_HabitacionParaRegistro(ID_Habitacion);
end;



procedure TfrmNuevoRegistro.DBGridHabitacionesConVacantesMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  //Mando a actualizar los lechos para Registro (en general)
  ActualizarSoloLechosParaRegistro;
end;



procedure TfrmNuevoRegistro.lblbtnAnularAsignacionClick(Sender: TObject);
begin
  //Le otorgo cero a la variable global
  FID_Cama:= 0;

  //En dependencia de si hubo asignación de cama o no
  if (FID_Cama = 0)
    then
      begin //No hubo asignación
        lblbtnAsignarCama.Enabled:= True;
        lblbtnAnularAsignacion.Enabled:= False;
      end
        else
          begin //Hubo asignación
            lblbtnAsignarCama.Enabled:= False;
            lblbtnAnularAsignacion.Enabled:= True;
          end;  
end;



procedure TfrmNuevoRegistro.PageDatosShow(Sender: TObject);
begin
  //Dispongo el Focus en dependencia de lo que este lleno o vacio, y por orden de prioridad
  if (edtNombre.Text = '')
    then
      begin
        //Pongo el focus en el Edit de Nombre
        edtNombre.SetFocus;
      end
        else
          begin
            if (edtCarneIdentidad.Text = '')
              then
                begin
                  //Pongo el focus en el Edit de Carne de Identidad
                  edtCarneIdentidad.SetFocus;
                end
                  else
                    begin
                      if (edtApellidos.Text = '')
                        then
                          begin
                            edtApellidos.SetFocus;
                          end
                            else
                              begin
                                if (edtTelefonoParticular.Text = '')
                                  then
                                    begin
                                      edtTelefonoParticular.SetFocus;
                                    end
                                      else
                                        begin
                                          if (edtEmailHuesped.Text = '')
                                            then
                                              begin
                                                edtEmailHuesped.SetFocus;
                                              end
                                                else
                                                  begin
                                                    if (MemoDireccionParticular.Text = '')
                                                      then
                                                        begin
                                                          MemoDireccionParticular.SetFocus;
                                                        end;
                                                  end;
                                        end;
                              end;
                    end;
          end;
end;



procedure TfrmNuevoRegistro.PageLaboralesShow(Sender: TObject);
begin
  //Dispongo el Focus en dependencia de lo que este lleno o vacio, y por orden de prioridad
  if (edtNombreCentroLaboral.Text = '')
    then
      begin
        //Pongo el focus en el Edit de Institucion Laboral
        edtNombreCentroLaboral.SetFocus;
      end
        else
          begin
            if (edtEmailCentroLaboral.Text = '')
              then
                begin
                  edtEmailCentroLaboral.SetFocus;
                end
                  else
                    begin
                      if (edtTelefonoCentroLaboral.Text = '')
                        then
                          begin
                            edtTelefonoCentroLaboral.SetFocus;
                          end
                            else
                              begin
                                if (MemoDireccionCentroLaboral.Text = '')
                                  then
                                    begin
                                      MemoDireccionCentroLaboral.SetFocus;
                                    end;
                              end;
                    end;
          end;
end;



procedure TfrmNuevoRegistro.PageDetallesShow(Sender: TObject);
begin
  //Dispongo el Focus en dependencia de lo que este lleno o vacio, y por orden de prioridad
  if (   (edtTituloActividad.Text = '') and (edtTituloActividad.Enabled = True)   )
    then
      begin
        //Pongo el focus en el Edit del Titulo de la Actividad
        edtTituloActividad.SetFocus;
      end
        else
          begin
            if (   (edtNombreInstitucionActividad.Text = '') and (edtNombreInstitucionActividad.Enabled = True)   )
              then
                begin
                  edtNombreInstitucionActividad.SetFocus;
                end
                  else
                    begin
                      if (   (edtEmailActividad.Text = '') and (edtEmailActividad.Enabled = True)   )
                        then
                          begin
                            edtEmailActividad.SetFocus;
                          end
                            else
                              begin
                                if (   (edtTelefonoActividad.Text = '') and (edtTelefonoActividad.Enabled = True)   )
                                  then
                                    begin
                                      edtTelefonoActividad.SetFocus;
                                    end
                                      else
                                        begin
                                          if (   (edtNombreCoordinadorActividad.Text = '') and (edtNombreCoordinadorActividad.Enabled = True)   )
                                            then
                                              begin
                                                edtNombreCoordinadorActividad.SetFocus;
                                              end
                                                else
                                                  begin
                                                    if (   (MemoDireccionActividad.Text = '') and (MemoDireccionActividad.Enabled = True)   )
                                                      then
                                                        begin
                                                          MemoDireccionActividad.SetFocus;
                                                        end;
                                                  end;
                                        end;
                              end;
                    end;
          end;
end;



procedure TfrmNuevoRegistro.DBlucmbxProvinciaCentroLaboralClick(Sender: TObject);
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



procedure TfrmNuevoRegistro.cmbxMotivoHospedajeChange(Sender: TObject);
begin
  //Valido los Componentes que se llenarán
  if (cmbxMotivoHospedaje.Text = 'Trabajador Interno')
    then
      begin //Es un Trabajador Interno
        //Deshabilito los componentes de datos innecesarios
        lblTituloActividad.Enabled:= False;
        edtTituloActividad.Enabled:= False;

        lblNombreCoordinadorActividad.Enabled:= False;
        edtNombreCoordinadorActividad.Enabled:= False;

        lblTelefonoActividad.Enabled:= False;
        edtTelefonoActividad.Enabled:= False;

        lblModalidad.Enabled:= False;
        cmbxModalidad.Enabled:= False;

        lblEmailActividad.Enabled:= False;
        edtEmailActividad.Enabled:= False;

        lblNombreInstitucionActividad.Enabled:= False;
        edtNombreInstitucionActividad.Enabled:= False;

        lblFechaInicioCurso.Enabled:= False;
        dtpFechaInicioActividad.Enabled:= False;

        lblFechaFinalCurso.Enabled:= False;
        dtpFechaFinalActividad.Enabled:= False;

        lblDireccionActividad.Enabled:= False;
        MemoDireccionActividad.Enabled:= False;

        //Selecciono la provincia CH para el Centro Laboral
        DBlucmbxProvinciaCentroLaboral.KeyValue:= '4';
        DBlucmbxProvinciaCentroLaboral.OnClick(self);  //Ya esto habilita el DBLookUpComboBox de municipios Laborales

        //Selecciono el municipio Boyeros para el Centro Laboral
        DBlucmbxMunicipioCentroLaboral.KeyValue:= 45;

        //Deshabilito los DBLookUpComboBox de provincia y Municipio (para que no los cambien)
        DBlucmbxProvinciaCentroLaboral.Enabled:= False;
        DBlucmbxMunicipioCentroLaboral.Enabled:= False;

        //Establezco el nombre FIJO del Centro Laboral
        edtNombreCentroLaboral.Text:= 'Centro Nacional de Perfeccionamiento Técnico de la Salud - CENAPET';

        //Inhabilito el edit de Nombre del Centro Laboral (para que no lo alteren)
        edtNombreCentroLaboral.Enabled:= False;

        //Borro lo que había antes en el Memo Direccion Centro laboral
        MemoDireccionCentroLaboral.Clear;

        //Establezco la direccion FIJA del Centro Laboral
        MemoDireccionCentroLaboral.Lines.Add('Calle 100 entre Perla y E, Altahabana.');
        MemoDireccionCentroLaboral.Lines.Add('Municipio Boyeros, La Habana, Cuba.  C.P. 10 800');
        MemoDireccionCentroLaboral.Lines.Add('Teléfonos 643-8782  y  643-8783 (pizarra).  643-7489 (Dirección)');
        MemoDireccionCentroLaboral.Lines.Add('Fax (537) 33-3511. Email: zaida@cenapet.sld.cu');

        //Inhabilito la direccion FIJA del Centro Laboral (para que no lo alteren)
        MemoDireccionCentroLaboral.Enabled:= False;
      end
        else
          begin //Otro motivo de hospedaje
            //Habilito los componentes de datos necesarios
            lblTituloActividad.Enabled:= True;
            edtTituloActividad.Enabled:= True;

            lblNombreCoordinadorActividad.Enabled:= True;
            edtNombreCoordinadorActividad.Enabled:= True;

            lblTelefonoActividad.Enabled:= True;
            edtTelefonoActividad.Enabled:= True;

            lblModalidad.Enabled:= True;
            cmbxModalidad.Enabled:= True;

            lblEmailActividad.Enabled:= True;
            edtEmailActividad.Enabled:= True;

            lblNombreInstitucionActividad.Enabled:= True;
            edtNombreInstitucionActividad.Enabled:= True;

            lblFechaInicioCurso.Enabled:= True;
            dtpFechaInicioActividad.Enabled:= True;

            lblFechaFinalCurso.Enabled:= True;
            dtpFechaFinalActividad.Enabled:= True;

            lblDireccionActividad.Enabled:= True;
            MemoDireccionActividad.Enabled:= True;

            //Habilito el DBLookUpComboBox de provincia (Centro Laboral)
            DBlucmbxProvinciaCentroLaboral.Enabled:= True;

            //Habilito el DBLookUpComboBox de municipio (Centro Laboral)
            if (DBlucmbxProvinciaCentroLaboral.Text <> '')
              then
                begin
                  DBlucmbxMunicipioCentroLaboral.Enabled:= True;
                end;

            //Habilito el nombre y direccion del centro laboral
            edtNombreCentroLaboral.Enabled:= True;
            MemoDireccionCentroLaboral.Enabled:= True;
          end;
end;



procedure TfrmNuevoRegistro.ActualizarCapacidadesParaRegistro;
var
  ID_Habitacion: Integer;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //En dependencia del filtrado por pisos escogido
        if (cmbxFiltroXPiso.Text = 'TODOS')
          then //Todos los pisos juntos
            begin
              //En dependencia del filtrado por tipo de lecho
              if (cmbxFiltroXTipoLecho.Text = 'TODOS')
                then
                  begin
                    //Le cambio el DataSource al DBGrid de habitaciones existentes
                    DBGridHabitacionesConVacantes.DataSource:= DataModuleRegistroDeHuespedes.DataSourceSelecHabitacionesConVacantesTotalesParaRegistro;

                    //Le cambio el DataSource al DBTExt de ID_Habitaciones
                    DBtxtID_Habitacion.DataSource:= DataModuleRegistroDeHuespedes.DataSourceSelecHabitacionesConVacantesTotalesParaRegistro;

                    //Le cambio el DataSource al DBAdvGlowNavigator de las habitaciones existentes
                    DBAdvGlowNavigatorHabitacionesExistentes.DataSource:= DataModuleRegistroDeHuespedes.DataSourceSelecHabitacionesConVacantesTotalesParaRegistro;

                    //Actualizo el DBGrid y el DBText (forma principal) con todas las Habitaciones vacantes
                    HostalWare.MostrarHabitacionesConVacantesTotalesParaRegistro;

                    //Actualizo la cantidad de habitaciones (totales)
                    lblCantidadHabitaciones.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadHabitacionesConVacantesTotalesParaRegistro) + ' habitaciones';

                    //Le cambio el DataSource al DBGrid de Lechos Libres para Registro
                    DBGridCamasLibresExistentes.DataSource:= DataModuleRegistroDeHuespedes.dsSelecLechosLibresPorID_HabitacionParaRegistro;

                    //Actualizo los lechos libres existentes, para la habitacion que esté seleccionada
                    if (HostalWare.CantidadHabitacionesConVacantesTotalesParaRegistro <> 0)
                      then
                        begin
                          //Recojo el ID_Habitacion
                          ID_Habitacion:= StrToInt(DBtxtID_Habitacion.Field.Text);

                          //Muestro todos los lechos libres para registro, para la habitacion seleccionada
                          HostalWare.MostrarLechosLibresPorID_HabitacionParaRegistro(ID_Habitacion);

                          if (HostalWare.CantidadLechosLibresParaRegistro <> 1)
                            then
                              begin
                                //Actualizo la cantidad de lechos para la habitacion seleccionada
                                lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadLechosLibresParaRegistro) + ' Lechos';
                              end
                                else
                                  begin
                                    //Actualizo la cantidad de lechos para la habitacion seleccionada
                                    lblCantidadCamas.Caption:= 'TOTAL = 1 Lecho';
                                  end;
                        end
                          else //No tiene habitaciones
                            begin
                              //Le paso un ID_Habitacion que no existe (me daba explote)
                              ID_Habitacion:= StrToInt('0');

                              //Muestro los lechos para la habitacion seleccionada (no muestra nada realmente)
                              HostalWare.MostrarLechosLibresPorID_HabitacionParaRegistro(ID_Habitacion);

                              //Actualizo la cantidad de camas para la habitacion seleccionada
                              lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadLechosLibresParaRegistro) + ' Lechos';
                            end;
                  end
                    else
                      begin
                        if (cmbxFiltroXTipoLecho.Text = 'Cama')
                          then
                            begin
                              //Le cambio el DataSource al DBGrid de habitaciones existentes
                              DBGridHabitacionesConVacantes.DataSource:= DataModuleRegistroDeHuespedes.dsSelecHabConVacantesTotalesYConCamasParaRegistro;

                              //Le cambio el DataSource al DBTExt de ID_Habitaciones
                              DBtxtID_Habitacion.DataSource:= DataModuleRegistroDeHuespedes.dsSelecHabConVacantesTotalesYConCamasParaRegistro;

                              //Le cambio el DataSource al DBAdvGlowNavigator de las habitaciones existentes
                              DBAdvGlowNavigatorHabitacionesExistentes.DataSource:= DataModuleRegistroDeHuespedes.dsSelecHabConVacantesTotalesYConCamasParaRegistro;

                              //Actualizo el DBGrid y el DBText (forma principal) con todas las Habitaciones vacantes
                              HostalWare.MostrarHabitacionesConVacantesTotalesYConCamasParaRegistro;

                              //Actualizo la cantidad de habitaciones (totales)
                              lblCantidadHabitaciones.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadHabitacionesConVacantesTotalesYConCamasParaRegistro) + ' habitaciones con camas';

                              //Le cambio el DataSource al DBGrid de Camas Libres para Registro
                              DBGridCamasLibresExistentes.DataSource:= DataModuleRegistroDeHuespedes.dsSelecCamasLibresPorID_HabitacionParaRegistro;

                              //Actualizo las camas libres existentes, para la habitacion que esté seleccionada
                              if (HostalWare.CantidadHabitacionesConVacantesTotalesYConCamasParaRegistro <> 0)
                                then
                                  begin
                                    //Recojo el ID_Habitacion
                                    ID_Habitacion:= StrToInt(DBtxtID_Habitacion.Field.Text);

                                    //Muestro todos las camas libres para registro, para la habitacion seleccionada
                                    HostalWare.MostrarCamasLibresPorID_HabitacionParaRegistro(ID_Habitacion);

                                    if (HostalWare.CantidadCamasLibresParaRegistro <> 1)
                                      then
                                        begin
                                          //Actualizo la cantidad de camas para la habitacion seleccionada
                                          lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadCamasLibresParaRegistro) + ' Camas';
                                        end
                                          else
                                            begin
                                              //Actualizo la cantidad de camas para la habitacion seleccionada
                                              lblCantidadCamas.Caption:= 'TOTAL = 1 Cama';
                                            end;
                                  end
                                    else //No tiene habitaciones
                                      begin
                                        //Le paso un ID_Habitacion que no existe (me daba explote)
                                        ID_Habitacion:= StrToInt('0');

                                        //Muestro los lechos para la habitacion seleccionada (no muestra nada realmente)
                                        HostalWare.MostrarCamasLibresPorID_HabitacionParaRegistro(ID_Habitacion);

                                        //Actualizo la cantidad de camas para la habitacion seleccionada
                                        lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadCamasLibresParaRegistro) + ' Camas';
                                      end;
                            end
                              else
                                begin
                                  if (cmbxFiltroXTipoLecho.Text = 'Litera')
                                    then
                                      begin
                                        //Le cambio el DataSource al DBGrid de habitaciones existentes
                                        DBGridHabitacionesConVacantes.DataSource:= DataModuleRegistroDeHuespedes.dsSelecHabConVacantesTotalesYConLiterasParaRegistro;

                                        //Le cambio el DataSource al DBTExt de ID_Habitaciones
                                        DBtxtID_Habitacion.DataSource:= DataModuleRegistroDeHuespedes.dsSelecHabConVacantesTotalesYConLiterasParaRegistro;

                                        //Le cambio el DataSource al DBAdvGlowNavigator de las habitaciones existentes
                                        DBAdvGlowNavigatorHabitacionesExistentes.DataSource:= DataModuleRegistroDeHuespedes.dsSelecHabConVacantesTotalesYConLiterasParaRegistro;

                                        //Actualizo el DBGrid y el DBText (forma principal) con todas las Habitaciones vacantes
                                        HostalWare.MostrarHabitacionesConVacantesTotalesYConLiterasParaRegistro;

                                        //Actualizo la cantidad de habitaciones (totales)
                                        lblCantidadHabitaciones.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadHabitacionesConVacantesTotalesYConLiterasParaRegistro) + ' habitaciones con literas';

                                        //Le cambio el DataSource al DBGrid de Lechos Libres para Registro
                                        DBGridCamasLibresExistentes.DataSource:= DataModuleRegistroDeHuespedes.dsSelecLiterasLibresPorID_HabitacionParaRegistro;

                                        //Actualizo las camas libres existentes, para la habitacion que esté seleccionada
                                        if (HostalWare.CantidadHabitacionesConVacantesTotalesYConLiterasParaRegistro <> 0)
                                          then
                                            begin
                                              //Recojo el ID_Habitacion
                                              ID_Habitacion:= StrToInt(DBtxtID_Habitacion.Field.Text);

                                              //Muestro todos las camas libres para registro, para la habitacion seleccionada
                                              HostalWare.MostrarLiterasLibresPorID_HabitacionParaRegistro(ID_Habitacion);

                                              if (HostalWare.CantidadLiterasLibresParaRegistro <> 1)
                                                then
                                                  begin
                                                    //Actualizo la cantidad de camas para la habitacion seleccionada
                                                    lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadLiterasLibresParaRegistro) + ' Literas';
                                                  end
                                                    else
                                                      begin
                                                        //Actualizo la cantidad de camas para la habitacion seleccionada
                                                        lblCantidadCamas.Caption:= 'TOTAL = 1 Litera';
                                                      end;
                                            end
                                              else //No tiene habitaciones
                                                begin
                                                  //Le paso un ID_Habitacion que no existe (me daba explote)
                                                  ID_Habitacion:= StrToInt('0');

                                                  //Muestro los lechos para la habitacion seleccionada (no muestra nada realmente)
                                                  HostalWare.MostrarLiterasLibresPorID_HabitacionParaRegistro(ID_Habitacion);

                                                  //Actualizo la cantidad de camas para la habitacion seleccionada
                                                  lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadLiterasLibresParaRegistro) + ' Literas';
                                                end;
                                      end
                                        else
                                          begin
                                            if (cmbxFiltroXTipoLecho.Text = 'Litera Arriba')
                                              then
                                                begin
                                                  //Le cambio el DataSource al DBGrid de habitaciones existentes
                                                  DBGridHabitacionesConVacantes.DataSource:= DataModuleRegistroDeHuespedes.dsSelecHabConVacantesTotalesYConLiterasArribaParaRegistro;

                                                  //Le cambio el DataSource al DBTExt de ID_Habitaciones
                                                  DBtxtID_Habitacion.DataSource:= DataModuleRegistroDeHuespedes.dsSelecHabConVacantesTotalesYConLiterasArribaParaRegistro;

                                                  //Le cambio el DataSource al DBAdvGlowNavigator de las habitaciones existentes
                                                  DBAdvGlowNavigatorHabitacionesExistentes.DataSource:= DataModuleRegistroDeHuespedes.dsSelecHabConVacantesTotalesYConLiterasArribaParaRegistro;

                                                  //Actualizo el DBGrid y el DBText (forma principal) con todas las Habitaciones vacantes
                                                  HostalWare.MostrarHabitacionesConVacantesTotalesYConLiterasArribaParaRegistro;

                                                  //Actualizo la cantidad de habitaciones (totales)
                                                  lblCantidadHabitaciones.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadHabitacionesConVacantesTotalesYConLiterasArribaParaRegistro) + ' habitaciones con literas de arriba';

                                                  //Le cambio el DataSource al DBGrid de Lechos Libres para Registro
                                                  DBGridCamasLibresExistentes.DataSource:= DataModuleRegistroDeHuespedes.dsSelecLiterasArribaLibresPorID_HabitacionParaRegistro;

                                                  //Actualizo las camas libres existentes, para la habitacion que esté seleccionada
                                                  if (HostalWare.CantidadHabitacionesConVacantesTotalesYConLiterasArribaParaRegistro <> 0)
                                                    then
                                                      begin
                                                        //Recojo el ID_Habitacion
                                                        ID_Habitacion:= StrToInt(DBtxtID_Habitacion.Field.Text);

                                                        //Muestro todos las literas de arriba libres, para la habitacion seleccionada
                                                        HostalWare.MostrarLiterasArribaLibresPorID_HabitacionParaRegistro(ID_Habitacion);

                                                        if (HostalWare.CantidadLiterasArribaLibresParaRegistro <> 1)
                                                          then
                                                            begin
                                                              //Actualizo la cantidad de camas para la habitacion seleccionada
                                                              lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadLiterasArribaLibresParaRegistro) + ' Literas de Arriba';
                                                            end
                                                              else
                                                                begin
                                                                  //Actualizo la cantidad de camas para la habitacion seleccionada
                                                                  lblCantidadCamas.Caption:= 'TOTAL = 1 Litera de Arriba';
                                                                end;
                                                      end
                                                        else //No tiene habitaciones
                                                          begin
                                                            //Le paso un ID_Habitacion que no existe (me daba explote)
                                                            ID_Habitacion:= StrToInt('0');

                                                            //Muestro las literas de arriba libres, para la habitacion seleccionada (no muestra nada realmente)
                                                            HostalWare.MostrarLiterasArribaLibresPorID_HabitacionParaRegistro(ID_Habitacion);

                                                            //Actualizo la cantidad de camas para la habitacion seleccionada
                                                            lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadLiterasArribaLibresParaRegistro) + ' Literas de Arriba';
                                                          end;
                                                end
                                                  else
                                                    begin
                                                      if (cmbxFiltroXTipoLecho.Text = 'Litera Abajo')
                                                        then
                                                          begin
                                                            //Le cambio el DataSource al DBGrid de habitaciones existentes
                                                            DBGridHabitacionesConVacantes.DataSource:= DataModuleRegistroDeHuespedes.dsSelecHabConVacantesTotalesYConLiterasAbajoParaRegistro;

                                                            //Le cambio el DataSource al DBTExt de ID_Habitaciones
                                                            DBtxtID_Habitacion.DataSource:= DataModuleRegistroDeHuespedes.dsSelecHabConVacantesTotalesYConLiterasAbajoParaRegistro;

                                                            //Le cambio el DataSource al DBAdvGlowNavigator de las habitaciones existentes
                                                            DBAdvGlowNavigatorHabitacionesExistentes.DataSource:= DataModuleRegistroDeHuespedes.dsSelecHabConVacantesTotalesYConLiterasAbajoParaRegistro;

                                                            //Actualizo el DBGrid y el DBText (forma principal) con todas las Habitaciones vacantes
                                                            HostalWare.MostrarHabitacionesConVacantesTotalesYConLiterasAbajoParaRegistro;

                                                            //Actualizo la cantidad de habitaciones (totales)
                                                            lblCantidadHabitaciones.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadHabitacionesConVacantesTotalesYConLiterasAbajoParaRegistro) + ' habitaciones con literas de abajo';

                                                            //Le cambio el DataSource al DBGrid de Lechos Libres para Registro
                                                            DBGridCamasLibresExistentes.DataSource:= DataModuleRegistroDeHuespedes.dsSelecLiterasAbajoLibresPorID_HabitacionParaRegistro;
                                                                                
                                                            //Actualizo las camas libres existentes, para la habitacion que esté seleccionada
                                                            if (HostalWare.CantidadHabitacionesConVacantesTotalesYConLiterasAbajoParaRegistro <> 0)
                                                              then
                                                                begin
                                                                  //Recojo el ID_Habitacion
                                                                  ID_Habitacion:= StrToInt(DBtxtID_Habitacion.Field.Text);

                                                                  //Muestro todos las literas de arriba libres, para la habitacion seleccionada
                                                                  HostalWare.MostrarLiterasAbajoLibresPorID_HabitacionParaRegistro(ID_Habitacion);

                                                                  if (HostalWare.CantidadLiterasAbajoLibresParaRegistro <> 1)
                                                                    then
                                                                      begin
                                                                        //Actualizo la cantidad de camas para la habitacion seleccionada
                                                                        lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadLiterasAbajoLibresParaRegistro) + ' Literas de Abajo';
                                                                      end
                                                                        else
                                                                          begin
                                                                            //Actualizo la cantidad de camas para la habitacion seleccionada
                                                                            lblCantidadCamas.Caption:= 'TOTAL = 1 Litera de Abajo';
                                                                          end;
                                                                end
                                                                  else //No tiene habitaciones
                                                                    begin
                                                                      //Le paso un ID_Habitacion que no existe (me daba explote)
                                                                      ID_Habitacion:= StrToInt('0');

                                                                      //Muestro las literas de arriba libres, para la habitacion seleccionada (no muestra nada realmente)
                                                                      HostalWare.MostrarLiterasAbajoLibresPorID_HabitacionParaRegistro(ID_Habitacion);

                                                                      //Actualizo la cantidad de camas para la habitacion seleccionada
                                                                      lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadLiterasAbajoLibresParaRegistro) + ' Literas de Abajo';
                                                                    end;
                                                          end;
                                                    end;
                                          end;
                                end;
                      end;
            end
              else //Específico, por pisos
                begin 
                  //En dependencia del filtrado por tipo de lecho escogido
                  if (cmbxFiltroXTipoLecho.Text = 'TODOS')
                    then
                      begin
                        //Le cambio el DataSource al DBGrid de habitaciones existentes
                        DBGridHabitacionesConVacantes.DataSource:= DataModuleRegistroDeHuespedes.dsSelecHabConVacantesPorPisoParaRegistro;

                        //Le cambio el DataSource al DBTExt de ID_Habitaciones
                        DBtxtID_Habitacion.DataSource:= DataModuleRegistroDeHuespedes.dsSelecHabConVacantesPorPisoParaRegistro;

                        //Le cambio el DataSource al DBAdvGlowNavigator de las habitaciones existentes
                        DBAdvGlowNavigatorHabitacionesExistentes.DataSource:= DataModuleRegistroDeHuespedes.dsSelecHabConVacantesPorPisoParaRegistro;

                        //Actualizo el DBGrid (forma principal) con las Habitaciones del piso escogido
                        HostalWare.MostrarHabitacionesConVacantesPorPisoParaRegistro(LeftStr(cmbxFiltroXPiso.Text, 3)  );

                        //Actualizo la cantidad de habitaciones (piso escogido)
                        lblCantidadHabitaciones.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadHabitacionesConVacantesPorPisoParaRegistro) + ' habitaciones en el ' + LeftStr(cmbxFiltroXPiso.Text, 3) + ' piso.';

                        //Le cambio el DataSource al DBGrid de Lechos Libres para Registro
                        DBGridCamasLibresExistentes.DataSource:= DataModuleRegistroDeHuespedes.dsSelecLechosLibresPorID_HabitacionParaRegistro;

                        //Actualizo los lechos existentes para la habitacion que esté seleccionada
                        if (HostalWare.CantidadHabitacionesConVacantesPorPisoParaRegistro <> 0)
                          then
                            begin
                              //Recojo el ID_Habitacion
                              ID_Habitacion:= StrToInt(DBtxtID_Habitacion.Field.Text);

                              //Muestro los lechos para la habitacion seleccionada
                              HostalWare.MostrarLechosLibresPorID_HabitacionParaRegistro(ID_Habitacion);

                              if (HostalWare.CantidadLechosLibresParaRegistro <> 1)
                                then
                                  begin
                                    //Actualizo la cantidad de camas para la habitacion seleccionada
                                    lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadLechosLibresParaRegistro) + ' Lechos';
                                  end
                                    else
                                      begin
                                        //Actualizo la cantidad de camas para la habitacion seleccionada
                                        lblCantidadCamas.Caption:= 'TOTAL = 1 Lecho';
                                      end;
                            end
                              else //No tiene habitaciones
                                begin
                                  //Le paso un ID_Habitacion que no existe (me daba explote)
                                  ID_Habitacion:= StrToInt('0');

                                  //Muestro las camas para la habitacion seleccionada
                                  HostalWare.MostrarLechosLibresPorID_HabitacionParaRegistro(ID_Habitacion);

                                  //Actualizo la cantidad de camas para la habitacion seleccionada
                                  lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadLechosLibresParaRegistro) + ' Lechos';
                                end;
                      end
                        else
                          begin
                            if (cmbxFiltroXTipoLecho.Text = 'Cama')
                              then
                                begin
                                  //Le cambio el DataSource al DBGrid de habitaciones existentes
                                  DBGridHabitacionesConVacantes.DataSource:= DataModuleRegistroDeHuespedes.dsSelecHabConVacantesPorPisoYConCamasParaRegistro;

                                  //Le cambio el DataSource al DBTExt de ID_Habitaciones
                                  DBtxtID_Habitacion.DataSource:= DataModuleRegistroDeHuespedes.dsSelecHabConVacantesPorPisoYConCamasParaRegistro;

                                  //Le cambio el DataSource al DBAdvGlowNavigator de las habitaciones existentes
                                  DBAdvGlowNavigatorHabitacionesExistentes.DataSource:= DataModuleRegistroDeHuespedes.dsSelecHabConVacantesPorPisoYConCamasParaRegistro;

                                  //Actualizo el DBGrid (forma principal) con las Habitaciones del piso escogido
                                  HostalWare.MostrarHabitacionesConVacantesPorPisoYConCamasParaRegistro(LeftStr(cmbxFiltroXPiso.Text, 3)  );

                                  //Actualizo la cantidad de habitaciones (piso escogido)
                                  lblCantidadHabitaciones.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadHabitacionesConVacantesPorPisoYConCamasParaRegistro) + ' habitaciones con camas, en el ' + LeftStr(cmbxFiltroXPiso.Text, 3) + ' piso';

                                  //Le cambio el DataSource al DBGrid de Lechos Libres para Registro
                                  DBGridCamasLibresExistentes.DataSource:= DataModuleRegistroDeHuespedes.dsSelecCamasLibresPorID_HabitacionParaRegistro;

                                  //Actualizo los lechos existentes para la habitacion que esté seleccionada
                                  if (HostalWare.CantidadHabitacionesConVacantesPorPisoYConCamasParaRegistro <> 0)
                                    then
                                      begin
                                        //Recojo el ID_Habitacion
                                        ID_Habitacion:= StrToInt(DBtxtID_Habitacion.Field.Text);

                                        //Muestro los lechos para la habitacion seleccionada
                                        HostalWare.MostrarCamasLibresPorID_HabitacionParaRegistro(ID_Habitacion);

                                        if (HostalWare.CantidadCamasLibresParaRegistro <> 1)
                                          then
                                            begin
                                              //Actualizo la cantidad de camas para la habitacion seleccionada
                                              lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadCamasLibresParaRegistro) + ' Camas';
                                            end
                                              else
                                                begin
                                                  //Actualizo la cantidad de camas para la habitacion seleccionada
                                                  lblCantidadCamas.Caption:= 'TOTAL = 1 Cama';
                                                end;
                                      end
                                        else //No tiene habitaciones
                                          begin
                                            //Le paso un ID_Habitacion que no existe (me daba explote)
                                            ID_Habitacion:= StrToInt('0');

                                            //Muestro las camas para la habitacion seleccionada
                                            HostalWare.MostrarCamasLibresPorID_HabitacionParaRegistro(ID_Habitacion);

                                            //Actualizo la cantidad de camas para la habitacion seleccionada
                                            lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadCamasLibresParaRegistro) + ' Camas';
                                          end;
                                end
                                  else
                                    begin
                                      if (cmbxFiltroXTipoLecho.Text = 'Litera')
                                        then
                                          begin
                                            //Le cambio el DataSource al DBGrid de habitaciones existentes
                                            DBGridHabitacionesConVacantes.DataSource:= DataModuleRegistroDeHuespedes.dsSelecHabConVacantesPorPisoYConLiterasParaRegistro;

                                            //Le cambio el DataSource al DBTExt de ID_Habitaciones
                                            DBtxtID_Habitacion.DataSource:= DataModuleRegistroDeHuespedes.dsSelecHabConVacantesPorPisoYConLiterasParaRegistro;

                                            //Le cambio el DataSource al DBAdvGlowNavigator de las habitaciones existentes
                                            DBAdvGlowNavigatorHabitacionesExistentes.DataSource:= DataModuleRegistroDeHuespedes.dsSelecHabConVacantesPorPisoYConLiterasParaRegistro;

                                            //Actualizo el DBGrid (forma principal) con las Habitaciones del piso escogido
                                            HostalWare.MostrarHabitacionesConVacantesPorPisoYConLiterasParaRegistro(LeftStr(cmbxFiltroXPiso.Text, 3)  );

                                            //Actualizo la cantidad de habitaciones (piso escogido)
                                            lblCantidadHabitaciones.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadHabitacionesConVacantesPorPisoYConLiterasParaRegistro) + ' habitaciones con literas, en el ' + LeftStr(cmbxFiltroXPiso.Text, 3) + ' piso';

                                            //Le cambio el DataSource al DBGrid de Lechos Libres para Registro
                                            DBGridCamasLibresExistentes.DataSource:= DataModuleRegistroDeHuespedes.dsSelecLiterasLibresPorID_HabitacionParaRegistro;

                                            //Actualizo las literas existentes para la habitacion que esté seleccionada
                                            if (HostalWare.CantidadHabitacionesConVacantesPorPisoYConLiterasParaRegistro <> 0)
                                              then
                                                begin
                                                  //Recojo el ID_Habitacion
                                                  ID_Habitacion:= StrToInt(DBtxtID_Habitacion.Field.Text);

                                                  //Muestro los lechos para la habitacion seleccionada
                                                  HostalWare.MostrarLiterasLibresPorID_HabitacionParaRegistro(ID_Habitacion);

                                                  if (HostalWare.CantidadLiterasLibresParaRegistro <> 1)
                                                    then
                                                      begin
                                                        //Actualizo la cantidad de literas libres para la habitacion seleccionada
                                                        lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadLiterasLibresParaRegistro) + ' Literas';
                                                      end
                                                        else
                                                          begin
                                                            //Actualizo la cantidad de literas libres para la habitacion seleccionada
                                                            lblCantidadCamas.Caption:= 'TOTAL = 1 Litera';
                                                          end;
                                                end
                                                  else //No tiene habitaciones
                                                    begin
                                                      //Le paso un ID_Habitacion que no existe (me daba explote)
                                                      ID_Habitacion:= StrToInt('0');

                                                      //Muestro las literas libres para la habitacion seleccionada
                                                      HostalWare.MostrarLiterasLibresPorID_HabitacionParaRegistro(ID_Habitacion);

                                                      //Actualizo la cantidad de literas libres para la habitacion seleccionada
                                                      lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadLiterasLibresParaRegistro) + ' Literas';
                                                    end;
                                          end
                                            else
                                              begin
                                                if (cmbxFiltroXTipoLecho.Text = 'Litera Arriba')
                                                  then
                                                    begin
                                                      //Le cambio el DataSource al DBGrid de habitaciones existentes
                                                      DBGridHabitacionesConVacantes.DataSource:= DataModuleRegistroDeHuespedes.dsSelecHabConVacantesPorPisoYConLiterasArribaParaRegistro;

                                                      //Le cambio el DataSource al DBTExt de ID_Habitaciones
                                                      DBtxtID_Habitacion.DataSource:= DataModuleRegistroDeHuespedes.dsSelecHabConVacantesPorPisoYConLiterasArribaParaRegistro;

                                                      //Le cambio el DataSource al DBAdvGlowNavigator de las habitaciones existentes
                                                      DBAdvGlowNavigatorHabitacionesExistentes.DataSource:= DataModuleRegistroDeHuespedes.dsSelecHabConVacantesPorPisoYConLiterasArribaParaRegistro;

                                                      //Actualizo el DBGrid (forma principal) con las Habitaciones del piso escogido
                                                      HostalWare.MostrarHabitacionesConVacantesPorPisoYConLiterasArribaParaRegistro(LeftStr(cmbxFiltroXPiso.Text, 3)  );

                                                      //Actualizo la cantidad de habitaciones (piso escogido)
                                                      lblCantidadHabitaciones.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadHabitacionesConVacantesPorPisoYConLiterasArribaParaRegistro) + ' habitaciones con literas de arriba, en el ' + LeftStr(cmbxFiltroXPiso.Text, 3) + ' piso';

                                                      //Le cambio el DataSource al DBGrid de Lechos Libres para Registro
                                                      DBGridCamasLibresExistentes.DataSource:= DataModuleRegistroDeHuespedes.dsSelecLiterasArribaLibresPorID_HabitacionParaRegistro;

                                                      //Actualizo las literas arriba existentes para la habitacion que esté seleccionada
                                                      if (HostalWare.CantidadHabitacionesConVacantesPorPisoYConLiterasArribaParaRegistro <> 0)
                                                        then
                                                          begin
                                                            //Recojo el ID_Habitacion
                                                            ID_Habitacion:= StrToInt(DBtxtID_Habitacion.Field.Text);

                                                            //Muestro los lechos para la habitacion seleccionada
                                                            HostalWare.MostrarLiterasArribaLibresPorID_HabitacionParaRegistro(ID_Habitacion);

                                                            if (HostalWare.CantidadLiterasArribaLibresParaRegistro <> 1)
                                                              then
                                                                begin
                                                                  //Actualizo la cantidad de literas libres para la habitacion seleccionada
                                                                  lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadLiterasArribaLibresParaRegistro) + ' Literas de Arriba';
                                                                end
                                                                  else
                                                                    begin
                                                                      //Actualizo la cantidad de literas libres para la habitacion seleccionada
                                                                      lblCantidadCamas.Caption:= 'TOTAL = 1 Litera de Arriba';
                                                                    end;
                                                          end
                                                            else //No tiene habitaciones
                                                              begin
                                                                //Le paso un ID_Habitacion que no existe (me daba explote)
                                                                ID_Habitacion:= StrToInt('0');

                                                                //Muestro las literas libres para la habitacion seleccionada
                                                                HostalWare.MostrarLiterasArribaLibresPorID_HabitacionParaRegistro(ID_Habitacion);

                                                                //Actualizo la cantidad de literas libres para la habitacion seleccionada
                                                                lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadLiterasArribaLibresParaRegistro) + ' Literas de Arriba';
                                                              end;
                                                    end
                                                      else
                                                        begin
                                                          if (cmbxFiltroXTipoLecho.Text = 'Litera Abajo')
                                                            then
                                                              begin
                                                                //Le cambio el DataSource al DBGrid de habitaciones existentes
                                                                DBGridHabitacionesConVacantes.DataSource:= DataModuleRegistroDeHuespedes.dsSelecHabConVacantesPorPisoYConLiterasAbajoParaRegistro;

                                                                //Le cambio el DataSource al DBTExt de ID_Habitaciones
                                                                DBtxtID_Habitacion.DataSource:= DataModuleRegistroDeHuespedes.dsSelecHabConVacantesPorPisoYConLiterasAbajoParaRegistro;

                                                                //Le cambio el DataSource al DBAdvGlowNavigator de las habitaciones existentes
                                                                DBAdvGlowNavigatorHabitacionesExistentes.DataSource:= DataModuleRegistroDeHuespedes.dsSelecHabConVacantesPorPisoYConLiterasAbajoParaRegistro;

                                                                //Actualizo el DBGrid (forma principal) con las Habitaciones del piso escogido
                                                                HostalWare.MostrarHabitacionesConVacantesPorPisoYConLiterasAbajoParaRegistro(LeftStr(cmbxFiltroXPiso.Text, 3)  );

                                                                //Actualizo la cantidad de habitaciones (piso escogido)
                                                                lblCantidadHabitaciones.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadHabitacionesConVacantesPorPisoYConLiterasAbajoParaRegistro) + ' habitaciones con literas de abajo, en el ' + LeftStr(cmbxFiltroXPiso.Text, 3) + ' piso';

                                                                //Le cambio el DataSource al DBGrid de Lechos Libres para Registro
                                                                DBGridCamasLibresExistentes.DataSource:= DataModuleRegistroDeHuespedes.dsSelecLiterasAbajoLibresPorID_HabitacionParaRegistro;

                                                                //Actualizo las literas arriba existentes para la habitacion que esté seleccionada
                                                                if (HostalWare.CantidadHabitacionesConVacantesPorPisoYConLiterasAbajoParaRegistro <> 0)
                                                                  then
                                                                    begin
                                                                      //Recojo el ID_Habitacion
                                                                      ID_Habitacion:= StrToInt(DBtxtID_Habitacion.Field.Text);

                                                                      //Muestro los lechos para la habitacion seleccionada
                                                                      HostalWare.MostrarLiterasAbajoLibresPorID_HabitacionParaRegistro(ID_Habitacion);

                                                                      if (HostalWare.CantidadLiterasAbajoLibresParaRegistro <> 1)
                                                                        then
                                                                          begin
                                                                            //Actualizo la cantidad de literas libres para la habitacion seleccionada
                                                                            lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadLiterasAbajoLibresParaRegistro) + ' Literas de Abajo';
                                                                          end
                                                                            else
                                                                              begin
                                                                                //Actualizo la cantidad de literas libres para la habitacion seleccionada
                                                                                lblCantidadCamas.Caption:= 'TOTAL = 1 Litera de Abajo';
                                                                              end;
                                                                    end
                                                                      else //No tiene habitaciones
                                                                        begin
                                                                          //Le paso un ID_Habitacion que no existe (me daba explote)
                                                                          ID_Habitacion:= StrToInt('0');

                                                                          //Muestro las literas libres para la habitacion seleccionada
                                                                          HostalWare.MostrarLiterasAbajoLibresPorID_HabitacionParaRegistro(ID_Habitacion);

                                                                          //Actualizo la cantidad de literas libres para la habitacion seleccionada
                                                                          lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadLiterasAbajoLibresParaRegistro) + ' Literas de Abajo';
                                                                        end;
                                                              end;
                                                        end;
                                              end;
                                    end;
                          end;
                end;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end; 
end;



procedure TfrmNuevoRegistro.cmbxFiltroXPisoChange(Sender: TObject);
begin
  //Mando a actualizar las Capacidades para Registro
  ActualizarCapacidadesParaRegistro;
end;



procedure TfrmNuevoRegistro.cmbxFiltroXTipoLechoChange(Sender: TObject);
begin
  //Mando a actualizar las Capacidades para Registro
  ActualizarCapacidadesParaRegistro;
end;



procedure TfrmNuevoRegistro.ActualizarSoloLechosParaRegistro;
var
  ID_Habitacion: Integer;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //En dependencia del filtrado por pisos escogido
        if (cmbxFiltroXPiso.Text = 'TODOS')
          then //Todos los pisos juntos
            begin
              //En dependencia del filtrado por tipo de lecho
              if (cmbxFiltroXTipoLecho.Text = 'TODOS')
                then
                  begin
                    //Le cambio el DataSource al DBGrid de Lechos Libres para Registro
                    DBGridCamasLibresExistentes.DataSource:= DataModuleRegistroDeHuespedes.dsSelecLechosLibresPorID_HabitacionParaRegistro;
                    
                    //Actualizo los lechos libres existentes, para la habitacion que esté seleccionada
                    if (HostalWare.CantidadHabitacionesConVacantesTotalesParaRegistro <> 0)
                      then
                        begin
                          //Recojo el ID_Habitacion
                          ID_Habitacion:= StrToInt(DBtxtID_Habitacion.Field.Text);

                          //Muestro todos los lechos libres para registro, para la habitacion seleccionada
                          HostalWare.MostrarLechosLibresPorID_HabitacionParaRegistro(ID_Habitacion);

                          if (HostalWare.CantidadLechosLibresParaRegistro <> 1)
                            then
                              begin
                                //Actualizo la cantidad de lechos para la habitacion seleccionada
                                lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadLechosLibresParaRegistro) + ' Lechos';
                              end
                                else
                                  begin
                                    //Actualizo la cantidad de lechos para la habitacion seleccionada
                                    lblCantidadCamas.Caption:= 'TOTAL = 1 Lecho';
                                  end;
                        end
                          else //No tiene habitaciones
                            begin
                              //Le paso un ID_Habitacion que no existe (me daba explote)
                              ID_Habitacion:= StrToInt('0');

                              //Muestro los lechos para la habitacion seleccionada (no muestra nada realmente)
                              HostalWare.MostrarLechosLibresPorID_HabitacionParaRegistro(ID_Habitacion);

                              //Actualizo la cantidad de camas para la habitacion seleccionada
                              lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadLechosLibresParaRegistro) + ' Lechos';
                            end;
                  end
                    else
                      begin
                        if (cmbxFiltroXTipoLecho.Text = 'Cama')
                          then
                            begin
                              //Le cambio el DataSource al DBGrid de Lechos Libres para Registro
                              DBGridCamasLibresExistentes.DataSource:= DataModuleRegistroDeHuespedes.dsSelecCamasLibresPorID_HabitacionParaRegistro;
                              
                              //Actualizo las camas libres existentes, para la habitacion que esté seleccionada
                              if (HostalWare.CantidadHabitacionesConVacantesTotalesYConCamasParaRegistro <> 0)
                                then
                                  begin
                                    //Recojo el ID_Habitacion
                                    ID_Habitacion:= StrToInt(DBtxtID_Habitacion.Field.Text);

                                    //Muestro todos las camas libres para registro, para la habitacion seleccionada
                                    HostalWare.MostrarCamasLibresPorID_HabitacionParaRegistro(ID_Habitacion);

                                    if (HostalWare.CantidadCamasLibresParaRegistro <> 1)
                                      then
                                        begin
                                          //Actualizo la cantidad de camas para la habitacion seleccionada
                                          lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadCamasLibresParaRegistro) + ' Camas';
                                        end
                                          else
                                            begin
                                              //Actualizo la cantidad de camas para la habitacion seleccionada
                                              lblCantidadCamas.Caption:= 'TOTAL = 1 Cama';
                                            end;
                                  end
                                    else //No tiene habitaciones
                                      begin
                                        //Le paso un ID_Habitacion que no existe (me daba explote)
                                        ID_Habitacion:= StrToInt('0');

                                        //Muestro los lechos para la habitacion seleccionada (no muestra nada realmente)
                                        HostalWare.MostrarCamasLibresPorID_HabitacionParaRegistro(ID_Habitacion);

                                        //Actualizo la cantidad de camas para la habitacion seleccionada
                                        lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadCamasLibresParaRegistro) + ' Camas';
                                      end;
                            end
                              else
                                begin
                                  if (cmbxFiltroXTipoLecho.Text = 'Litera')
                                    then
                                      begin
                                        //Le cambio el DataSource al DBGrid de Lechos Libres para Registro
                                        DBGridCamasLibresExistentes.DataSource:= DataModuleRegistroDeHuespedes.dsSelecLiterasLibresPorID_HabitacionParaRegistro;

                                        //Actualizo las literas libres existentes, para la habitacion que esté seleccionada
                                        if (HostalWare.CantidadHabitacionesConVacantesTotalesYConLiterasParaRegistro <> 0)
                                          then
                                            begin
                                              //Recojo el ID_Habitacion
                                              ID_Habitacion:= StrToInt(DBtxtID_Habitacion.Field.Text);

                                              //Muestro todas las literas libres para registro, para la habitacion seleccionada
                                              HostalWare.MostrarLiterasLibresPorID_HabitacionParaRegistro(ID_Habitacion);

                                              if (HostalWare.CantidadLiterasLibresParaRegistro <> 1)
                                                then
                                                  begin
                                                    //Actualizo la cantidad de literas para la habitacion seleccionada
                                                    lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadLiterasLibresParaRegistro) + ' Literas';
                                                  end
                                                    else
                                                      begin
                                                        //Actualizo la cantidad de literas para la habitacion seleccionada
                                                        lblCantidadCamas.Caption:= 'TOTAL = 1 Litera';
                                                      end;
                                            end
                                              else //No tiene habitaciones
                                                begin
                                                  //Le paso un ID_Habitacion que no existe (me daba explote)
                                                  ID_Habitacion:= StrToInt('0');

                                                  //Muestro las literas para la habitacion seleccionada (no muestra nada realmente)
                                                  HostalWare.MostrarLiterasLibresPorID_HabitacionParaRegistro(ID_Habitacion);

                                                  //Actualizo la cantidad de literas para la habitacion seleccionada
                                                  lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadLiterasLibresParaRegistro) + ' Literas';
                                                end;
                                      end
                                        else
                                          begin
                                            if (cmbxFiltroXTipoLecho.Text = 'Litera Arriba')
                                              then
                                                begin
                                                  //Le cambio el DataSource al DBGrid de Lechos Libres para Registro
                                                  DBGridCamasLibresExistentes.DataSource:= DataModuleRegistroDeHuespedes.dsSelecLiterasArribaLibresPorID_HabitacionParaRegistro;

                                                  //Actualizo las literas de arriba libres existentes, para la habitacion que esté seleccionada
                                                  if (HostalWare.CantidadHabitacionesConVacantesTotalesYConLiterasArribaParaRegistro <> 0)
                                                    then
                                                      begin
                                                        //Recojo el ID_Habitacion
                                                        ID_Habitacion:= StrToInt(DBtxtID_Habitacion.Field.Text);

                                                        //Muestro todos las literas de arriba libres, para la habitacion seleccionada
                                                        HostalWare.MostrarLiterasArribaLibresPorID_HabitacionParaRegistro(ID_Habitacion);

                                                        if (HostalWare.CantidadLiterasArribaLibresParaRegistro <> 1)
                                                          then
                                                            begin
                                                              //Actualizo la cantidad de camas para la habitacion seleccionada
                                                              lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadLiterasArribaLibresParaRegistro) + ' Literas de Arriba';
                                                            end
                                                              else
                                                                begin
                                                                  //Actualizo la cantidad de camas para la habitacion seleccionada
                                                                  lblCantidadCamas.Caption:= 'TOTAL = 1 Litera de Arriba';
                                                                end;
                                                      end
                                                        else //No tiene habitaciones
                                                          begin
                                                            //Le paso un ID_Habitacion que no existe (me daba explote)
                                                            ID_Habitacion:= StrToInt('0');

                                                            //Muestro las literas de arriba libres, para la habitacion seleccionada (no muestra nada realmente)
                                                            HostalWare.MostrarLiterasArribaLibresPorID_HabitacionParaRegistro(ID_Habitacion);

                                                            //Actualizo la cantidad de camas para la habitacion seleccionada
                                                            lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadLiterasArribaLibresParaRegistro) + ' Literas de Arriba';
                                                          end;
                                                end
                                                  else
                                                    begin
                                                      if (cmbxFiltroXTipoLecho.Text = 'Litera Abajo')
                                                        then
                                                          begin
                                                            //Le cambio el DataSource al DBGrid de Lechos Libres para Registro
                                                            DBGridCamasLibresExistentes.DataSource:= DataModuleRegistroDeHuespedes.dsSelecLiterasAbajoLibresPorID_HabitacionParaRegistro;

                                                            //Actualizo las literas de abajo libres existentes, para la habitacion que esté seleccionada
                                                            if (HostalWare.CantidadHabitacionesConVacantesTotalesYConLiterasAbajoParaRegistro <> 0)
                                                              then
                                                                begin
                                                                  //Recojo el ID_Habitacion
                                                                  ID_Habitacion:= StrToInt(DBtxtID_Habitacion.Field.Text);

                                                                  //Muestro todos las literas de arriba libres, para la habitacion seleccionada
                                                                  HostalWare.MostrarLiterasAbajoLibresPorID_HabitacionParaRegistro(ID_Habitacion);

                                                                  if (HostalWare.CantidadLiterasAbajoLibresParaRegistro <> 1)
                                                                    then
                                                                      begin
                                                                        //Actualizo la cantidad de camas para la habitacion seleccionada
                                                                        lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadLiterasAbajoLibresParaRegistro) + ' Literas de Abajo';
                                                                      end
                                                                        else
                                                                          begin
                                                                            //Actualizo la cantidad de camas para la habitacion seleccionada
                                                                            lblCantidadCamas.Caption:= 'TOTAL = 1 Litera de Abajo';
                                                                          end;
                                                                end
                                                                  else //No tiene habitaciones
                                                                    begin
                                                                      //Le paso un ID_Habitacion que no existe (me daba explote)
                                                                      ID_Habitacion:= StrToInt('0');

                                                                      //Muestro las literas de arriba libres, para la habitacion seleccionada (no muestra nada realmente)
                                                                      HostalWare.MostrarLiterasAbajoLibresPorID_HabitacionParaRegistro(ID_Habitacion);

                                                                      //Actualizo la cantidad de camas para la habitacion seleccionada
                                                                      lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadLiterasAbajoLibresParaRegistro) + ' Literas de Abajo';
                                                                    end;
                                                          end;
                                                    end;
                                          end;
                                end;
                      end;
            end
              else //Específico, por pisos
                begin 
                  //En dependencia del filtrado por tipo de lecho escogido
                  if (cmbxFiltroXTipoLecho.Text = 'TODOS')
                    then
                      begin
                        //Le cambio el DataSource al DBGrid de Lechos Libres para Registro
                        DBGridCamasLibresExistentes.DataSource:= DataModuleRegistroDeHuespedes.dsSelecLechosLibresPorID_HabitacionParaRegistro;

                        //Actualizo los lechos existentes para la habitacion que esté seleccionada
                        if (HostalWare.CantidadHabitacionesConVacantesPorPisoParaRegistro <> 0)
                          then
                            begin
                              //Recojo el ID_Habitacion
                              ID_Habitacion:= StrToInt(DBtxtID_Habitacion.Field.Text);

                              //Muestro los lechos para la habitacion seleccionada
                              HostalWare.MostrarLechosLibresPorID_HabitacionParaRegistro(ID_Habitacion);

                              if (HostalWare.CantidadLechosLibresParaRegistro <> 1)
                                then
                                  begin
                                    //Actualizo la cantidad de camas para la habitacion seleccionada
                                    lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadLechosLibresParaRegistro) + ' Lechos';
                                  end
                                    else
                                      begin
                                        //Actualizo la cantidad de camas para la habitacion seleccionada
                                        lblCantidadCamas.Caption:= 'TOTAL = 1 Lecho';
                                      end;
                            end
                              else //No tiene habitaciones
                                begin
                                  //Le paso un ID_Habitacion que no existe (me daba explote)
                                  ID_Habitacion:= StrToInt('0');

                                  //Muestro las camas para la habitacion seleccionada
                                  HostalWare.MostrarLechosLibresPorID_HabitacionParaRegistro(ID_Habitacion);

                                  //Actualizo la cantidad de camas para la habitacion seleccionada
                                  lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadLechosLibresParaRegistro) + ' Lechos';
                                end;
                      end
                        else
                          begin
                            if (cmbxFiltroXTipoLecho.Text = 'Cama')
                              then
                                begin
                                  //Le cambio el DataSource al DBGrid de Lechos Libres para Registro
                                  DBGridCamasLibresExistentes.DataSource:= DataModuleRegistroDeHuespedes.dsSelecCamasLibresPorID_HabitacionParaRegistro;

                                  //Actualizo las camas existentes para la habitacion que esté seleccionada
                                  if (HostalWare.CantidadHabitacionesConVacantesPorPisoYConCamasParaRegistro <> 0)
                                    then
                                      begin
                                        //Recojo el ID_Habitacion
                                        ID_Habitacion:= StrToInt(DBtxtID_Habitacion.Field.Text);

                                        //Muestro los lechos para la habitacion seleccionada
                                        HostalWare.MostrarCamasLibresPorID_HabitacionParaRegistro(ID_Habitacion);

                                        if (HostalWare.CantidadCamasLibresParaRegistro <> 1)
                                          then
                                            begin
                                              //Actualizo la cantidad de camas para la habitacion seleccionada
                                              lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadCamasLibresParaRegistro) + ' Camas';
                                            end
                                              else
                                                begin
                                                  //Actualizo la cantidad de camas para la habitacion seleccionada
                                                  lblCantidadCamas.Caption:= 'TOTAL = 1 Cama';
                                                end;
                                      end
                                        else //No tiene habitaciones
                                          begin
                                            //Le paso un ID_Habitacion que no existe (me daba explote)
                                            ID_Habitacion:= StrToInt('0');

                                            //Muestro las camas para la habitacion seleccionada
                                            HostalWare.MostrarCamasLibresPorID_HabitacionParaRegistro(ID_Habitacion);

                                            //Actualizo la cantidad de camas para la habitacion seleccionada
                                            lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadCamasLibresParaRegistro) + ' Camas';
                                          end;
                                end
                                  else
                                    begin
                                      if (cmbxFiltroXTipoLecho.Text = 'Litera')
                                        then
                                          begin
                                            //Le cambio el DataSource al DBGrid de Lechos Libres para Registro
                                            DBGridCamasLibresExistentes.DataSource:= DataModuleRegistroDeHuespedes.dsSelecLiterasLibresPorID_HabitacionParaRegistro;

                                            //Actualizo las literas existentes para la habitacion que esté seleccionada
                                            if (HostalWare.CantidadHabitacionesConVacantesPorPisoYConLiterasParaRegistro <> 0)
                                              then
                                                begin
                                                  //Recojo el ID_Habitacion
                                                  ID_Habitacion:= StrToInt(DBtxtID_Habitacion.Field.Text);

                                                  //Muestro los lechos para la habitacion seleccionada
                                                  HostalWare.MostrarLiterasLibresPorID_HabitacionParaRegistro(ID_Habitacion);

                                                  if (HostalWare.CantidadLiterasLibresParaRegistro <> 1)
                                                    then
                                                      begin
                                                        //Actualizo la cantidad de literas libres para la habitacion seleccionada
                                                        lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadLiterasLibresParaRegistro) + ' Literas';
                                                      end
                                                        else
                                                          begin
                                                            //Actualizo la cantidad de literas libres para la habitacion seleccionada
                                                            lblCantidadCamas.Caption:= 'TOTAL = 1 Litera';
                                                          end;
                                                end
                                                  else //No tiene habitaciones
                                                    begin
                                                      //Le paso un ID_Habitacion que no existe (me daba explote)
                                                      ID_Habitacion:= StrToInt('0');

                                                      //Muestro las literas libres para la habitacion seleccionada
                                                      HostalWare.MostrarLiterasLibresPorID_HabitacionParaRegistro(ID_Habitacion);
                                                                                        
                                                      //Actualizo la cantidad de literas libres para la habitacion seleccionada
                                                      lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadLiterasLibresParaRegistro) + ' Literas';
                                                    end;
                                          end
                                            else
                                              begin
                                                if (cmbxFiltroXTipoLecho.Text = 'Litera Arriba')
                                                  then
                                                    begin
                                                      //Le cambio el DataSource al DBGrid de Lechos Libres para Registro
                                                      DBGridCamasLibresExistentes.DataSource:= DataModuleRegistroDeHuespedes.dsSelecLiterasArribaLibresPorID_HabitacionParaRegistro;

                                                      //Actualizo las literas de arriba existentes para la habitacion que esté seleccionada
                                                      if (HostalWare.CantidadHabitacionesConVacantesPorPisoYConLiterasArribaParaRegistro <> 0)
                                                        then
                                                          begin
                                                            //Recojo el ID_Habitacion
                                                            ID_Habitacion:= StrToInt(DBtxtID_Habitacion.Field.Text);

                                                            //Muestro los lechos para la habitacion seleccionada
                                                            HostalWare.MostrarLiterasArribaLibresPorID_HabitacionParaRegistro(ID_Habitacion);

                                                            if (HostalWare.CantidadLiterasArribaLibresParaRegistro <> 1)
                                                              then
                                                                begin
                                                                  //Actualizo la cantidad de literas libres para la habitacion seleccionada
                                                                  lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadLiterasArribaLibresParaRegistro) + ' Literas de Arriba';
                                                                end
                                                                  else
                                                                    begin
                                                                      //Actualizo la cantidad de literas libres para la habitacion seleccionada
                                                                      lblCantidadCamas.Caption:= 'TOTAL = 1 Litera de Arriba';
                                                                    end;
                                                          end
                                                            else //No tiene habitaciones
                                                              begin
                                                                //Le paso un ID_Habitacion que no existe (me daba explote)
                                                                ID_Habitacion:= StrToInt('0');

                                                                //Muestro las literas libres para la habitacion seleccionada
                                                                HostalWare.MostrarLiterasArribaLibresPorID_HabitacionParaRegistro(ID_Habitacion);

                                                                //Actualizo la cantidad de literas libres para la habitacion seleccionada
                                                                lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadLiterasArribaLibresParaRegistro) + ' Literas de Arriba';
                                                              end;
                                                    end
                                                      else
                                                        begin
                                                          if (cmbxFiltroXTipoLecho.Text = 'Litera Abajo')
                                                            then
                                                              begin
                                                                //Le cambio el DataSource al DBGrid de Lechos Libres para Registro
                                                                DBGridCamasLibresExistentes.DataSource:= DataModuleRegistroDeHuespedes.dsSelecLiterasAbajoLibresPorID_HabitacionParaRegistro;

                                                                //Actualizo las literas de abajo existentes para la habitacion que esté seleccionada
                                                                if (HostalWare.CantidadHabitacionesConVacantesPorPisoYConLiterasAbajoParaRegistro <> 0)
                                                                  then
                                                                    begin
                                                                      //Recojo el ID_Habitacion
                                                                      ID_Habitacion:= StrToInt(DBtxtID_Habitacion.Field.Text);

                                                                      //Muestro los lechos para la habitacion seleccionada
                                                                      HostalWare.MostrarLiterasAbajoLibresPorID_HabitacionParaRegistro(ID_Habitacion);

                                                                      if (HostalWare.CantidadLiterasAbajoLibresParaRegistro <> 1)
                                                                        then
                                                                          begin
                                                                            //Actualizo la cantidad de literas de abajo libres para la habitacion seleccionada
                                                                            lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadLiterasAbajoLibresParaRegistro) + ' Literas de Abajo';
                                                                          end
                                                                            else
                                                                              begin
                                                                                //Actualizo la cantidad de literas de abajo libres para la habitacion seleccionada
                                                                                lblCantidadCamas.Caption:= 'TOTAL = 1 Litera de Abajo';
                                                                              end;
                                                                    end
                                                                      else //No tiene habitaciones
                                                                        begin
                                                                          //Le paso un ID_Habitacion que no existe (me daba explote)
                                                                          ID_Habitacion:= StrToInt('0');

                                                                          //Muestro las literas de abajo libres para la habitacion seleccionada
                                                                          HostalWare.MostrarLiterasAbajoLibresPorID_HabitacionParaRegistro(ID_Habitacion);

                                                                          //Actualizo la cantidad de literas de abajo libres para la habitacion seleccionada
                                                                          lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadLiterasAbajoLibresParaRegistro) + ' Literas de Abajo';
                                                                        end;
                                                              end;
                                                        end;
                                              end;
                                    end;
                          end;
                end;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end; 
end;



procedure TfrmNuevoRegistro.DBAdvGlowNavigatorHabitacionesExistentesClick(
  Sender: TObject; Button: TAdvNavigateBtn);
begin
  //Muestro y actualizo los lechos (en general)
  ActualizarSoloLechosParaRegistro;
end;




procedure TfrmNuevoRegistro.SoloCorreosElectronicosKeyPress(Sender: TObject; var Key: Char);
begin
  //Valido para solo caracteres
  if not (Key in['a'..'z', 'A'..'Z', '0'..'9', '.', '_', '@', #8, #13]) then Abort;
end;



procedure TfrmNuevoRegistro.SoloLetrasConEspaciosYPuntuacionKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then lblbtnAceptar1.Click;

  //Valido para solo nombres
  if not (Key in['a'..'z', 'A'..'Z', 'ñ', 'Ñ', 'á', 'é', 'í', 'ó', 'ú', 'Á', 'É', 'Í', 'Ó', 'Ú', ' ', #8, #13]) then Abort;
end;



procedure TfrmNuevoRegistro.SoloLetrasSinEspaciosNiTildesKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then lblbtnAceptar1.Click;

  //Valido para solo letras (sin espacios ni tildes)
  if not (Key in['a'..'z', 'A'..'Z', 'ñ', 'Ñ', #8, #13]) then Abort;
end;



procedure TfrmNuevoRegistro.SoloLetrasYNumerosConPuntuacionYEspaciosKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then lblbtnAceptar1.Click;

  //Valido para solo nombres
  if not (Key in['a'..'z', 'A'..'Z', 'ñ', 'Ñ', 'á', 'é', 'í', 'ó', 'ú', 'Á', 'É', 'Í', 'Ó', 'Ú', '0'..'9', ' ', #8, #13]) then Abort;
end;



procedure TfrmNuevoRegistro.SoloLetrasYNumerosSinPuntuacionNiEspaciosKeyPress(Sender: TObject; var Key: Char);
begin
  //Valido para solo caracteres
  if not (Key in['a'..'z', 'A'..'Z', '0'..'9', #8, #13]) then Abort;
end;




procedure TfrmNuevoRegistro.SoloNumerosSinEspaciosKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then lblbtnAceptar1.Click;

  //Valido para solo numeros
  if not (Key in['0'..'9', #8, #13]) then Abort;
end;



procedure TfrmNuevoRegistro.SoloNumerosTelefonicosYExtensionKeyPress(Sender: TObject; var Key: Char);
begin
  //Valido para solo letras y numeros, con espacios, puntos y guiones
  if not (Key in['a'..'z', 'A'..'Z', '0'..'9', ' ', ',', '-', '.', #8, #13]) then Abort;
end;



end.
