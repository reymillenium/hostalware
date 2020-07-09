unit UfrmModificarHabitacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls,

  //Clases de Control
  UGestionCursistasHospedados,

  //Clases Entidad
  UHabitacion, UCama,

  //Clases Interfaz

  //DataModules
  UDataModuleAdminCapacidades,
  
  //Otros
  LbButton,

  //Dialogs especiales, esquemas, etc (Message Master)
  MessDlgs, AdvEdit, AdvCombo, Mask, AdvSpin, AdvGroupBox, AdvOfficePager,
  AdvOfficePagerStylers, Grids, DBGrids, ColListb, BaseGrid, AdvGrid,
  AdvSmoothListBox, AdvSmoothPanel, AdvSmoothMenu, DBCtrls, AppEvnts,
  DBAdvSp, DBAdvGrid;

  
type
  TfrmModificarHabitacion = class(TForm)
    AdvOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    AdvOfficePagerHabitacion: TAdvOfficePager;
    AdvOfficePageCapacidad: TAdvOfficePage;
    AdvOfficePageMoviliario: TAdvOfficePage;
    AdvGroupBoxEquiposElectronicos: TAdvGroupBox;
    lblTelevisor: TLabel;
    lblRefrigerador: TLabel;
    lblVentilador: TLabel;
    AdvGroupBoxMuebles: TAdvGroupBox;
    lblSillasOSillones: TLabel;
    lblMesasGrandes: TLabel;
    lblMesitasNoche: TLabel;
    lblMesitasPC: TLabel;
    lblArmario: TLabel;
    lblCalentadorAgua: TLabel;
    lblSecadorPelo: TLabel;
    lblEspejo: TLabel;
    AdvOfficePageServicios: TAdvOfficePage;
    lblCloset: TLabel;
    AdvGroupBoxUbicacion2: TAdvGroupBox;
    lblNumeroCuarto2: TLabel;
    lblPiso2: TLabel;
    AdvGroupBoxUbicacion3: TAdvGroupBox;
    lblNumeroCuarto3: TLabel;
    lblPiso3: TLabel;
    AdvGroupBoxServiciosBasicos: TAdvGroupBox;
    AdvGroupBoxUbicacion1: TAdvGroupBox;
    lblNumeroCuarto1: TLabel;
    lblPiso1: TLabel;
    lblAireAcondicionado: TLabel;
    lblAguaCaliente: TLabel;
    lblTelefonoInterno: TLabel;
    lblTomasElectricas: TLabel;
    AdvGroupBoxServiciosLujo: TAdvGroupBox;
    lblInternet: TLabel;
    lblTVSatelite: TLabel;
    AdvGroupBoxCamasYLiterasExistentes: TAdvGroupBox;
    AdvGroupBoxDatosCamaYLitera: TAdvGroupBox;
    lblbtnLimpiar1: TLbButton;
    lblbtnAceptar1: TLbButton;
    lblbtnCancelar1: TLbButton;
    lblbtnLimpiar2: TLbButton;
    lblbtnAceptar2: TLbButton;
    lblbtnCancelar2: TLbButton;
    lblbtnLimpiar3: TLbButton;
    lblbtnAceptar3: TLbButton;
    lblbtnCancelar3: TLbButton;
    lblTipoCama: TLabel;
    lblNumeroSerieCama: TLabel;
    lblbtnAgregarCama: TLbButton;
    lblbtnEliminarCama: TLbButton;
    lblCapacidad: TLabel;
    lblTelefonoDirecto: TLabel;
    DBTextID_Habitacion: TDBText;
    DBedtNumeroCuarto1: TDBEdit;
    DBComboBoxPiso1: TDBComboBox;
    DBAdvSpinEditTelevisor: TDBAdvSpinEdit;
    DBAdvSpinEditRefrigerador: TDBAdvSpinEdit;
    DBAdvSpinEditVentilador: TDBAdvSpinEdit;
    DBAdvSpinEditCalentadorAgua: TDBAdvSpinEdit;
    DBComboBoxSecadorPelo: TDBComboBox;
    DBedtNumeroCuarto2: TDBEdit;
    DBComboBoxPiso2: TDBComboBox;
    DBedtNumeroCuarto3: TDBEdit;
    DBComboBoxPiso3: TDBComboBox;
    DBAdvSpinEditSillasOSillones: TDBAdvSpinEdit;
    DBAdvSpinEditMesasGrandes: TDBAdvSpinEdit;
    DBAdvSpinEditMesitasNoche: TDBAdvSpinEdit;
    DBAdvSpinEditMesitasPC: TDBAdvSpinEdit;
    DBComboBoxArmario: TDBComboBox;
    DBComboBoxCloset: TDBComboBox;
    DBComboBoxEspejo: TDBComboBox;
    DBComboBoxAireAcondicionado: TDBComboBox;
    DBComboBoxAguaCaliente: TDBComboBox;
    DBAdvSpinEditTomasElectricas: TDBAdvSpinEdit;
    DBedtTelefonoInterno: TDBEdit;
    DBedtTelefonoDirecto: TDBEdit;
    DBComboBoxInternet: TDBComboBox;
    DBComboBoxTVSatelite: TDBComboBox;
    AdvComboBoxTipoCama: TAdvComboBox;
    edtNumeroSerieCama: TEdit;
    DBTextID_Cama: TDBText;
    DBGridCamasTemporales: TDBAdvGrid;
    DBTextID_CamaTemporal: TDBText;

    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtNumeroHabitacionKeyPress(Sender: TObject; var Key: Char);
    procedure edtPrimerApellidoKeyPress(Sender: TObject; var Key: Char);
    procedure edtSegundoApellidoKeyPress(Sender: TObject; var Key: Char);
    procedure edtUsuarioKeyPress(Sender: TObject; var Key: Char);
    procedure edtContrasennaKeyPress(Sender: TObject; var Key: Char);
    procedure edtRepetirContrasennaKeyPress(Sender: TObject; var Key: Char);
    procedure btnVerificarUsuarioClick(Sender: TObject);

    procedure ComboBoxPrivilegioDrawItem(Control: TWinControl; Index: Integer; Rect: TRect; State: TOwnerDrawState);
    procedure CentrarForma(var m: TWMWINDOWPOSCHANGED); message
    WM_WINDOWPOSCHANGING;

    procedure SoloNumerosKeyPress(Sender: TObject; var Key: Char);
    procedure lblbtnCancelarClick(Sender: TObject);
    procedure AdvComboBoxPiso1Change(Sender: TObject);
    procedure AdvComboBoxPiso2Change(Sender: TObject);
    procedure AdvComboBoxPiso3Change(Sender: TObject);
    procedure edtNumeroCuarto1Change(Sender: TObject);
    procedure edtNumeroCuarto2Change(Sender: TObject);
    procedure edtNumeroCuarto3Change(Sender: TObject);
    procedure lblbtnLimpiarClick(Sender: TObject);
    procedure lblbtnAceptarClick(Sender: TObject);
    procedure lblbtnAgregarCamaClick(Sender: TObject);
    procedure lblbtnEliminarCamaClick(Sender: TObject);
    procedure SoloCaracteresKeyPress(Sender: TObject; var Key: Char);
    procedure Solo3NumerosKeyPress(Sender: TObject; var Key: Char);

    procedure RellenarHabitacionTemporal(aTempHabitacion: THabitacion);

  private
    { Private declarations }
  public
    { Public declarations }
    FID_Habitacion: Integer;

  end;

