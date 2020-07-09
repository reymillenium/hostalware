unit UfrmTrasladarRegistro;

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
  TfrmTrasladarRegistro = class(TForm)
    AdvOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    OfficePagerNuevoRegistro: TAdvOfficePager;
    PageAsignacion: TAdvOfficePage;
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
    lblCantidadHabitaciones: TLabel;
    DBAdvGlowNavigatorHabitacionesExistentes: TDBAdvGlowNavigator;
    lblCantidadCamas: TLabel;
    cmbxFiltroXPiso: TAdvOfficeSelector;
    cmbxFiltroXTipoLecho: TAdvOfficeSelector;
    DBtxtNombreHuesped: TDBText;
    DBtxtApellidosHuesped: TDBText;
    DBtxtCarneIdentidad: TDBText;
    DBtxtNumeroSerieCama: TDBText;
    DBtxtNumeroHabitacion: TDBText;

    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtNumeroHabitacionKeyPress(Sender: TObject; var Key: Char);
    procedure edtPrimerApellidoKeyPress(Sender: TObject; var Key: Char);
    procedure edtSegundoApellidoKeyPress(Sender: TObject; var Key: Char);
    procedure edtUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure edtContrasennaKeyPress(Sender: TObject; var Key: Char);
    procedure edtRepetirContrasennaKeyPress(Sender: TObject; var Key: Char);
    procedure btnVerificarUsuarioClick(Sender: TObject);

    procedure CentrarForma(var m: TWMWINDOWPOSCHANGED); message
    WM_WINDOWPOSCHANGING;

    procedure SoloNumerosKeyPress(Sender: TObject; var Key: Char);
    procedure lblbtnCancelarClick(Sender: TObject);
    procedure lblbtnAceptarClick(Sender: TObject);
    procedure SoloCaracteresKeyPress(Sender: TObject; var Key: Char);
    procedure Solo3NumerosKeyPress(Sender: TObject; var Key: Char);
    procedure lblbtnAsignarCamaClick(Sender: TObject);
    procedure DBGridHabitacionesConVacantesCellClick(Column: TColumn);
    procedure DBGridHabitacionesConVacantesMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure lblbtnAnularAsignacionClick(Sender: TObject);
    procedure cmbxFiltroXPisoChange(Sender: TObject);
    procedure cmbxFiltroXTipoLechoChange(Sender: TObject);
    procedure DBAdvGlowNavigatorHabitacionesExistentesClick(
      Sender: TObject; Button: TAdvNavigateBtn);

  private
    { Private declarations }
  public
    { Public declarations }
    FID_Huesped: Integer;
    FID_Cama: Integer;
    FNuevoID_Cama: Integer;
    
    procedure ActualizarCapacidadesParaRegistro;
    procedure ActualizarSoloLechosParaRegistro;

    function SeAsignoUnaCama: Boolean;
  end;

var
  frmTrasladarRegistro: TfrmTrasladarRegistro;

implementation

uses StrUtils;
var
    HostalWare: TGestionCursistasHospedados;
    //TempHuesped: THuesped;
    //TempHabitacion: THabitacion;
    //TempCama: TCama;
{$R *.dfm}



procedure TfrmTrasladarRegistro.btnCancelarClick(Sender: TObject);
begin
  //Cierro la forma
  frmTrasladarRegistro.Close;
end;



procedure TfrmTrasladarRegistro.FormShow(Sender: TObject);
var
  hMenuHandle : HMENU;
  ID_ProvinciaHuesped, ID_ProvinciaCentroLaboral: Integer;
  ID_Habitacion: Integer;
begin
  //Pongo el FNuevoID_Cama en cero
  FNuevoID_Cama:= 0;

  //Deshabilito el boton de Asignar
  lblbtnAceptar4.Enabled:= False;

  //En dependencia de si hubo asignación de cama o no
  if (FNuevoID_Cama = 0)
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
  hMenuHandle := GetSystemMenu(frmTrasladarRegistro.Handle, FALSE);

  if (hMenuHandle <> 0)
    then
      begin
        DeleteMenu(hMenuHandle, SC_CLOSE, MF_BYCOMMAND);
      end;

  //Busco los datos necesarios del huésped que deseo trasladar
  HostalWare.MostrarDatosTotalesDeHuespedPorID_Huesped(FID_Huesped);

  //Mando a actualizar las Capacidades para Registro
  ActualizarCapacidadesParaRegistro;

  //Modifico el Caption de la forma, por una razon informativa
  frmTrasladarRegistro.Caption:= 'Traslado de Registro - ' + DBtxtNombreHuesped.Field.Text + ' ' + DBtxtApellidosHuesped.Field.Text + ' (Habitación: ' + DBtxtNumeroHabitacion.Field.Text + ', Cama: ' + DBtxtNumeroSerieCama.Field.Text + ')';


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



