unit UfrmNuevaReservacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,

  //Clases de Control
  UGestionCursistasHospedados,

  //Clases Entidad
  UHabitacion,
  UCama,
  UHuesped,
  UReservacion,
  UPlazaReservada, 

  //Clases Interfaz
  UfrmNuevaPlazaReservada,
  
  //DataModules
  UDataModuleAdminCapacidades,
  UDataModuleRegistroDeHuespedes,
  UDataModuleReservaciones,
  
  //Otros
  LbButton,

  //Dialogs especiales, esquemas, etc (Message Master)
  MessDlgs, AdvEdit, AdvCombo, Mask, AdvSpin, AdvGroupBox, AdvOfficePager,
  AdvOfficePagerStylers, Grids, DBGrids, ColListb, BaseGrid, AdvGrid,
  AdvSmoothListBox, AdvSmoothPanel, AdvSmoothMenu, DBCtrls, AppEvnts,
  ImgList, AdvMemo, AdvmBS, AdvOfficeButtons, LayeredForm,
  AdvSmartMessageBox, ComCtrls, AdvDateTimePicker, AdvPanel, DBAdvGrid,
  DBAdvGlowNavigator, AdvOfficeComboBox, AdvSmoothEdit,
  AdvSmoothEditButton, AdvSmoothDatePicker, AdvSmoothCalendar,
  AdvGlassButton;

  
type
  TfrmNuevaReservacion = class(TForm)
    grbxActividades: TAdvGroupBox;
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
    edtTituloActividad: TEdit;
    edtNombreInstitucionActividad: TEdit;
    MemoDireccionActividad: TMemo;
    edtEmailActividad: TEdit;
    edtTelefonoActividad: TEdit;
    edtNombreCoordinadorActividad: TEdit;
    cmbxMotivoHospedaje: TAdvOfficeSelector;
    cmbxModalidad: TAdvOfficeSelector;
    dtpFechaInicioActividad: TAdvSmoothDatePicker;
    dtpFechaFinalActividad: TAdvSmoothDatePicker;
    grbxConDerechoA: TAdvGroupBox;
    lblLugarConsumo: TLabel;
    chkbxDesayuno: TAdvOfficeCheckBox;
    chkbxAlmuerzo: TAdvOfficeCheckBox;
    chkbxComida: TAdvOfficeCheckBox;
    cmbxLugarConsumo: TAdvOfficeSelector;
    lblFechaFinalHospedaje: TLabel;
    dtpFechaFinalHospedaje: TAdvDateTimePicker;
    lblbtnCancelar3: TLbButton;
    lblbtnAceptar3: TLbButton;
    lblbtnLimpiar3: TLbButton;
    Panel5: TPanel;
    grbxPlazasReservadas: TAdvGroupBox;
    DBGridPlazasReservadas: TDBAdvGrid;
    btnAgregarPlaza: TAdvGlassButton;
    btnEliminarPlaza: TAdvGlassButton;
    lblFechaInicioHospedaje: TLabel;
    dtpFechaInicioHospedaje: TAdvDateTimePicker;

    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure CentrarForma(var m: TWMWINDOWPOSCHANGED); message
    WM_WINDOWPOSCHANGING;

    procedure lblbtnCancelarClick(Sender: TObject);
    procedure lblbtnAceptarClick(Sender: TObject);
    procedure lblbtnLimpiar1Click(Sender: TObject);
    procedure cmbxMotivoHospedajeChange(Sender: TObject);
    procedure btnAgregarPlazaClick(Sender: TObject);
    procedure btnEliminarPlazaClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    FID_Cama: Integer;
    procedure RellenarHuespedTemporal;
    procedure BorrarComponentes;


    function SeAsignoUnaCama: Boolean;
    function SeTeclearonLosValoresNecesarios: Boolean;
  end;

var
  frmNuevaReservacion: TfrmNuevaReservacion;

implementation