var
  frmModificarHabitacion: TfrmModificarHabitacion;

implementation

uses StrUtils;
var
    HostalWare: TGestionCursistasHospedados;
    TempViejaHabitacion, TempNuevaHabitacion: THabitacion;
    TempCama: TCama;
{$R *.dfm}



procedure TfrmModificarHabitacion.btnCancelarClick(Sender: TObject);
begin
  //Cierro la forma
  frmModificarHabitacion.Close;
end;



procedure TfrmModificarHabitacion.FormShow(Sender: TObject);
var
  hMenuHandle : HMENU;
begin
  //Aquí deshabilito el botón de Cerrar de la forma
  hMenuHandle := GetSystemMenu(frmModificarHabitacion.Handle, FALSE);
  if (hMenuHandle <> 0)
    then
      DeleteMenu(hMenuHandle, SC_CLOSE, MF_BYCOMMAND);

  //Activo la primera pestaña
  AdvOfficePagerHabitacion.ActivePageIndex:= 0;

  //Ante todo elimino todas las camas temporales (por posible apagón)
  HostalWare.EliminarTodasLasCamasTemporales;
  
  //Mando a copiar las camas que había inicialmente hacia las camas temporales
  HostalWare.CopiarCamasPorID_Habitacion(FID_Habitacion);

  //Mando a que se muestren las camas temporales en la Forma de Modificación
  HostalWare.MostrarCamasTemporalesPorID_Habitacion(FID_Habitacion);

  //Verifico si hay algo en el DBGrid de camas temporales, para ver si se puede borrar
  if (HostalWare.CantidadDeCamasTemporales <> 0)
    then
      begin //Hay algo en el DBGrid
        //Habilito el boton de Quitar
        lblbtnEliminarCama.Enabled:= True;
      end
        else //No hay nada insertado
          begin
            //Deshabilito el boton de Quitar
            lblbtnEliminarCama.Enabled:= False;
          end;

  //Actualizo el Label informativo de capacidad
  lblCapacidad.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDeCamasTemporales);

  //Pongo el focus en el Edit del numero de serie
  edtNumeroSerieCama.SetFocus;

  //Creo una habitacion temporal vieja (valores iniciales)
  TempViejaHabitacion:= THabitacion.Create;

  //Busco la habitacion especificada por ID_Habitacion
  HostalWare.BuscarHabitacionPorID(FID_Habitacion);

  //Guardo los valores iniciales en la vieja habitacion temporal
  RellenarHabitacionTemporal(TempViejaHabitacion);