procedure TfrmTrasladarRegistro.edtNumeroHabitacionKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then lblbtnAceptar4.Click;

  //Valido para solo nombres
  if not (Key in['a'..'z', 'A'..'Z', 'ñ', 'Ñ', 'á', 'é', 'í', 'ó', 'ú', 'Á', 'É', 'Í', 'Ó', 'Ú', ' ', #8, #13]) then Abort;
end;



procedure TfrmTrasladarRegistro.edtPrimerApellidoKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then lblbtnAceptar4.Click;

  //Valido para solo nombres
  if not (Key in['a'..'z', 'A'..'Z', 'ñ', 'Ñ', 'á', 'é', 'í', 'ó', 'ú', 'Á', 'É', 'Í', 'Ó', 'Ú', ' ', #8, #13]) then Abort;
end;



procedure TfrmTrasladarRegistro.edtSegundoApellidoKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then lblbtnAceptar4.Click;

  //Valido para solo nombres
  if not (Key in['a'..'z', 'A'..'Z', 'ñ', 'Ñ', 'á', 'é', 'í', 'ó', 'ú', 'Á', 'É', 'Í', 'Ó', 'Ú', ' ', #8, #13]) then Abort;
end;



procedure TfrmTrasladarRegistro.edtUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then lblbtnAceptar4.Click;

  //Valido para solo letras (sin espacios ni tildes)
  if not (Key in['a'..'z', 'A'..'Z', 'ñ', 'Ñ', #8, #13]) then Abort;
end;



procedure TfrmTrasladarRegistro.edtContrasennaKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then lblbtnAceptar4.Click;
end;



procedure TfrmTrasladarRegistro.edtRepetirContrasennaKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then lblbtnAceptar4.Click;
end;



procedure TfrmTrasladarRegistro.btnVerificarUsuarioClick(Sender: TObject);
begin
  //Verifica que no haya un usuario igual en la base de datos (¡Por programar!)
end;





procedure TfrmTrasladarRegistro.CentrarForma(var m : TWMWINDOWPOSCHANGED);
begin
  m.windowpos.x := (Screen.Width - Width) div 2;   {Left/Posicion X}
  m.windowpos.y := (Screen.Height - Height) div 2; {Left/Posicion X}
end;



procedure TfrmTrasladarRegistro.SoloNumerosKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then lblbtnAceptar4.Click;

  //Valido para solo numeros
  if not (Key in['0'..'9', #8, #13]) then Abort;
end;



procedure TfrmTrasladarRegistro.lblbtnCancelarClick(Sender: TObject);
begin
  //Cierro la forma
  frmTrasladarRegistro.Close;
end;



procedure TfrmTrasladarRegistro.lblbtnAceptarClick(Sender: TObject);
var
  Nombre,
  Apellidos,
  CarneIdentidad,
  NumeroSerieCama,
  NumeroHabitacion: AnsiString;

  NuevoNumeroSerieCama,
  NuevoNumeroHabitacion : AnsiString;
begin

  //Primero verifico que aun exista conexión con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Luego verifico que se haya asignado una cama los valores necesarios
        if (SeAsignoUnaCama = True)
          then
            begin //Se asignó una cama al futuro hospedado
              //Tomo los valores necesarios para conformar la traza
              Nombre:= DBtxtNombreHuesped.Field.Text;
              Apellidos:= DBtxtApellidosHuesped.Field.Text;
              CarneIdentidad:= DBtxtCarneIdentidad.Field.Text;
              NumeroSerieCama:= DBtxtNumeroSerieCama.Field.Text;
              NumeroHabitacion:= DBtxtNumeroHabitacion.Field.Text;

              NuevoNumeroSerieCama:= DBGridCamasLibresExistentes.SelectedField.Value;
              NuevoNumeroHabitacion:= DBGridHabitacionesConVacantes.SelectedField.Value;

              //Le modifico el ID_Cama del huésped (lo traslado hacia otra cama)
              HostalWare.TrasladarHuespedDeCamaPorID_Huesped(FNuevoID_Cama, FID_Huesped);

              //Ocupo la Nueva Cama que se le dio al huésped
              HostalWare.OcuparCamaPorID_Cama(FNuevoID_Cama);

              //Libero la cama anterior del huésped
              HostalWare.LiberarCamaPorID_Cama(FID_Cama);

              //Inserto la Traza (AUN POR TERMINAR)
              HostalWare.GuardarTrazaDelSistema('Trasladó al huésped ' + Nombre + ' ' + Apellidos + ', con Carné de Identidad ' + CarneIdentidad + ', que inicialmente estaba en la habitación ' + NumeroHabitacion + ' y en la cama ' + NumeroSerieCama + ', hacia la cama ' + NuevoNumeroSerieCama + ' en la habitación ' + NuevoNumeroHabitacion);

              //Actualizo todas las trazas
              HostalWare.MostrarTodasLasTrazas;

             //Cierro la forma
             frmTrasladarRegistro.Close;
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
            frmTrasladarRegistro.Close;
          end;
end;



procedure TfrmTrasladarRegistro.SoloCaracteresKeyPress(Sender: TObject; var Key: Char);
begin
  //Valido para solo caracteres
  if not (Key in['a'..'z', 'A'..'Z', '0'..'9', #8, #13]) then Abort;
end;



procedure TfrmTrasladarRegistro.Solo3NumerosKeyPress(Sender: TObject; var Key: Char);
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


  

function TfrmTrasladarRegistro.SeAsignoUnaCama: Boolean;
begin
  //Verifico si se asignó una cama al hospedado
  if (FNuevoID_Cama <> 0)
    then
      begin
        Result:= True;
      end
        else
          begin
            Result:= False;
          end;
end;



procedure TfrmTrasladarRegistro.lblbtnAsignarCamaClick(Sender: TObject);
begin
  //Primero verifico que aun exista conexión con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Asigno el Nuevo ID_Cama a la variable global
        FNuevoID_Cama:= StrToInt(DBtxtID_Cama.Field.Text);

        //En dependencia de si hubo asignación de nueva cama, o no
        if (FNuevoID_Cama = 0)
          then
            begin //No hubo asignación
              lblbtnAsignarCama.Enabled:= True;
              lblbtnAnularAsignacion.Enabled:= False;

              //Habilito los componentes
              cmbxFiltroXPiso.Enabled:= True;
              cmbxFiltroXTipoLecho.Enabled:= True;
              DBGridHabitacionesConVacantes.Enabled:= True;
              DBGridCamasLibresExistentes.Enabled:= True;
              DBAdvGlowNavigatorHabitacionesExistentes.Enabled:= True;

              //Deshabilito el boton de Aceptar (no puedo trasladar aun)
              lblbtnAceptar4.Enabled:= False;
            end
              else
                begin //Hubo asignación
                  lblbtnAsignarCama.Enabled:= False;
                  lblbtnAnularAsignacion.Enabled:= True;

                  //Deshabilito los componentes
                  cmbxFiltroXPiso.Enabled:= False;
                  cmbxFiltroXTipoLecho.Enabled:= False;
                  DBGridHabitacionesConVacantes.Enabled:= False;
                  DBGridCamasLibresExistentes.Enabled:= False;
                  DBAdvGlowNavigatorHabitacionesExistentes.Enabled:= False;

                  //Habilito el boton de Aceptar (ya puedo trasladar)
                  lblbtnAceptar4.Enabled:= True;
                end;
      end
        else  //No existe conexión con la BD
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);

            //Cierro la forma
            frmTrasladarRegistro.Close;
          end;
end;



procedure TfrmTrasladarRegistro.DBGridHabitacionesConVacantesCellClick(Column: TColumn);
var
  ID_Habitacion: Integer;
begin
  //Recojo el ID de la habitacion con vacantes seleccionada
  ID_Habitacion:= StrToInt(DBtxtID_Habitacion.Field.Text);

  //Muetsro las camas libres para registro, para la habitacion seleccionada
  HostalWare.MostrarCamasLibresPorID_HabitacionParaRegistro(ID_Habitacion);
end;



procedure TfrmTrasladarRegistro.DBGridHabitacionesConVacantesMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X,
  Y: Integer);
begin
  //Mando a actualizar los lechos para Registro (en general)
  ActualizarSoloLechosParaRegistro;
end;



procedure TfrmTrasladarRegistro.lblbtnAnularAsignacionClick(Sender: TObject);
begin
  //Le otorgo cero a la variable global
  FNuevoID_Cama:= 0;

  //En dependencia de si hubo asignación de nueva cama, o no
  if (FNuevoID_Cama = 0)
    then
      begin //No hubo asignación
        lblbtnAsignarCama.Enabled:= True;
        lblbtnAnularAsignacion.Enabled:= False;

        //Habilito los componentes
        cmbxFiltroXPiso.Enabled:= True;
        cmbxFiltroXTipoLecho.Enabled:= True;
        DBGridHabitacionesConVacantes.Enabled:= True;
        DBGridCamasLibresExistentes.Enabled:= True;
        DBAdvGlowNavigatorHabitacionesExistentes.Enabled:= True;

        //Deshabilito el boton de Aceptar (no puedo trasladar aun)
        lblbtnAceptar4.Enabled:= False;
      end
        else
          begin //Hubo asignación
            lblbtnAsignarCama.Enabled:= False;
            lblbtnAnularAsignacion.Enabled:= True;

            //Deshabilito los componentes
            cmbxFiltroXPiso.Enabled:= False;
            cmbxFiltroXTipoLecho.Enabled:= False;
            DBGridHabitacionesConVacantes.Enabled:= False;
            DBGridCamasLibresExistentes.Enabled:= False;
            DBAdvGlowNavigatorHabitacionesExistentes.Enabled:= False;

            //Habilito el boton de Aceptar (ya puedo trasladar)
            lblbtnAceptar4.Enabled:= True;
          end;
end;



procedure TfrmTrasladarRegistro.ActualizarCapacidadesParaRegistro;
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

                          //Valido la habilitación de los botones de 'Asignar' y 'Anular Asignación'
                          if (HostalWare.CantidadLechosLibresParaRegistro > 0)
                            then
                              begin
                                lblbtnAsignarCama.Enabled:= True;

                                if (SeAsignoUnaCama = True)
                                  then
                                    begin
                                      lblbtnAnularAsignacion.Enabled:= True;
                                    end
                                      else
                                        begin
                                          lblbtnAnularAsignacion.Enabled:= False;
                                        end;
                              end
                                else
                                  begin
                                    lblbtnAsignarCama.Enabled:= False;
                              
                                    if (SeAsignoUnaCama = True)
                                      then
                                        begin
                                          lblbtnAnularAsignacion.Enabled:= True;
                                        end
                                          else
                                            begin
                                              lblbtnAnularAsignacion.Enabled:= False;
                                            end;
                                  end;

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

                              //Valido la habilitación de los botones de 'Asignar' y 'Anular Asignación'
                              if (HostalWare.CantidadLechosLibresParaRegistro > 0)
                                then
                                  begin
                                    lblbtnAsignarCama.Enabled:= True;

                                    if (SeAsignoUnaCama = True)
                                      then
                                        begin
                                          lblbtnAnularAsignacion.Enabled:= True;
                                        end
                                          else
                                            begin
                                              lblbtnAnularAsignacion.Enabled:= False;
                                            end;
                                  end
                                    else
                                      begin
                                        lblbtnAsignarCama.Enabled:= False;
                              
                                        if (SeAsignoUnaCama = True)
                                          then
                                            begin
                                              lblbtnAnularAsignacion.Enabled:= True;
                                            end
                                              else
                                                begin
                                                  lblbtnAnularAsignacion.Enabled:= False;
                                                end;
                                      end;

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

                                    //Valido la habilitación de los botones de 'Asignar' y 'Anular Asignación'
                                    if (HostalWare.CantidadCamasLibresParaRegistro > 0)
                                      then
                                        begin
                                          lblbtnAsignarCama.Enabled:= True;

                                          if (SeAsignoUnaCama = True)
                                            then
                                              begin
                                                lblbtnAnularAsignacion.Enabled:= True;
                                              end
                                                else
                                                  begin
                                                    lblbtnAnularAsignacion.Enabled:= False;
                                                  end;
                                        end
                                          else
                                            begin
                                              lblbtnAsignarCama.Enabled:= False;
                              
                                              if (SeAsignoUnaCama = True)
                                                then
                                                  begin
                                                    lblbtnAnularAsignacion.Enabled:= True;
                                                  end
                                                    else
                                                      begin
                                                        lblbtnAnularAsignacion.Enabled:= False;
                                                      end;
                                            end;

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

                                        //Valido la habilitación de los botones de 'Asignar' y 'Anular Asignación'
                                        if (HostalWare.CantidadCamasLibresParaRegistro > 0)
                                          then
                                            begin
                                              lblbtnAsignarCama.Enabled:= True;

                                              if (SeAsignoUnaCama = True)
                                                then
                                                  begin
                                                    lblbtnAnularAsignacion.Enabled:= True;
                                                  end
                                                    else
                                                      begin
                                                        lblbtnAnularAsignacion.Enabled:= False;
                                                      end;
                                            end
                                              else
                                                begin
                                                  lblbtnAsignarCama.Enabled:= False;
                              
                                                  if (SeAsignoUnaCama = True)
                                                    then
                                                      begin
                                                        lblbtnAnularAsignacion.Enabled:= True;
                                                      end
                                                        else
                                                          begin
                                                            lblbtnAnularAsignacion.Enabled:= False;
                                                          end;
                                                end;

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

                                              //Valido la habilitación de los botones de 'Asignar' y 'Anular Asignación'
                                              if (HostalWare.CantidadLiterasLibresParaRegistro > 0)
                                                then
                                                  begin
                                                    lblbtnAsignarCama.Enabled:= True;

                                                    if (SeAsignoUnaCama = True)
                                                      then
                                                        begin
                                                          lblbtnAnularAsignacion.Enabled:= True;
                                                        end
                                                          else
                                                            begin
                                                              lblbtnAnularAsignacion.Enabled:= False;
                                                            end;
                                                  end
                                                    else
                                                      begin
                                                        lblbtnAsignarCama.Enabled:= False;
                              
                                                        if (SeAsignoUnaCama = True)
                                                          then
                                                            begin
                                                              lblbtnAnularAsignacion.Enabled:= True;
                                                            end
                                                              else
                                                                begin
                                                                  lblbtnAnularAsignacion.Enabled:= False;
                                                                end;
                                                      end;

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

                                                  //Valido la habilitación de los botones de 'Asignar' y 'Anular Asignación'
                                                  if (HostalWare.CantidadLiterasLibresParaRegistro > 0)
                                                    then
                                                      begin
                                                        lblbtnAsignarCama.Enabled:= True;

                                                        if (SeAsignoUnaCama = True)
                                                          then
                                                            begin
                                                              lblbtnAnularAsignacion.Enabled:= True;
                                                            end
                                                              else
                                                                begin
                                                                  lblbtnAnularAsignacion.Enabled:= False;
                                                                end;
                                                      end
                                                        else
                                                          begin
                                                            lblbtnAsignarCama.Enabled:= False;
                              
                                                            if (SeAsignoUnaCama = True)
                                                              then
                                                                begin
                                                                  lblbtnAnularAsignacion.Enabled:= True;
                                                                end
                                                                  else
                                                                    begin
                                                                      lblbtnAnularAsignacion.Enabled:= False;
                                                                    end;
                                                          end;

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

                                                        //Valido la habilitación de los botones de 'Asignar' y 'Anular Asignación'
                                                        if (HostalWare.CantidadLiterasArribaLibresParaRegistro > 0)
                                                          then
                                                            begin
                                                              lblbtnAsignarCama.Enabled:= True;

                                                              if (SeAsignoUnaCama = True)
                                                                then
                                                                  begin
                                                                    lblbtnAnularAsignacion.Enabled:= True;
                                                                  end
                                                                    else
                                                                      begin
                                                                        lblbtnAnularAsignacion.Enabled:= False;
                                                                      end;
                                                            end
                                                              else
                                                                begin
                                                                  lblbtnAsignarCama.Enabled:= False;
                              
                                                                  if (SeAsignoUnaCama = True)
                                                                    then
                                                                      begin
                                                                        lblbtnAnularAsignacion.Enabled:= True;
                                                                      end
                                                                        else
                                                                          begin
                                                                            lblbtnAnularAsignacion.Enabled:= False;
                                                                          end;
                                                                end;

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

                                                            //Valido la habilitación de los botones de 'Asignar' y 'Anular Asignación'
                                                            if (HostalWare.CantidadLiterasArribaLibresParaRegistro > 0)
                                                              then
                                                                begin
                                                                  lblbtnAsignarCama.Enabled:= True;

                                                                  if (SeAsignoUnaCama = True)
                                                                    then
                                                                      begin
                                                                        lblbtnAnularAsignacion.Enabled:= True;
                                                                      end
                                                                        else
                                                                          begin
                                                                            lblbtnAnularAsignacion.Enabled:= False;
                                                                          end;
                                                                end
                                                                  else
                                                                    begin
                                                                      lblbtnAsignarCama.Enabled:= False;
                              
                                                                      if (SeAsignoUnaCama = True)
                                                                        then
                                                                          begin
                                                                            lblbtnAnularAsignacion.Enabled:= True;
                                                                          end
                                                                            else
                                                                              begin
                                                                                lblbtnAnularAsignacion.Enabled:= False;
                                                                              end;
                                                                    end;

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

                                                                  //Valido la habilitación de los botones de 'Asignar' y 'Anular Asignación'
                                                                  if (HostalWare.CantidadLiterasAbajoLibresParaRegistro > 0)
                                                                    then
                                                                      begin
                                                                        lblbtnAsignarCama.Enabled:= True;

                                                                        if (SeAsignoUnaCama = True)
                                                                          then
                                                                            begin
                                                                              lblbtnAnularAsignacion.Enabled:= True;
                                                                            end
                                                                              else
                                                                                begin
                                                                                  lblbtnAnularAsignacion.Enabled:= False;
                                                                                end;
                                                                      end
                                                                        else
                                                                          begin
                                                                            lblbtnAsignarCama.Enabled:= False;
                              
                                                                            if (SeAsignoUnaCama = True)
                                                                              then
                                                                                begin
                                                                                  lblbtnAnularAsignacion.Enabled:= True;
                                                                                end
                                                                                  else
                                                                                    begin
                                                                                      lblbtnAnularAsignacion.Enabled:= False;
                                                                                    end;
                                                                          end;

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

                                                                      //Valido la habilitación de los botones de 'Asignar' y 'Anular Asignación'
                                                                      if (HostalWare.CantidadLiterasAbajoLibresParaRegistro > 0)
                                                                        then
                                                                          begin
                                                                            lblbtnAsignarCama.Enabled:= True;

                                                                            if (SeAsignoUnaCama = True)
                                                                              then
                                                                                begin
                                                                                  lblbtnAnularAsignacion.Enabled:= True;
                                                                                end
                                                                                  else
                                                                                    begin
                                                                                      lblbtnAnularAsignacion.Enabled:= False;
                                                                                    end;
                                                                          end
                                                                            else
                                                                              begin
                                                                                lblbtnAsignarCama.Enabled:= False;
                              
                                                                                if (SeAsignoUnaCama = True)
                                                                                  then
                                                                                    begin
                                                                                      lblbtnAnularAsignacion.Enabled:= True;
                                                                                    end
                                                                                      else
                                                                                        begin
                                                                                          lblbtnAnularAsignacion.Enabled:= False;
                                                                                        end;
                                                                              end;

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

                              //Valido la habilitación de los botones de 'Asignar' y 'Anular Asignación'
                              if (HostalWare.CantidadLechosLibresParaRegistro > 0)
                                then
                                  begin
                                    lblbtnAsignarCama.Enabled:= True;

                                    if (SeAsignoUnaCama = True)
                                      then
                                        begin
                                          lblbtnAnularAsignacion.Enabled:= True;
                                        end
                                          else
                                            begin
                                              lblbtnAnularAsignacion.Enabled:= False;
                                            end;
                                  end
                                    else
                                      begin
                                        lblbtnAsignarCama.Enabled:= False;
                              
                                        if (SeAsignoUnaCama = True)
                                          then
                                            begin
                                              lblbtnAnularAsignacion.Enabled:= True;
                                            end
                                              else
                                                begin
                                                  lblbtnAnularAsignacion.Enabled:= False;
                                                end;
                                      end;

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

                                  //Valido la habilitación de los botones de 'Asignar' y 'Anular Asignación'
                                  if (HostalWare.CantidadLechosLibresParaRegistro > 0)
                                    then
                                      begin
                                        lblbtnAsignarCama.Enabled:= True;

                                        if (SeAsignoUnaCama = True)
                                          then
                                            begin
                                              lblbtnAnularAsignacion.Enabled:= True;
                                            end
                                              else
                                                begin
                                                  lblbtnAnularAsignacion.Enabled:= False;
                                                end;
                                      end
                                        else
                                          begin
                                            lblbtnAsignarCama.Enabled:= False;
                              
                                            if (SeAsignoUnaCama = True)
                                              then
                                                begin
                                                  lblbtnAnularAsignacion.Enabled:= True;
                                                end
                                                  else
                                                    begin
                                                      lblbtnAnularAsignacion.Enabled:= False;
                                                    end;
                                          end;

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

                                        //Valido la habilitación de los botones de 'Asignar' y 'Anular Asignación'
                                        if (HostalWare.CantidadCamasLibresParaRegistro > 0)
                                          then
                                            begin
                                              lblbtnAsignarCama.Enabled:= True;

                                              if (SeAsignoUnaCama = True)
                                                then
                                                  begin
                                                    lblbtnAnularAsignacion.Enabled:= True;
                                                  end
                                                    else
                                                      begin
                                                        lblbtnAnularAsignacion.Enabled:= False;
                                                      end;
                                            end
                                              else
                                                begin
                                                  lblbtnAsignarCama.Enabled:= False;
                              
                                                  if (SeAsignoUnaCama = True)
                                                    then
                                                      begin
                                                        lblbtnAnularAsignacion.Enabled:= True;
                                                      end
                                                        else
                                                          begin
                                                            lblbtnAnularAsignacion.Enabled:= False;
                                                          end;
                                                end;

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

                                            //Muestro los lechos para la habitacion seleccionada
                                            HostalWare.MostrarCamasLibresPorID_HabitacionParaRegistro(ID_Habitacion);

                                            //Valido la habilitación de los botones de 'Asignar' y 'Anular Asignación'
                                            if (HostalWare.CantidadCamasLibresParaRegistro > 0)
                                              then
                                                begin
                                                  lblbtnAsignarCama.Enabled:= True;

                                                  if (SeAsignoUnaCama = True)
                                                    then
                                                      begin
                                                        lblbtnAnularAsignacion.Enabled:= True;
                                                      end
                                                        else
                                                          begin
                                                            lblbtnAnularAsignacion.Enabled:= False;
                                                          end;
                                                end
                                                  else
                                                    begin
                                                      lblbtnAsignarCama.Enabled:= False;
                              
                                                      if (SeAsignoUnaCama = True)
                                                        then
                                                          begin
                                                            lblbtnAnularAsignacion.Enabled:= True;
                                                          end
                                                            else
                                                              begin
                                                                lblbtnAnularAsignacion.Enabled:= False;
                                                              end;
                                                    end;

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

                                                  //Valido la habilitación de los botones de 'Asignar' y 'Anular Asignación'
                                                  if (HostalWare.CantidadLiterasLibresParaRegistro > 0)
                                                    then
                                                      begin
                                                        lblbtnAsignarCama.Enabled:= True;

                                                        if (SeAsignoUnaCama = True)
                                                          then
                                                            begin
                                                              lblbtnAnularAsignacion.Enabled:= True;
                                                            end
                                                              else
                                                                begin
                                                                  lblbtnAnularAsignacion.Enabled:= False;
                                                                end;
                                                      end
                                                        else
                                                          begin
                                                            lblbtnAsignarCama.Enabled:= False;
                              
                                                            if (SeAsignoUnaCama = True)
                                                              then
                                                                begin
                                                                  lblbtnAnularAsignacion.Enabled:= True;
                                                                end
                                                                  else
                                                                    begin
                                                                      lblbtnAnularAsignacion.Enabled:= False;
                                                                    end;
                                                          end;

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

                                                      //Valido la habilitación de los botones de 'Asignar' y 'Anular Asignación'
                                                      if (HostalWare.CantidadLiterasLibresParaRegistro > 0)
                                                        then
                                                          begin
                                                            lblbtnAsignarCama.Enabled:= True;

                                                            if (SeAsignoUnaCama = True)
                                                              then
                                                                begin
                                                                  lblbtnAnularAsignacion.Enabled:= True;
                                                                end
                                                                  else
                                                                    begin
                                                                      lblbtnAnularAsignacion.Enabled:= False;
                                                                    end;
                                                          end
                                                            else
                                                              begin
                                                                lblbtnAsignarCama.Enabled:= False;
                              
                                                                if (SeAsignoUnaCama = True)
                                                                  then
                                                                    begin
                                                                      lblbtnAnularAsignacion.Enabled:= True;
                                                                    end
                                                                      else
                                                                        begin
                                                                          lblbtnAnularAsignacion.Enabled:= False;
                                                                        end;
                                                              end;

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

                                                            //Valido la habilitación de los botones de 'Asignar' y 'Anular Asignación'
                                                            if (HostalWare.CantidadLiterasArribaLibresParaRegistro > 0)
                                                              then
                                                                begin
                                                                  lblbtnAsignarCama.Enabled:= True;

                                                                  if (SeAsignoUnaCama = True)
                                                                    then
                                                                      begin
                                                                        lblbtnAnularAsignacion.Enabled:= True;
                                                                      end
                                                                        else
                                                                          begin
                                                                            lblbtnAnularAsignacion.Enabled:= False;
                                                                          end;
                                                                end
                                                                  else
                                                                    begin
                                                                      lblbtnAsignarCama.Enabled:= False;
                              
                                                                      if (SeAsignoUnaCama = True)
                                                                        then
                                                                          begin
                                                                            lblbtnAnularAsignacion.Enabled:= True;
                                                                          end
                                                                            else
                                                                              begin
                                                                                lblbtnAnularAsignacion.Enabled:= False;
                                                                              end;
                                                                    end;

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

                                                                //Valido la habilitación de los botones de 'Asignar' y 'Anular Asignación'
                                                                if (HostalWare.CantidadLiterasArribaLibresParaRegistro > 0)
                                                                  then
                                                                    begin
                                                                      lblbtnAsignarCama.Enabled:= True;

                                                                      if (SeAsignoUnaCama = True)
                                                                        then
                                                                          begin
                                                                            lblbtnAnularAsignacion.Enabled:= True;
                                                                          end
                                                                            else
                                                                              begin
                                                                                lblbtnAnularAsignacion.Enabled:= False;
                                                                              end;
                                                                    end
                                                                      else
                                                                        begin
                                                                          lblbtnAsignarCama.Enabled:= False;
                              
                                                                          if (SeAsignoUnaCama = True)
                                                                            then
                                                                              begin
                                                                                lblbtnAnularAsignacion.Enabled:= True;
                                                                              end
                                                                                else
                                                                                  begin
                                                                                    lblbtnAnularAsignacion.Enabled:= False;
                                                                                  end;
                                                                        end;

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

                                                                      //Valido la habilitación de los botones de 'Asignar' y 'Anular Asignación'
                                                                      if (HostalWare.CantidadLiterasAbajoLibresParaRegistro > 0)
                                                                        then
                                                                          begin
                                                                            lblbtnAsignarCama.Enabled:= True;

                                                                            if (SeAsignoUnaCama = True)
                                                                              then
                                                                                begin
                                                                                  lblbtnAnularAsignacion.Enabled:= True;
                                                                                end
                                                                                  else
                                                                                    begin
                                                                                      lblbtnAnularAsignacion.Enabled:= False;
                                                                                    end;
                                                                          end
                                                                            else
                                                                              begin
                                                                                lblbtnAsignarCama.Enabled:= False;
                              
                                                                                if (SeAsignoUnaCama = True)
                                                                                  then
                                                                                    begin
                                                                                      lblbtnAnularAsignacion.Enabled:= True;
                                                                                    end
                                                                                      else
                                                                                        begin
                                                                                          lblbtnAnularAsignacion.Enabled:= False;
                                                                                        end;
                                                                              end;

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

                                                                          //Valido la habilitación de los botones de 'Asignar' y 'Anular Asignación'
                                                                          if (HostalWare.CantidadLiterasAbajoLibresParaRegistro > 0)
                                                                            then
                                                                              begin
                                                                                lblbtnAsignarCama.Enabled:= True;

                                                                                if (SeAsignoUnaCama = True)
                                                                                  then
                                                                                    begin
                                                                                      lblbtnAnularAsignacion.Enabled:= True;
                                                                                    end
                                                                                      else
                                                                                        begin
                                                                                          lblbtnAnularAsignacion.Enabled:= False;
                                                                                        end;
                                                                              end
                                                                                else
                                                                                  begin
                                                                                    lblbtnAsignarCama.Enabled:= False;
                              
                                                                                    if (SeAsignoUnaCama = True)
                                                                                      then
                                                                                        begin
                                                                                          lblbtnAnularAsignacion.Enabled:= True;
                                                                                        end
                                                                                          else
                                                                                            begin
                                                                                              lblbtnAnularAsignacion.Enabled:= False;
                                                                                            end;
                                                                                  end;

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



procedure TfrmTrasladarRegistro.cmbxFiltroXPisoChange(Sender: TObject);
begin
  //Mando a actualizar las Capacidades para Registro
  ActualizarCapacidadesParaRegistro;
end;



procedure TfrmTrasladarRegistro.cmbxFiltroXTipoLechoChange(Sender: TObject);
begin
  //Mando a actualizar las Capacidades para Registro
  ActualizarCapacidadesParaRegistro;
end;



procedure TfrmTrasladarRegistro.ActualizarSoloLechosParaRegistro;
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

                          //Valido la habilitación de los botones de 'Asignar' y 'Anular Asignación'
                          if (HostalWare.CantidadLechosLibresParaRegistro > 0)
                            then
                              begin
                                lblbtnAsignarCama.Enabled:= True;

                                if (SeAsignoUnaCama = True)
                                  then
                                    begin
                                      lblbtnAnularAsignacion.Enabled:= True;
                                    end
                                      else
                                        begin
                                          lblbtnAnularAsignacion.Enabled:= False;
                                        end;
                              end
                                else
                                  begin
                                    lblbtnAsignarCama.Enabled:= False;
                              
                                    if (SeAsignoUnaCama = True)
                                      then
                                        begin
                                          lblbtnAnularAsignacion.Enabled:= True;
                                        end
                                          else
                                            begin
                                              lblbtnAnularAsignacion.Enabled:= False;
                                            end;
                                  end;
                                                            
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

                              //Valido la habilitación de los botones de 'Asignar' y 'Anular Asignación'
                              if (HostalWare.CantidadLechosLibresParaRegistro > 0)
                                then
                                  begin
                                    lblbtnAsignarCama.Enabled:= True;

                                    if (SeAsignoUnaCama = True)
                                      then
                                        begin
                                          lblbtnAnularAsignacion.Enabled:= True;
                                        end
                                          else
                                            begin
                                              lblbtnAnularAsignacion.Enabled:= False;
                                            end;
                                  end
                                    else
                                      begin
                                        lblbtnAsignarCama.Enabled:= False;
                              
                                        if (SeAsignoUnaCama = True)
                                          then
                                            begin
                                              lblbtnAnularAsignacion.Enabled:= True;
                                            end
                                              else
                                                begin
                                                  lblbtnAnularAsignacion.Enabled:= False;
                                                end;
                                      end;
                                                                
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

                                    //Valido la habilitación de los botones de 'Asignar' y 'Anular Asignación'
                                    if (HostalWare.CantidadCamasLibresParaRegistro > 0)
                                      then
                                        begin
                                          lblbtnAsignarCama.Enabled:= True;

                                          if (SeAsignoUnaCama = True)
                                            then
                                              begin
                                                lblbtnAnularAsignacion.Enabled:= True;
                                              end
                                                else
                                                  begin
                                                    lblbtnAnularAsignacion.Enabled:= False;
                                                  end;
                                        end
                                          else
                                            begin
                                              lblbtnAsignarCama.Enabled:= False;
                              
                                              if (SeAsignoUnaCama = True)
                                                then
                                                  begin
                                                    lblbtnAnularAsignacion.Enabled:= True;
                                                  end
                                                    else
                                                      begin
                                                        lblbtnAnularAsignacion.Enabled:= False;
                                                      end;
                                            end;

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

                                        //Valido la habilitación de los botones de 'Asignar' y 'Anular Asignación'
                                        if (HostalWare.CantidadCamasLibresParaRegistro > 0)
                                          then
                                            begin
                                              lblbtnAsignarCama.Enabled:= True;

                                              if (SeAsignoUnaCama = True)
                                                then
                                                  begin
                                                    lblbtnAnularAsignacion.Enabled:= True;
                                                  end
                                                    else
                                                      begin
                                                        lblbtnAnularAsignacion.Enabled:= False;
                                                      end;
                                            end
                                              else
                                                begin
                                                  lblbtnAsignarCama.Enabled:= False;
                              
                                                  if (SeAsignoUnaCama = True)
                                                    then
                                                      begin
                                                        lblbtnAnularAsignacion.Enabled:= True;
                                                      end
                                                        else
                                                          begin
                                                            lblbtnAnularAsignacion.Enabled:= False;
                                                          end;
                                                end;

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

                                              //Valido la habilitación de los botones de 'Asignar' y 'Anular Asignación'
                                              if (HostalWare.CantidadLiterasLibresParaRegistro > 0)
                                                then
                                                  begin
                                                    lblbtnAsignarCama.Enabled:= True;

                                                    if (SeAsignoUnaCama = True)
                                                      then
                                                        begin
                                                          lblbtnAnularAsignacion.Enabled:= True;
                                                        end
                                                          else
                                                            begin
                                                              lblbtnAnularAsignacion.Enabled:= False;
                                                            end;
                                                  end
                                                    else
                                                      begin
                                                        lblbtnAsignarCama.Enabled:= False;
                              
                                                        if (SeAsignoUnaCama = True)
                                                          then
                                                            begin
                                                              lblbtnAnularAsignacion.Enabled:= True;
                                                            end
                                                              else
                                                                begin
                                                                  lblbtnAnularAsignacion.Enabled:= False;
                                                                end;
                                                      end;

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

                                                  //Valido la habilitación de los botones de 'Asignar' y 'Anular Asignación'
                                                  if (HostalWare.CantidadLiterasLibresParaRegistro > 0)
                                                    then
                                                      begin
                                                        lblbtnAsignarCama.Enabled:= True;

                                                        if (SeAsignoUnaCama = True)
                                                          then
                                                            begin
                                                              lblbtnAnularAsignacion.Enabled:= True;
                                                            end
                                                              else
                                                                begin
                                                                  lblbtnAnularAsignacion.Enabled:= False;
                                                                end;
                                                      end
                                                        else
                                                          begin
                                                            lblbtnAsignarCama.Enabled:= False;
                              
                                                            if (SeAsignoUnaCama = True)
                                                              then
                                                                begin
                                                                  lblbtnAnularAsignacion.Enabled:= True;
                                                                end
                                                                  else
                                                                    begin
                                                                      lblbtnAnularAsignacion.Enabled:= False;
                                                                    end;
                                                          end;

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

                                                        //Valido la habilitación de los botones de 'Asignar' y 'Anular Asignación'
                                                        if (HostalWare.CantidadLiterasArribaLibresParaRegistro > 0)
                                                          then
                                                            begin
                                                              lblbtnAsignarCama.Enabled:= True;

                                                              if (SeAsignoUnaCama = True)
                                                                then
                                                                  begin
                                                                    lblbtnAnularAsignacion.Enabled:= True;
                                                                  end
                                                                    else
                                                                      begin
                                                                        lblbtnAnularAsignacion.Enabled:= False;
                                                                      end;
                                                            end
                                                              else
                                                                begin
                                                                  lblbtnAsignarCama.Enabled:= False;
                              
                                                                  if (SeAsignoUnaCama = True)
                                                                    then
                                                                      begin
                                                                        lblbtnAnularAsignacion.Enabled:= True;
                                                                      end
                                                                        else
                                                                          begin
                                                                            lblbtnAnularAsignacion.Enabled:= False;
                                                                          end;
                                                                end;

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

                                                            //Valido la habilitación de los botones de 'Asignar' y 'Anular Asignación'
                                                            if (HostalWare.CantidadLiterasArribaLibresParaRegistro > 0)
                                                              then
                                                                begin
                                                                  lblbtnAsignarCama.Enabled:= True;

                                                                  if (SeAsignoUnaCama = True)
                                                                    then
                                                                      begin
                                                                        lblbtnAnularAsignacion.Enabled:= True;
                                                                      end
                                                                        else
                                                                          begin
                                                                            lblbtnAnularAsignacion.Enabled:= False;
                                                                          end;
                                                                end
                                                                  else
                                                                    begin
                                                                      lblbtnAsignarCama.Enabled:= False;
                              
                                                                      if (SeAsignoUnaCama = True)
                                                                        then
                                                                          begin
                                                                            lblbtnAnularAsignacion.Enabled:= True;
                                                                          end
                                                                            else
                                                                              begin
                                                                                lblbtnAnularAsignacion.Enabled:= False;
                                                                              end;
                                                                    end;

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

                                                                  //Valido la habilitación de los botones de 'Asignar' y 'Anular Asignación'
                                                                  if (HostalWare.CantidadLiterasAbajoLibresParaRegistro > 0)
                                                                    then
                                                                      begin
                                                                        lblbtnAsignarCama.Enabled:= True;

                                                                        if (SeAsignoUnaCama = True)
                                                                          then
                                                                            begin
                                                                              lblbtnAnularAsignacion.Enabled:= True;
                                                                            end
                                                                              else
                                                                                begin
                                                                                  lblbtnAnularAsignacion.Enabled:= False;
                                                                                end;
                                                                      end
                                                                        else
                                                                          begin
                                                                            lblbtnAsignarCama.Enabled:= False;
                              
                                                                            if (SeAsignoUnaCama = True)
                                                                              then
                                                                                begin
                                                                                  lblbtnAnularAsignacion.Enabled:= True;
                                                                                end
                                                                                  else
                                                                                    begin
                                                                                      lblbtnAnularAsignacion.Enabled:= False;
                                                                                    end;
                                                                          end;

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

                                                                      //Valido la habilitación de los botones de 'Asignar' y 'Anular Asignación'
                                                                      if (HostalWare.CantidadLiterasAbajoLibresParaRegistro > 0)
                                                                        then
                                                                          begin
                                                                            lblbtnAsignarCama.Enabled:= True;

                                                                            if (SeAsignoUnaCama = True)
                                                                              then
                                                                                begin
                                                                                  lblbtnAnularAsignacion.Enabled:= True;
                                                                                end
                                                                                  else
                                                                                    begin
                                                                                      lblbtnAnularAsignacion.Enabled:= False;
                                                                                    end;
                                                                          end
                                                                            else
                                                                              begin
                                                                                lblbtnAsignarCama.Enabled:= False;
                              
                                                                                if (SeAsignoUnaCama = True)
                                                                                  then
                                                                                    begin
                                                                                      lblbtnAnularAsignacion.Enabled:= True;
                                                                                    end
                                                                                      else
                                                                                        begin
                                                                                          lblbtnAnularAsignacion.Enabled:= False;
                                                                                        end;
                                                                              end;

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

                              //Valido la habilitación de los botones de 'Asignar' y 'Anular Asignación'
                              if (HostalWare.CantidadLechosLibresParaRegistro > 0)
                                then
                                  begin
                                    lblbtnAsignarCama.Enabled:= True;

                                    if (SeAsignoUnaCama = True)
                                      then
                                        begin
                                          lblbtnAnularAsignacion.Enabled:= True;
                                        end
                                          else
                                            begin
                                              lblbtnAnularAsignacion.Enabled:= False;
                                            end;
                                  end
                                    else
                                      begin
                                        lblbtnAsignarCama.Enabled:= False;
                              
                                        if (SeAsignoUnaCama = True)
                                          then
                                            begin
                                              lblbtnAnularAsignacion.Enabled:= True;
                                            end
                                              else
                                                begin
                                                  lblbtnAnularAsignacion.Enabled:= False;
                                                end;
                                      end;

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

                                  //Valido la habilitación de los botones de 'Asignar' y 'Anular Asignación'
                                  if (HostalWare.CantidadLechosLibresParaRegistro > 0)
                                    then
                                      begin
                                        lblbtnAsignarCama.Enabled:= True;

                                        if (SeAsignoUnaCama = True)
                                          then
                                            begin
                                              lblbtnAnularAsignacion.Enabled:= True;
                                            end
                                              else
                                                begin
                                                  lblbtnAnularAsignacion.Enabled:= False;
                                                end;
                                      end
                                        else
                                          begin
                                            lblbtnAsignarCama.Enabled:= False;
                              
                                            if (SeAsignoUnaCama = True)
                                              then
                                                begin
                                                  lblbtnAnularAsignacion.Enabled:= True;
                                                end
                                                  else
                                                    begin
                                                      lblbtnAnularAsignacion.Enabled:= False;
                                                    end;
                                          end;

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

                                        //Valido la habilitación de los botones de 'Asignar' y 'Anular Asignación'
                                        if (HostalWare.CantidadCamasLibresParaRegistro > 0)
                                          then
                                            begin
                                              lblbtnAsignarCama.Enabled:= True;

                                              if (SeAsignoUnaCama = True)
                                                then
                                                  begin
                                                    lblbtnAnularAsignacion.Enabled:= True;
                                                  end
                                                    else
                                                      begin
                                                        lblbtnAnularAsignacion.Enabled:= False;
                                                      end;
                                            end
                                              else
                                                begin
                                                  lblbtnAsignarCama.Enabled:= False;
                              
                                                  if (SeAsignoUnaCama = True)
                                                    then
                                                      begin
                                                        lblbtnAnularAsignacion.Enabled:= True;
                                                      end
                                                        else
                                                          begin
                                                            lblbtnAnularAsignacion.Enabled:= False;
                                                          end;
                                                end;

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

                                            //Valido la habilitación de los botones de 'Asignar' y 'Anular Asignación'
                                            if (HostalWare.CantidadCamasLibresParaRegistro > 0)
                                              then
                                                begin
                                                  lblbtnAsignarCama.Enabled:= True;

                                                  if (SeAsignoUnaCama = True)
                                                    then
                                                      begin
                                                        lblbtnAnularAsignacion.Enabled:= True;
                                                      end
                                                        else
                                                          begin
                                                            lblbtnAnularAsignacion.Enabled:= False;
                                                          end;
                                                end
                                                  else
                                                    begin
                                                      lblbtnAsignarCama.Enabled:= False;
                              
                                                      if (SeAsignoUnaCama = True)
                                                        then
                                                          begin
                                                            lblbtnAnularAsignacion.Enabled:= True;
                                                          end
                                                            else
                                                              begin
                                                                lblbtnAnularAsignacion.Enabled:= False;
                                                              end;
                                                    end;

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

                                                  //Valido la habilitación de los botones de 'Asignar' y 'Anular Asignación'
                                                  if (HostalWare.CantidadLiterasLibresParaRegistro > 0)
                                                    then
                                                      begin
                                                        lblbtnAsignarCama.Enabled:= True;

                                                        if (SeAsignoUnaCama = True)
                                                          then
                                                            begin
                                                              lblbtnAnularAsignacion.Enabled:= True;
                                                            end
                                                              else
                                                                begin
                                                                  lblbtnAnularAsignacion.Enabled:= False;
                                                                end;
                                                      end
                                                        else
                                                          begin
                                                            lblbtnAsignarCama.Enabled:= False;
                              
                                                            if (SeAsignoUnaCama = True)
                                                              then
                                                                begin
                                                                  lblbtnAnularAsignacion.Enabled:= True;
                                                                end
                                                                  else
                                                                    begin
                                                                      lblbtnAnularAsignacion.Enabled:= False;
                                                                    end;
                                                          end;

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

                                                      //Valido la habilitación de los botones de 'Asignar' y 'Anular Asignación'
                                                      if (HostalWare.CantidadLiterasLibresParaRegistro > 0)
                                                        then
                                                          begin
                                                            lblbtnAsignarCama.Enabled:= True;

                                                            if (SeAsignoUnaCama = True)
                                                              then
                                                                begin
                                                                  lblbtnAnularAsignacion.Enabled:= True;
                                                                end
                                                                  else
                                                                    begin
                                                                      lblbtnAnularAsignacion.Enabled:= False;
                                                                    end;
                                                          end
                                                            else
                                                              begin
                                                                lblbtnAsignarCama.Enabled:= False;
                              
                                                                if (SeAsignoUnaCama = True)
                                                                  then
                                                                    begin
                                                                      lblbtnAnularAsignacion.Enabled:= True;
                                                                    end
                                                                      else
                                                                        begin
                                                                          lblbtnAnularAsignacion.Enabled:= False;
                                                                        end;
                                                              end;

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

                                                            //Valido la habilitación de los botones de 'Asignar' y 'Anular Asignación'
                                                            if (HostalWare.CantidadLiterasArribaLibresParaRegistro > 0)
                                                              then
                                                                begin
                                                                  lblbtnAsignarCama.Enabled:= True;

                                                                  if (SeAsignoUnaCama = True)
                                                                    then
                                                                      begin
                                                                        lblbtnAnularAsignacion.Enabled:= True;
                                                                      end
                                                                        else
                                                                          begin
                                                                            lblbtnAnularAsignacion.Enabled:= False;
                                                                          end;
                                                                end
                                                                  else
                                                                    begin
                                                                      lblbtnAsignarCama.Enabled:= False;
                              
                                                                      if (SeAsignoUnaCama = True)
                                                                        then
                                                                          begin
                                                                            lblbtnAnularAsignacion.Enabled:= True;
                                                                          end
                                                                            else
                                                                              begin
                                                                                lblbtnAnularAsignacion.Enabled:= False;
                                                                              end;
                                                                    end;

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

                                                                //Valido la habilitación de los botones de 'Asignar' y 'Anular Asignación'
                                                                if (HostalWare.CantidadLiterasArribaLibresParaRegistro > 0)
                                                                  then
                                                                    begin
                                                                      lblbtnAsignarCama.Enabled:= True;

                                                                      if (SeAsignoUnaCama = True)
                                                                        then
                                                                          begin
                                                                            lblbtnAnularAsignacion.Enabled:= True;
                                                                          end
                                                                            else
                                                                              begin
                                                                                lblbtnAnularAsignacion.Enabled:= False;
                                                                              end;
                                                                    end
                                                                      else
                                                                        begin
                                                                          lblbtnAsignarCama.Enabled:= False;
                              
                                                                          if (SeAsignoUnaCama = True)
                                                                            then
                                                                              begin
                                                                                lblbtnAnularAsignacion.Enabled:= True;
                                                                              end
                                                                                else
                                                                                  begin
                                                                                    lblbtnAnularAsignacion.Enabled:= False;
                                                                                  end;
                                                                        end;

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

                                                                      //Valido la habilitación de los botones de 'Asignar' y 'Anular Asignación'
                                                                      if (HostalWare.CantidadLiterasAbajoLibresParaRegistro > 0)
                                                                        then
                                                                          begin
                                                                            lblbtnAsignarCama.Enabled:= True;

                                                                            if (SeAsignoUnaCama = True)
                                                                              then
                                                                                begin
                                                                                  lblbtnAnularAsignacion.Enabled:= True;
                                                                                end
                                                                                  else
                                                                                    begin
                                                                                      lblbtnAnularAsignacion.Enabled:= False;
                                                                                    end;
                                                                          end
                                                                            else
                                                                              begin
                                                                                lblbtnAsignarCama.Enabled:= False;
                              
                                                                                if (SeAsignoUnaCama = True)
                                                                                  then
                                                                                    begin
                                                                                      lblbtnAnularAsignacion.Enabled:= True;
                                                                                    end
                                                                                      else
                                                                                        begin
                                                                                          lblbtnAnularAsignacion.Enabled:= False;
                                                                                        end;
                                                                              end;

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

                                                                          //Valido la habilitación de los botones de 'Asignar' y 'Anular Asignación'
                                                                          if (HostalWare.CantidadLiterasAbajoLibresParaRegistro > 0)
                                                                            then
                                                                              begin
                                                                                lblbtnAsignarCama.Enabled:= True;

                                                                                if (SeAsignoUnaCama = True)
                                                                                  then
                                                                                    begin
                                                                                      lblbtnAnularAsignacion.Enabled:= True;
                                                                                    end
                                                                                      else
                                                                                        begin
                                                                                          lblbtnAnularAsignacion.Enabled:= False;
                                                                                        end;
                                                                              end
                                                                                else
                                                                                  begin
                                                                                    lblbtnAsignarCama.Enabled:= False;
                              
                                                                                    if (SeAsignoUnaCama = True)
                                                                                      then
                                                                                        begin
                                                                                          lblbtnAnularAsignacion.Enabled:= True;
                                                                                        end
                                                                                          else
                                                                                            begin
                                                                                              lblbtnAnularAsignacion.Enabled:= False;
                                                                                            end;
                                                                                  end;

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



procedure TfrmTrasladarRegistro.DBAdvGlowNavigatorHabitacionesExistentesClick(
  Sender: TObject; Button: TAdvNavigateBtn);
begin
  //Muestro y actualizo los lechos (en general)
  ActualizarSoloLechosParaRegistro;
end;



end.