uses StrUtils;
var
    HostalWare: TGestionCursistasHospedados;
    TempHuesped: THuesped;
    TempHabitacion: THabitacion;
    TempCama: TCama;
{$R *.dfm}



procedure TfrmNuevaReservacion.btnCancelarClick(Sender: TObject);
begin
  //Cierro la forma
  frmNuevaReservacion.Close;
end;



procedure TfrmNuevaReservacion.FormShow(Sender: TObject);
var
  hMenuHandle : HMENU;
  ID_ProvinciaHuesped, ID_ProvinciaCentroLaboral: Integer;
  ID_Habitacion: Integer;
begin
{
  //Mando a reiniciar los componentes (limpio cambios anteriores)
  lblbtnLimpiar3.Click;

  //Pongo el FID_Cama en cero
  FID_Cama:= 0;
  
  //Aquí deshabilito el botón de Cerrar de la forma
  hMenuHandle := GetSystemMenu(frmNuevaReservacion.Handle, FALSE);

  if (hMenuHandle <> 0)
    then
      begin
        DeleteMenu(hMenuHandle, SC_CLOSE, MF_BYCOMMAND);
      end;

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
}
end;



procedure TfrmNuevaReservacion.CentrarForma(var m : TWMWINDOWPOSCHANGED);
begin
  m.windowpos.x := (Screen.Width - Width) div 2;   {Left/Posicion X}
  m.windowpos.y := (Screen.Height - Height) div 2; {Left/Posicion X}
end;



procedure TfrmNuevaReservacion.lblbtnCancelarClick(Sender: TObject);
begin
  //Cierro la forma
  frmNuevaReservacion.Close;
end;



procedure TfrmNuevaReservacion.lblbtnAceptarClick(Sender: TObject);
var
  i, ID_Habitacion: Integer;
  NumeroIncompleto: AnsiString;
begin
{
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
                   frmNuevaReservacion.Close;
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
            frmNuevaReservacion.Close;
          end;
}          
end;



procedure TfrmNuevaReservacion.RellenarHuespedTemporal;
begin
{
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

  TempHuesped.FechaInicioHospedaje:= HostalWare.ObtenerFechaDelSistema;
  TempHuesped.FechaFinalHospedaje:= DateToStr(dtpFechaFinalHospedaje.Date);
  
  TempHuesped.HoraInicioHospedaje:= HostalWare.ObtenerHoraDelSistema;
  TempHuesped.HoraFinalHospedaje:=  TimeToStr(dtpFechaFinalHospedaje.Time);

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
}  
end;


  
procedure TfrmNuevaReservacion.lblbtnLimpiar1Click(Sender: TObject);
begin
  //Borro e inicializo los componentes
  BorrarComponentes;
end;



procedure TfrmNuevaReservacion.BorrarComponentes;
begin
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
end;




function TfrmNuevaReservacion.SeTeclearonLosValoresNecesarios: Boolean;
begin
{
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
}          
end;



function TfrmNuevaReservacion.SeAsignoUnaCama: Boolean;
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



procedure TfrmNuevaReservacion.cmbxMotivoHospedajeChange(Sender: TObject);
begin
{
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
}          
end;



procedure TfrmNuevaReservacion.btnAgregarPlazaClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
        frmNuevaReservacion.Caption:= 'Nueva Reservación. Agregando una Plaza.';

        //Envio el motivo de hospedaje a la forma de nueva plaza
        frmNuevaPlazaReservada.FMotivoHospedaje:= cmbxMotivoHospedaje.Text;

        //Muestro la forma de entrada de datos de la Reservación
        frmNuevaPlazaReservada.Position:= poDesktopCenter;
        frmNuevaPlazaReservada.ShowModal;

        //Mando a actualizar las Plazas Reservadas
        

        //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
        frmNuevaReservacion.Caption:= 'Nueva Reservación';
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmNuevaReservacion.btnEliminarPlazaClick(Sender: TObject);
begin
//
end;



end.