end;



procedure TfrmModificarHabitacion.edtNumeroHabitacionKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then lblbtnAceptar1.Click;

  //Valido para solo nombres
  if not (Key in['a'..'z', 'A'..'Z', 'ñ', 'Ñ', 'á', 'é', 'í', 'ó', 'ú', 'Á', 'É', 'Í', 'Ó', 'Ú', ' ', #8, #13]) then Abort;
end;



procedure TfrmModificarHabitacion.edtPrimerApellidoKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then lblbtnAceptar1.Click;

  //Valido para solo nombres
  if not (Key in['a'..'z', 'A'..'Z', 'ñ', 'Ñ', 'á', 'é', 'í', 'ó', 'ú', 'Á', 'É', 'Í', 'Ó', 'Ú', ' ', #8, #13]) then Abort;
end;



procedure TfrmModificarHabitacion.edtSegundoApellidoKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then lblbtnAceptar1.Click;

  //Valido para solo nombres
  if not (Key in['a'..'z', 'A'..'Z', 'ñ', 'Ñ', 'á', 'é', 'í', 'ó', 'ú', 'Á', 'É', 'Í', 'Ó', 'Ú', ' ', #8, #13]) then Abort;
end;



procedure TfrmModificarHabitacion.edtUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then lblbtnAceptar1.Click;

  //Valido para solo letras (sin espacios ni tildes)
  if not (Key in['a'..'z', 'A'..'Z', 'ñ', 'Ñ', #8, #13]) then Abort;
end;



procedure TfrmModificarHabitacion.edtContrasennaKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then lblbtnAceptar1.Click;
end;



procedure TfrmModificarHabitacion.edtRepetirContrasennaKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then lblbtnAceptar1.Click;
end;



procedure TfrmModificarHabitacion.btnVerificarUsuarioClick(Sender: TObject);
begin
  //Verifica que no haya un usuario igual en la base de datos (¡Por programar!)
end;





procedure TfrmModificarHabitacion.ComboBoxPrivilegioDrawItem(
  Control: TWinControl; Index: Integer; Rect: TRect;
  State: TOwnerDrawState);
const 
  clPaleGreen= TColor($CCFFCC);
  clPaleRed= TColor($CCCCFF);
  clStrongRed=TColor($006C6CFF);
begin
  with (Control as TDBComboBox) do
    begin
      {El primer Item (Operador) en verde pálido y
       el segundo Item (Administrador) en rojo pálido}
      if (Index= 0)
        then
          Canvas.Brush.Color:= clPaleRed
            else
              Canvas.Brush.Color:= clPaleGreen;

      Canvas.FillRect(Rect);
      Canvas.TextOut(Rect.Left,Rect.Top,Items[Index]);
    end; 
end;



procedure TfrmModificarHabitacion.CentrarForma(var m : TWMWINDOWPOSCHANGED);
begin
  m.windowpos.x := (Screen.Width - Width) div 2;   {Left/Posicion X}
  m.windowpos.y := (Screen.Height - Height) div 2; {Left/Posicion X}
end;



procedure TfrmModificarHabitacion.SoloNumerosKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then lblbtnAceptar1.Click;

  //Valido para solo numeros
  if not (Key in['0'..'9', #8, #13]) then Abort;
end;



procedure TfrmModificarHabitacion.lblbtnCancelarClick(Sender: TObject);
begin
  //Ante todo verifico que aun haya acceso a la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Borro todos las camas temporales
        HostalWare.EliminarCamasTemporalesPorID_Habitacion(FID_Habitacion);

        //Cierro la forma
        frmModificarHabitacion.Close;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);

            //Cierro la forma
            frmModificarHabitacion.Close;
          end;
end;



procedure TfrmModificarHabitacion.AdvComboBoxPiso1Change(Sender: TObject);
begin
  //Actualizo el resto de los ComboBox de Piso, en base al 1ro de ellos
  DBComboBoxPiso2.ItemIndex:=  DBComboBoxPiso1.ItemIndex;
  DBComboBoxPiso3.ItemIndex:=  DBComboBoxPiso1.ItemIndex;
end;



procedure TfrmModificarHabitacion.AdvComboBoxPiso2Change(Sender: TObject);
begin
  //Actualizo el resto de los ComboBox de Piso, en base al 2do de ellos
  DBComboBoxPiso1.ItemIndex:=  DBComboBoxPiso2.ItemIndex;
  DBComboBoxPiso3.ItemIndex:=  DBComboBoxPiso2.ItemIndex;
end;



procedure TfrmModificarHabitacion.AdvComboBoxPiso3Change(Sender: TObject);
begin
  //Actualizo el resto de los ComboBox de Piso, en base al 3ro de ellos
  DBComboBoxPiso1.ItemIndex:=  DBComboBoxPiso3.ItemIndex;
  DBComboBoxPiso2.ItemIndex:=  DBComboBoxPiso3.ItemIndex;
end;



procedure TfrmModificarHabitacion.edtNumeroCuarto1Change(Sender: TObject);
begin
  //Actualizo el resto de los Edits de numero de habitacion, en base al 1ro de ellos
  DBedtNumeroCuarto2.Text:= DBedtNumeroCuarto1.Text;
  DBedtNumeroCuarto3.Text:= DBedtNumeroCuarto1.Text;
end;



procedure TfrmModificarHabitacion.edtNumeroCuarto2Change(Sender: TObject);
begin
  //Actualizo el resto de los Edits de numero de habitacion, en base al 2do de ellos
  DBedtNumeroCuarto1.Text:= DBedtNumeroCuarto2.Text;
  DBedtNumeroCuarto3.Text:= DBedtNumeroCuarto2.Text;
end;



procedure TfrmModificarHabitacion.edtNumeroCuarto3Change(Sender: TObject);
begin
  //Actualizo el resto de los Edits de numero de habitacion, en base al 3ro de ellos
  DBedtNumeroCuarto1.Text:= DBedtNumeroCuarto3.Text;
  DBedtNumeroCuarto2.Text:= DBedtNumeroCuarto3.Text;
end;



procedure TfrmModificarHabitacion.lblbtnLimpiarClick(Sender: TObject);
begin
  //Ante todo verifico que aun haya acceso a la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Reinicio todas las posiciones

        //Ubicacion (se modifica en todos los demas)
        //DBedtNumeroCuarto1.Field.Value:= TempViejaHabitacion.NumeroHabitacion;
        //DBComboBoxPiso1.Field.Value:= TempViejaHabitacion.Piso;
        //DBComboBoxPiso2.Field.Value:= TempViejaHabitacion.Piso;
        //DBComboBoxPiso3.Field.Value:= TempViejaHabitacion.Piso;

        //Capacidad (camas y literas)
        //DBComboBoxTipoCama.Field.Value:= TempViejaHabitacion.;
        //DBedtNumeroSerieCama.Field.Value;

        //Muestro nuevamente la info inicial
        //Busco la habitacion especificada por ID_Habitacion
        HostalWare.BuscarHabitacionPorID(FID_Habitacion);
  
        //Borro todos las habitaciones temporales que ya han sido modificadas
        HostalWare.EliminarCamasTemporalesPorID_Habitacion(FID_Habitacion);

        //Mando a copiar las camas que había inicialmente hacia las camas temporales
        HostalWare.CopiarCamasPorID_Habitacion(FID_Habitacion);

        //Mando a que se muestren nuevamente las camas temporales en la Forma de Modificación
        HostalWare.MostrarCamasTemporalesPorID_Habitacion(FID_Habitacion);

        //Verifico que haya algo insertado en el DBGrid de camas temporales, para entonces poder borrar
        if (HostalWare.CantidadDeCamasTemporales <> 0)
          then
            begin //Hay algo en el DBGrid
              //Habilito el boton de Quitar
              lblbtnEliminarCama.Enabled:= True;
            end
              else //No hay nada insertado
                begin
                  //Deshabilito el boton de Quitar
                  lblbtnEliminarCama.Enabled:= False;
                end;

        //Actualizo el Label informativo de capacidad
        lblCapacidad.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDeCamasTemporales);          

      {
        //Moviliario (equipos)
        DBAdvSpinEditTelevisor.Value:= TempViejaHabitacion.Televisores;
        DBAdvSpinEditRefrigerador.Value:= TempViejaHabitacion.Refrigeradores;
        DBAdvSpinEditVentilador.Value:= TempViejaHabitacion.Ventiladores;
        DBAdvSpinEditCalentadorAgua.Value:= TempViejaHabitacion.CalentadoresAgua;
        DBComboBoxSecadorPelo.Field.Text:= TempViejaHabitacion.SecadorPelo;

        //Moviliario (Muebles)
        DBAdvSpinEditSillasOSillones.Value:= TempViejaHabitacion.SillasYSillones;
        DBAdvSpinEditMesasGrandes.Value:= TempViejaHabitacion.MesasGrandes;
        DBAdvSpinEditMesitasNoche.Value:= TempViejaHabitacion.MesitasNoche;
        DBAdvSpinEditMesitasPC.Value:= TempViejaHabitacion.MesasPC;
        DBComboBoxArmario.Field.Text:= TempViejaHabitacion.Armario;
        DBComboBoxCloset.Field.Text:= TempViejaHabitacion.Closet;
        DBComboBoxEspejo.Field.Text:= TempViejaHabitacion.Espejo;

        //Servicios (basicos)
        DBComboBoxAireAcondicionado.Field.Text:= TempViejaHabitacion.AireAcondicionado;
        DBComboBoxAguaCaliente.Field.Text:= TempViejaHabitacion.AguaCaliente;
        DBAdvSpinEditTomasElectricas.Value:= TempViejaHabitacion.TomasElectricas;
        DBedtTelefonoInterno.Field.Value:= TempViejaHabitacion.TelefonoInterno;
        DBedtTelefonoDirecto.Field.Value:= TempViejaHabitacion.TelefonoDirecto;

        //Servicios (de lujo)
        DBComboBoxInternet.Field.Text:= TempViejaHabitacion.Internet;
        DBComboBoxTVSatelite.Field.Text:= TempViejaHabitacion.TVSatelite;
      }

        //Pongo el focus en el Edit de numero de cuarto
        //En dependencia de la pestaña activa
        if (AdvOfficePagerHabitacion.ActivePageIndex = 0 )
          then
            begin
              edtNumeroSerieCama.SetFocus;
            end
              else
                begin
                  if (AdvOfficePagerHabitacion.ActivePageIndex = 1 )
                    then
                      begin
                        //DBedtNumeroCuarto2.SetFocus;
                      end
                        else
                          begin
                            if (AdvOfficePagerHabitacion.ActivePageIndex = 2 )
                              then
                                begin
                                  //DBedtNumeroCuarto3.SetFocus;
                                end;
                          end;
                end;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);

            //Cierro la forma
            frmModificarHabitacion.Close;
          end;
end;



procedure TfrmModificarHabitacion.lblbtnAceptarClick(Sender: TObject);
var
  i, ID_Habitacion: Integer;
  NumeroIncompleto: AnsiString;
begin
  //Primero verifico que aun exista conexión con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Luego verifico que se haya tecleado el número del cuarto
        if (DBedtNumeroCuarto1.Text <> '')
          then
            begin //Se tecleó el número del cuarto
              //Procedo a completar los 3 digitos para el número de la habitación
              if (Length(DBedtNumeroCuarto1.Field.Value) = 1)
                then
                  begin  //*** Una sola cifra
                    //Recojo el número incompleto (con 1 cifra)
                    NumeroIncompleto:= DBedtNumeroCuarto1.Field.Value;

                    //Completo hasta las 3 cifras necesarias
                    if (DBComboBoxPiso1.Text = 'PB')
                      then
                        begin //Planta Baja
                          DBedtNumeroCuarto1.Field.Value:= '10' + NumeroIncompleto;
                        end
                          else
                            begin //Otros Pisos
                              DBedtNumeroCuarto1.Field.Value:= LeftStr(DBComboBoxPiso1.Field.Value, 1) + '0' + NumeroIncompleto;
                            end;
                  end
                    else //*** Mas de una cifra
                      begin
                        if (Length(DBedtNumeroCuarto1.Field.Value) = 2)
                          then
                            begin //*** Dos cifras
                              //Recojo el número incompleto (con 2 cifras)
                              NumeroIncompleto:= DBedtNumeroCuarto1.Field.Value;

                              //Completo hasta las 3 cifras necesarias
                              if (DBComboBoxPiso1.Field.Value = 'PB')
                                then
                                  begin //Planta Baja
                                    DBedtNumeroCuarto1.Field.Value:= '1' + NumeroIncompleto;
                                  end
                                    else
                                      begin //Otros Pisos
                                        DBedtNumeroCuarto1.Field.Value:= LeftStr(DBComboBoxPiso1.Field.Value, 1) + NumeroIncompleto;
                                      end;
                            end
                              else
                                begin //*** Mas de 2 cifras
                                  if (Length(DBedtNumeroCuarto1.Field.Value) = 3)
                                    then
                                      begin //*** Tres cifras
                                        //Compruebo si concuerda el número con el piso
                                        if (LeftStr(DBedtNumeroCuarto1.Field.Value, 1) <> LeftStr( DbComboBoxPiso1.Field.Value, 1) )
                                          then
                                            begin //No concuerda, así que arreglo el número
                                              //Recojo el número no acorde
                                              NumeroIncompleto:= DBedtNumeroCuarto1.Field.Value;

                                              //Arreglo las cifras para que concuerde
                                              DBedtNumeroCuarto1.Field.Value:= LeftStr(DBComboBoxPiso1.Field.Value, 1) + RightStr(NumeroIncompleto, 2)
                                            end;
                                      end;
                                end;
                      end;

              //Creo una habitacion temporal nueva
              TempNuevaHabitacion:= THabitacion.Create;

              //Relleno la habitacion temporal nueva
              RellenarHabitacionTemporal(TempNuevaHabitacion);
  
              //Modofico los datos en la BD
              HostalWare.ModificarHabitacion(TempNuevaHabitacion);

              //Inserto la Traza
              HostalWare.GuardarTrazaDelSistema('Modificó la habitación ' + DBedtNumeroCuarto1.Field.Text);

              //Actualizo todas las trazas
              HostalWare.MostrarTodasLasTrazas;


              //***********************************
              //*** Parte referente a las camas ***
              //***********************************


              //Borro todas las camas libres originales (solo por ser libres es que pueden ser borradas)
              HostalWare.EliminarCamasLibresPorID_Habitacion(FID_Habitacion);

              //Relleno la tabla de Camas, desde Camas Temporales
              HostalWare.RellenarCamasLibresDesdeTemporales;

              //Borro todas las Camas Temporales
              HostalWare.EliminarCamasTemporalesPorID_Habitacion(FID_Habitacion);

              //Actualizo el DBGrid de Camas en la forma principal (esta en veremos, pues si se actualizan las habitaciones ya esto no sirve)
              //HostalWare.MostrarCamasPorID_Habitacion(FID_Habitacion);

              //--------- fin de las camas --------------------

              

              //Actualizo el DBGrid (forma principal) de las Habitaciones
              HostalWare.MostrarHabitaciones;

              //Cierro la forma
              frmModificarHabitacion.Close;
            end
              else //No se tecleó el número del cuarto
                begin
                  MessageDlg('Antes debe introducir el número de la habitación.', mtError, [mbOk], 0);
                end;
      end
        else  //No existe conexión con la BD
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);

            //Cierro la forma
            frmModificarHabitacion.Close;
          end;
end;



procedure TfrmModificarHabitacion.lblbtnAgregarCamaClick(Sender: TObject);
var
  TipoCama, NumeroSerieCama: AnsiString;
  TempCama: TCama;
  Label InsertarDirecto, SalidaPerfecta, SalidaConLios;
begin
  //Ante todo verifico que aun haya acceso a la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Primero verifico que todos los campos estén llenos
        if (edtNumeroSerieCama.Text <> '')
          then
            begin
              //Tomo lo que necesito
              TipoCama:= AdvComboBoxTipoCama.Text;
              NumeroSerieCama:= UpperCase( edtNumeroSerieCama.Text ); //En mayúsculas el número de serie

              //Verifico que el DBGrid de camas no esté vacio
              if (HostalWare.CantidadDeCamasTemporales <> 0)
                then
                  begin
                    //Verifico que no haya otra cama temporal con el mismo numero de serie
                    if (HostalWare.ExisteCamaTemporalConNumeroSerie(NumeroSerieCama) = True)
                      then
                        begin
                          MessageDlg('Ya usted introdujo una cama con el número de serie ' + NumeroSerieCama + '.', mtError, [mbOk], 0);

                          //Salgo del procedimiento
                          goto SalidaConLios;
                        end
                          else
                            begin
                              goto InsertarDirecto;
                            end;
                  end;

              //Etiqueta de insercion, cuando no hay nada en el DBGrid
              InsertarDirecto:

              //En caso de que la cama sea del tipo 'litera', debo cubrir la de arriba y la de abajo
              if (TipoCama = 'Litera')
                then
                  begin
                    //------ Arriba de la litera ------
                    //Creo una 1ra cama temporal
                    TempCama:= TCama.Create;

                    //Relleno sus campos
                    TempCama.ID_Habitacion:= FID_Habitacion;
                    TempCama.TipoCama:= TipoCama + ' Arriba';
                    TempCama.NumeroSerie:= NumeroSerieCama;
                    TempCama.EstadoOcupacional:= 'Libre';

                    //Inserto la 1ra cama temporal
                    HostalWare.InsertarCamaTemporal(TempCama);

                    //Destruyo la 1ra cama temporal
                    TempCama.Destroy;
              
                    //------ Abajo de la litera ------

                    //Creo ahora una 2da cama temporal
                    TempCama:= TCama.Create;

                    //Relleno sus campos
                    TempCama.ID_Habitacion:= FID_Habitacion;
                    TempCama.TipoCama:= TipoCama + ' Abajo';
                    TempCama.NumeroSerie:= NumeroSerieCama; //El mismo numero de serie
                    TempCama.EstadoOcupacional:= 'Libre';
                    
                    //Inserto la 2da cama temporal
                    HostalWare.InsertarCamaTemporal(TempCama);
              
                    //Destruyo la 2da cama temporal
                    TempCama.Destroy;
                  end
                    else
                      begin  //Del tipo 'cama'
                        //------ Cama común ------
                        //Creo una cama temporal
                        TempCama:= TCama.Create;

                        //Relleno sus campos
                        TempCama.ID_Habitacion:= FID_Habitacion;
                        TempCama.TipoCama:= TipoCama;
                        TempCama.NumeroSerie:= NumeroSerieCama;
                        TempCama.EstadoOcupacional:= 'Libre';
                        
                        //Inserto la cama temporal
                        HostalWare.InsertarCamaTemporal(TempCama);

                        //Destruyo la cama temporal
                        TempCama.Destroy;
                      end;

              //Muestro las camas temporales existentes
              HostalWare.MostrarCamasTemporalesPorID_Habitacion(FID_Habitacion);
        
              //Actualizo el Label informativo de capacidad
              lblCapacidad.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDeCamasTemporales);

              //Verifico si hay algo en el DBGrid de camas temporales, para ver si se puede borrar
              if (HostalWare.CantidadDeCamasTemporales <> 0)
                then
                  begin //Hay algo en el DBGrid
                    //Habilito el boton de Quitar
                    lblbtnEliminarCama.Enabled:= True;
                  end
                    else //No hay nada insertado
                      begin
                        //Deshabilito el boton de Quitar
                        lblbtnEliminarCama.Enabled:= False;
                      end;

              //Limpio los Edits de entrada y Reseteo
              edtNumeroSerieCama.Clear;
              AdvComboBoxTipoCama.ItemIndex:= 0;

              //Pongo el focus en el Edit de Numero de Serie de la cama
              edtNumeroSerieCama.SetFocus;

              //Salgo OK
              goto SalidaPerfecta;
            end
              else
                begin
                  MessageDlg('Debe teclear el número de serie.', mtError, [mbOk], 0);
                end;

        //Etiqueta de salida, cuando hay numeros de serie repetidos
        SalidaConLios:

        //Pongo el focus en el Edit de Numero de Serie de la cama
        edtNumeroSerieCama.SetFocus;

        //Etiqueta de salida, cuando todo está OK
        SalidaPerfecta:
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);

            //Cierro la forma
            frmModificarHabitacion.Close;
          end;
end;



procedure TfrmModificarHabitacion.lblbtnEliminarCamaClick(Sender: TObject);
var
  ID_Cama, ID_CamaTemporal: Integer;
begin
  //Ante todo verifico que aun haya acceso a la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Recojo el ID_Cama y el  ID_CamaTemporal
        ID_Cama:= StrToInt(DBTextID_Cama.Field.Text);
        ID_CamaTemporal:= StrToInt(DBTextID_CamaTemporal.Field.Text);

        //Ahora debo verificar que el lecho temporal no este ocupado
        if (HostalWare.ExisteLechoOcupadoPorID_Cama(ID_Cama) = False)
          then
            begin //No está ocupada, así que se puede borrar
              //Elimino la cama temporal seleccionada
              HostalWare.EliminarCamaTemporalPorID_Cama(ID_CamaTemporal);

              //Actualizo el DBGrid de camas temporales
              HostalWare.MostrarCamasTemporalesPorID_Habitacion(FID_Habitacion);

              //Verifico si hay algo en el DBGrid de camas temporales, para ver si se puede borrar
              if (HostalWare.CantidadDeCamasTemporales <> 0)
                then
                  begin //Hay algo en el DBGrid
                    //Habilito el boton de Quitar
                    lblbtnEliminarCama.Enabled:= True;
                  end
                    else //No hay nada insertado
                      begin
                        //Deshabilito el boton de Quitar
                        lblbtnEliminarCama.Enabled:= False;
                      end;

              //Actualizo el Label informativo de capacidad
              lblCapacidad.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDeCamasTemporales);
            end
              else
                begin //Está ocupada, así que no se puede borrar
                  MessageDlg('La cama seleccionada está ocupada. Antes de poder borrarla debe' + #13 + 'eliminar el registro de su ocupante o trasladarlo hacia otra cama.', mtError, [mbOk], 0);
                end;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);

            //Cierro la forma
            frmModificarHabitacion.Close;
          end;
end;



procedure TfrmModificarHabitacion.SoloCaracteresKeyPress(Sender: TObject; var Key: Char);
begin
  //Valido para solo caracteres
  if not (Key in['a'..'z', 'A'..'Z', '0'..'9', #8, #13]) then Abort;
end;



procedure TfrmModificarHabitacion.Solo3NumerosKeyPress(Sender: TObject; var Key: Char);
begin
  //Verifico que no haya más de 3 numeros
  if (Length( DBedtNumeroCuarto1.Text ) < 3)
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
end;




procedure TfrmModificarHabitacion.RellenarHabitacionTemporal(aTempHabitacion: THabitacion);
begin
  //*** Rellenos los campos de la habitacion temporal ***
  //Ubicacion
  aTempHabitacion.ID_Habitacion:= FID_Habitacion;
  aTempHabitacion.NumeroHabitacion:= StrToInt(DBedtNumeroCuarto1.Field.Value);
  aTempHabitacion.Piso:=DBComboBoxPiso1.Field.Value;

  //Equipos
  aTempHabitacion.Televisores:= DBAdvSpinEditTelevisor.Value;
  aTempHabitacion.Refrigeradores:= DBAdvSpinEditRefrigerador.Value;
  aTempHabitacion.Ventiladores:= DBAdvSpinEditVentilador.Value;
  aTempHabitacion.CalentadoresAgua:= DBAdvSpinEditCalentadorAgua.Value;
  aTempHabitacion.SecadorPelo:= DBComboBoxSecadorPelo.Field.Value;
  aTempHabitacion.SillasYSillones:= DBAdvSpinEditSillasOSillones.Value;

  //Moviliario
  aTempHabitacion.MesasGrandes:= DBAdvSpinEditMesasGrandes.Value;
  aTempHabitacion.MesitasNoche:= DBAdvSpinEditMesitasNoche.Value;
  aTempHabitacion.MesasPC:= DBAdvSpinEditMesitasPC.Value;
  aTempHabitacion.Armario:= DBComboBoxArmario.Field.Value;
  aTempHabitacion.Closet:= DBComboBoxCloset.Field.Value;
  aTempHabitacion.Espejo:= DBComboBoxEspejo.Field.Value;

  //Servicios
  aTempHabitacion.AireAcondicionado:= DBComboBoxAireAcondicionado.Field.Value;
  aTempHabitacion.AguaCaliente:= DBComboBoxAguaCaliente.Field.Value;
  aTempHabitacion.TomasElectricas:= DBAdvSpinEditTomasElectricas.Value;

  //En dependencia que el telefono interno exista o no
  if (DBedtTelefonoInterno.Field.Value <> '')
    then
      begin
        aTempHabitacion.TelefonoInterno:= DBedtTelefonoInterno.Field.Value;
      end
        else
          begin
            aTempHabitacion.TelefonoInterno:= 'No Tiene';
          end;

  //En dependencia que el telefono directo exista o no
  if (DBedtTelefonoDirecto.Field.Value <> '')
    then
      begin
        aTempHabitacion.TelefonoDirecto:= DBedtTelefonoDirecto.Field.Value;
      end
        else
          begin
            aTempHabitacion.TelefonoDirecto:= 'No Tiene';
          end;

  
  aTempHabitacion.Internet:= DBComboBoxInternet.Field.Value;
  aTempHabitacion.TVSatelite:= DBComboBoxTVSatelite.Field.Value;
end;



end.
