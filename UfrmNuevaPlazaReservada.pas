unit UfrmNuevaPlazaReservada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,

  //Clases de Control
  UGestionCursistasHospedados,

  //Clases Entidad
  UPlazaReservada,

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
  TfrmNuevaPlazaReservada = class(TForm)
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
    lblEmailHuesped: TLabel;
    edtEmailHuesped: TEdit;
    lblbtnLimpiar4: TLbButton;
    lblbtnAceptar4: TLbButton;
    lblbtnCancelar4: TLbButton;
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
    Panel1: TPanel;
    Panel2: TPanel;
    DBtxtID_ProvinciaCentroLaboral: TDBText;
    lblCantidadHabitaciones: TLabel;
    DBAdvGlowNavigatorHabitacionesExistentes: TDBAdvGlowNavigator;
    lblCantidadCamas: TLabel;
    cmbxFiltroXPiso: TAdvOfficeSelector;
    cmbxFiltroXTipoLecho: TAdvOfficeSelector;
    ImageListPaises: TImageList;

    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtNumeroHabitacionKeyPress(Sender: TObject; var Key: Char);
    procedure edtPrimerApellidoKeyPress(Sender: TObject; var Key: Char);
    procedure edtSegundoApellidoKeyPress(Sender: TObject; var Key: Char);
    procedure edtUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure edtContrasennaKeyPress(Sender: TObject; var Key: Char);
    procedure edtRepetirContrasennaKeyPress(Sender: TObject; var Key: Char);
    procedure btnVerificarUsuarioClick(Sender: TObject);

    procedure cmbxPaisDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure CentrarForma(var m: TWMWINDOWPOSCHANGED); message
    WM_WINDOWPOSCHANGING;

    procedure SoloNumerosKeyPress(Sender: TObject; var Key: Char);
    procedure lblbtnCancelarClick(Sender: TObject);
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
    procedure DBlucmbxProvinciaCentroLaboralClick(Sender: TObject);
    procedure cmbxMotivoHospedajeChange(Sender: TObject);
    procedure cmbxFiltroXPisoChange(Sender: TObject);
    procedure cmbxFiltroXTipoLechoChange(Sender: TObject);
    procedure DBAdvGlowNavigatorHabitacionesExistentesClick(
      Sender: TObject; Button: TAdvNavigateBtn);

  private
    { Private declarations }
  public
    { Public declarations }
    FID_Cama: Integer;
    FMotivoHospedaje: AnsiString;

    procedure RellenarPlazaTemporal;
    procedure BorrarComponentes;

    procedure ActualizarCapacidadesParaRegistro;
    procedure ActualizarSoloLechosParaRegistro;

    function SeAsignoUnaCama: Boolean;
    function SeTeclearonLosValoresNecesarios: Boolean;
  end;

var
  frmNuevaPlazaReservada: TfrmNuevaPlazaReservada;

implementation

uses StrUtils;
var
    HostalWare: TGestionCursistasHospedados;
    TempPlaza: TPlazaReservada;

{$R *.dfm}



procedure TfrmNuevaPlazaReservada.btnCancelarClick(Sender: TObject);
begin
  //Cierro la forma
  frmNuevaPlazaReservada.Close;
end;



procedure TfrmNuevaPlazaReservada.FormShow(Sender: TObject);
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
  hMenuHandle := GetSystemMenu(frmNuevaPlazaReservada.Handle, FALSE);

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



procedure TfrmNuevaPlazaReservada.edtNumeroHabitacionKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then lblbtnAceptar1.Click;

  //Valido para solo nombres
  if not (Key in['a'..'z', 'A'..'Z', 'ñ', 'Ñ', 'á', 'é', 'í', 'ó', 'ú', 'Á', 'É', 'Í', 'Ó', 'Ú', ' ', #8, #13]) then Abort;
end;



procedure TfrmNuevaPlazaReservada.edtPrimerApellidoKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then lblbtnAceptar1.Click;

  //Valido para solo nombres
  if not (Key in['a'..'z', 'A'..'Z', 'ñ', 'Ñ', 'á', 'é', 'í', 'ó', 'ú', 'Á', 'É', 'Í', 'Ó', 'Ú', ' ', #8, #13]) then Abort;
end;



procedure TfrmNuevaPlazaReservada.edtSegundoApellidoKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then lblbtnAceptar1.Click;

  //Valido para solo nombres
  if not (Key in['a'..'z', 'A'..'Z', 'ñ', 'Ñ', 'á', 'é', 'í', 'ó', 'ú', 'Á', 'É', 'Í', 'Ó', 'Ú', ' ', #8, #13]) then Abort;
end;



procedure TfrmNuevaPlazaReservada.edtUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then lblbtnAceptar1.Click;

  //Valido para solo letras (sin espacios ni tildes)
  if not (Key in['a'..'z', 'A'..'Z', 'ñ', 'Ñ', #8, #13]) then Abort;
end;



procedure TfrmNuevaPlazaReservada.edtContrasennaKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then lblbtnAceptar1.Click;
end;



procedure TfrmNuevaPlazaReservada.edtRepetirContrasennaKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then lblbtnAceptar1.Click;
end;



procedure TfrmNuevaPlazaReservada.btnVerificarUsuarioClick(Sender: TObject);
begin
  //Verifica que no haya un usuario igual en la base de datos (¡Por programar!)
end;





procedure TfrmNuevaPlazaReservada.cmbxPaisDrawItem(Control: TWinControl; Index: Integer; Rect: TRect;
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



procedure TfrmNuevaPlazaReservada.CentrarForma(var m : TWMWINDOWPOSCHANGED);
begin
  m.windowpos.x := (Screen.Width - Width) div 2;   {Left/Posicion X}
  m.windowpos.y := (Screen.Height - Height) div 2; {Left/Posicion X}
end;



procedure TfrmNuevaPlazaReservada.SoloNumerosKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then lblbtnAceptar1.Click;

  //Valido para solo numeros
  if not (Key in['0'..'9', #8, #13]) then Abort;
end;



procedure TfrmNuevaPlazaReservada.lblbtnCancelarClick(Sender: TObject);
begin
  //Cierro la forma
  frmNuevaPlazaReservada.Close;
end;



procedure TfrmNuevaPlazaReservada.RellenarPlazaTemporal;
begin
  //Creo el Huesped Temporal
  TempPlaza:= TPlazaReservada.Create;

  //Relleno sus campos personales
  TempPlaza.Nombre:= edtNombre.Text;
  TempPlaza.CarneIdentidad:= edtCarneIdentidad.Text;
  TempPlaza.Apellidos:= edtApellidos.Text;
  TempPlaza.TelefonoParticular:= edtTelefonoParticular.Text;
  TempPlaza.Pais:= cmbxPais.Text;
  TempPlaza.EmailHuesped:= edtEmailHuesped.Text;

  //En dependencia de si es cubano o no
  if (cmbxPais.Text = 'Cuba')
    then
      begin
        TempPlaza.ProvinciaHuesped:= DBlucmbxProvinciaHuesped.Text;
        TempPlaza.MunicipioHuesped:= DBlucmbxMunicipioHuesped.Text;
      end
        else
          begin
            TempPlaza.ProvinciaHuesped:= edtProvinciaHuesped.Text;
            TempPlaza.MunicipioHuesped:= edtMunicipioHuesped.Text;
          end;
          

  
  TempPlaza.DireccionParticular:= MemoDireccionParticular.Text;

  //Relleno sus campos laborales
  TempPlaza.NombreCentroLaboral:= edtNombreCentroLaboral.Text;
  TempPlaza.EmailCentroLaboral:= edtEmailCentroLaboral.Text;
  TempPlaza.TelefonoCentroLaboral:= edtTelefonoCentroLaboral.Text;
  
  //En dependencia de si es cubano o no
  if (cmbxPais.Text = 'Cuba')
    then
      begin
        TempPlaza.ProvinciaCentroLaboral:= DBlucmbxProvinciaCentroLaboral.Text;
        TempPlaza.MunicipioCentroLaboral:= DBlucmbxMunicipioCentroLaboral.Text;
      end
        else
          begin
            TempPlaza.ProvinciaCentroLaboral:= edtProvinciaCentroLaboral.Text;
            TempPlaza.MunicipioCentroLaboral:= edtMunicipioCentroLaboral.Text;
          end;

  TempPlaza.DireccionCentroLaboral:= MemoDireccionCentroLaboral.Text;

  //Relleno sus campos asignacion
  TempPlaza.ID_Cama:= StrToInt(DBtxtID_Cama.Field.Text);
end;



procedure TfrmNuevaPlazaReservada.SoloCaracteresKeyPress(Sender: TObject; var Key: Char);
begin
  //Valido para solo caracteres
  if not (Key in['a'..'z', 'A'..'Z', '0'..'9', #8, #13]) then Abort;
end;



procedure TfrmNuevaPlazaReservada.Solo3NumerosKeyPress(Sender: TObject; var Key: Char);
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


  
procedure TfrmNuevaPlazaReservada.lblbtnLimpiar1Click(Sender: TObject);
begin
  //Borro e inicializo los componentes
  BorrarComponentes;
end;



procedure TfrmNuevaPlazaReservada.BorrarComponentes;
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
end;



procedure TfrmNuevaPlazaReservada.cmbxPaisChange(Sender: TObject);
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

procedure TfrmNuevaPlazaReservada.DBlucmbxProvinciaHuespedClick(Sender: TObject);
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



function TfrmNuevaPlazaReservada.SeTeclearonLosValoresNecesarios: Boolean;
begin
  //En dependencia del motivo de hospedaje
  if (   (FMotivoHospedaje = 'Trabajador Interno') or (FMotivoHospedaje = 'Interés del Centro')   )
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
                  and (MemoDireccionCentroLaboral.Text <> '')   )
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
                    and (MemoDireccionCentroLaboral.Text <> '')   )
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



function TfrmNuevaPlazaReservada.SeAsignoUnaCama: Boolean;
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



procedure TfrmNuevaPlazaReservada.lblbtnAsignarCamaClick(Sender: TObject);
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
            frmNuevaPlazaReservada.Close;
          end;
end;



procedure TfrmNuevaPlazaReservada.DBGridHabitacionesConVacantesCellClick(Column: TColumn);
var
  ID_Habitacion: Integer;
begin
  //Recojo el ID de la habitacion con vacantes seleccionada
  ID_Habitacion:= StrToInt(DBtxtID_Habitacion.Field.Text);

  //Muetsro las camas libres para registro, para la habitacion seleccionada
  HostalWare.MostrarCamasLibresPorID_HabitacionParaRegistro(ID_Habitacion);
end;



procedure TfrmNuevaPlazaReservada.DBGridHabitacionesConVacantesMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  //Mando a actualizar los lechos para Registro (en general)
  ActualizarSoloLechosParaRegistro;
end;



procedure TfrmNuevaPlazaReservada.lblbtnAnularAsignacionClick(Sender: TObject);
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



procedure TfrmNuevaPlazaReservada.PageDatosShow(Sender: TObject);
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



procedure TfrmNuevaPlazaReservada.PageLaboralesShow(Sender: TObject);
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



procedure TfrmNuevaPlazaReservada.DBlucmbxProvinciaCentroLaboralClick(Sender: TObject);
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



procedure TfrmNuevaPlazaReservada.cmbxMotivoHospedajeChange(Sender: TObject);
begin
  //Valido los Componentes que se llenarán
  if (FMotivoHospedaje = 'Trabajador Interno')
    then
      begin //Es un Trabajador Interno
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



procedure TfrmNuevaPlazaReservada.ActualizarCapacidadesParaRegistro;
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



procedure TfrmNuevaPlazaReservada.cmbxFiltroXPisoChange(Sender: TObject);
begin
  //Mando a actualizar las Capacidades para Registro
  ActualizarCapacidadesParaRegistro;
end;



procedure TfrmNuevaPlazaReservada.cmbxFiltroXTipoLechoChange(Sender: TObject);
begin
  //Mando a actualizar las Capacidades para Registro
  ActualizarCapacidadesParaRegistro;
end;



procedure TfrmNuevaPlazaReservada.ActualizarSoloLechosParaRegistro;
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

procedure TfrmNuevaPlazaReservada.DBAdvGlowNavigatorHabitacionesExistentesClick(
  Sender: TObject; Button: TAdvNavigateBtn);
begin
  //Muestro y actualizo los lechos (en general)
  ActualizarSoloLechosParaRegistro;
end;

end.
