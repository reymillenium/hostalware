unit UfrmNuevaHabitacion;

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
  UDataModuleHospedaje,
  
  //Otros
  LbButton,

  //Dialogs especiales, esquemas, etc (Message Master)
  MessDlgs, AdvEdit, AdvCombo, Mask, AdvSpin, AdvGroupBox, AdvOfficePager,
  AdvOfficePagerStylers, Grids, DBGrids, ColListb, BaseGrid, AdvGrid,
  AdvSmoothListBox, AdvSmoothPanel, AdvSmoothMenu, DBCtrls, AppEvnts;

  
type
  TfrmNuevaHabitacion = class(TForm)
    AdvOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    AdvOfficePagerHabitacion: TAdvOfficePager;
    AdvOfficePageCapacidad: TAdvOfficePage;
    AdvOfficePageMoviliario: TAdvOfficePage;
    AdvGroupBoxEquiposElectronicos: TAdvGroupBox;
    lblTelevisor: TLabel;
    lblRefrigerador: TLabel;
    lblVentilador: TLabel;
    AdvSpinEditTelevisor: TAdvSpinEdit;
    AdvSpinEditRefrigerador: TAdvSpinEdit;
    AdvSpinEditVentilador: TAdvSpinEdit;
    AdvGroupBoxMuebles: TAdvGroupBox;
    lblSillasOSillones: TLabel;
    lblMesasGrandes: TLabel;
    lblMesitasNoche: TLabel;
    lblMesitasPC: TLabel;
    lblArmario: TLabel;
    AdvSpinEditSillasOSillones: TAdvSpinEdit;
    AdvSpinEditMesasGrandes: TAdvSpinEdit;
    AdvSpinEditMesitasNoche: TAdvSpinEdit;
    AdvSpinEditMesitasPC: TAdvSpinEdit;
    lblCalentadorAgua: TLabel;
    AdvSpinEditCalentadorAgua: TAdvSpinEdit;
    lblSecadorPelo: TLabel;
    lblEspejo: TLabel;
    AdvOfficePageServicios: TAdvOfficePage;
    lblCloset: TLabel;
    ComboBoxSecadorPelo: TComboBox;
    ComboBoxArmario: TComboBox;
    ComboBoxCloset: TComboBox;
    ComboBoxEspejo: TComboBox;
    AdvGroupBoxUbicacion2: TAdvGroupBox;
    lblNumeroCuarto2: TLabel;
    lblPiso2: TLabel;
    AdvComboBoxPiso2: TAdvComboBox;
    edtNumeroCuarto2: TEdit;
    AdvGroupBoxUbicacion3: TAdvGroupBox;
    lblNumeroCuarto3: TLabel;
    lblPiso3: TLabel;
    AdvComboBoxPiso3: TAdvComboBox;
    edtNumeroCuarto3: TEdit;
    AdvGroupBoxServiciosBasicos: TAdvGroupBox;
    AdvGroupBoxUbicacion1: TAdvGroupBox;
    lblNumeroCuarto1: TLabel;
    lblPiso1: TLabel;
    AdvComboBoxPiso1: TAdvComboBox;
    edtNumeroCuarto1: TEdit;
    lblAireAcondicionado: TLabel;
    ComboBoxAireAcondicionado: TComboBox;
    lblAguaCaliente: TLabel;
    ComboBoxAguaCaliente: TComboBox;
    lblTelefonoInterno: TLabel;
    edtTelefonoInterno: TEdit;
    lblTomasElectricas: TLabel;
    AdvSpinEditTomasElectricas: TAdvSpinEdit;
    AdvGroupBoxServiciosLujo: TAdvGroupBox;
    lblInternet: TLabel;
    ComboBoxInternet: TComboBox;
    lblTVSatelite: TLabel;
    ComboBoxTVSatelite: TComboBox;
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
    AdvComboBoxTipoCama: TAdvComboBox;
    edtNumeroSerieCama: TEdit;
    lblbtnAgregarCama: TLbButton;
    lblbtnEliminarCama: TLbButton;
    lblCapacidad: TLabel;
    ListBoxTipoCama: TListBox;
    ListBoxNumeroSerieCama: TListBox;
    Label2: TLabel;
    Label3: TLabel;
    lblTelefonoDirecto: TLabel;
    edtTelefonoDirecto: TEdit;
    DBTextID_Habitacion: TDBText;

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
    procedure ListBoxTipoCamaClick(Sender: TObject);
    procedure ListBoxNumeroSerieCamaClick(Sender: TObject);
    procedure SoloCaracteresKeyPress(Sender: TObject; var Key: Char);
    procedure Solo3NumerosKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
    procedure RellenarHabitacionTemporal;
  end;

var
  frmNuevaHabitacion: TfrmNuevaHabitacion;

implementation

uses StrUtils;
var
    HostalWare: TGestionCursistasHospedados;
    TempHabitacion: THabitacion;
    TempCama: TCama;
{$R *.dfm}



procedure TfrmNuevaHabitacion.btnCancelarClick(Sender: TObject);
begin
  //Cierro la forma
  frmNuevaHabitacion.Close;
end;



procedure TfrmNuevaHabitacion.FormShow(Sender: TObject);
var
  hMenuHandle : HMENU;
begin
  //Mando a reiniciar los componentes (limpio cambios anteriores)
  lblbtnLimpiar1.Click;

  //Aquí deshabilito el botón de Cerrar de la forma
  hMenuHandle := GetSystemMenu(frmNuevaHabitacion.Handle, FALSE);
  if (hMenuHandle <> 0)
    then
      DeleteMenu(hMenuHandle, SC_CLOSE, MF_BYCOMMAND);

  //Activo la primera pestaña
  AdvOfficePagerHabitacion.ActivePageIndex:= 0;

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

  //Actualizo el Label informativo de capacidad
  lblCapacidad.Caption:= 'TOTAL = ' + IntToStr(ListBoxTipoCama.Count);

  //Pongo el focus en el Edit del numero de cuarto
  edtNumeroCuarto1.SetFocus;
end;

procedure TfrmNuevaHabitacion.edtNumeroHabitacionKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then lblbtnAceptar1.Click;

  //Valido para solo nombres
  if not (Key in['a'..'z', 'A'..'Z', 'ñ', 'Ñ', 'á', 'é', 'í', 'ó', 'ú', 'Á', 'É', 'Í', 'Ó', 'Ú', ' ', #8, #13]) then Abort;
end;



procedure TfrmNuevaHabitacion.edtPrimerApellidoKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then lblbtnAceptar1.Click;

  //Valido para solo nombres
  if not (Key in['a'..'z', 'A'..'Z', 'ñ', 'Ñ', 'á', 'é', 'í', 'ó', 'ú', 'Á', 'É', 'Í', 'Ó', 'Ú', ' ', #8, #13]) then Abort;
end;



procedure TfrmNuevaHabitacion.edtSegundoApellidoKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then lblbtnAceptar1.Click;

  //Valido para solo nombres
  if not (Key in['a'..'z', 'A'..'Z', 'ñ', 'Ñ', 'á', 'é', 'í', 'ó', 'ú', 'Á', 'É', 'Í', 'Ó', 'Ú', ' ', #8, #13]) then Abort;
end;



procedure TfrmNuevaHabitacion.edtUsuarioKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then lblbtnAceptar1.Click;

  //Valido para solo letras (sin espacios ni tildes)
  if not (Key in['a'..'z', 'A'..'Z', 'ñ', 'Ñ', #8, #13]) then Abort;
end;



procedure TfrmNuevaHabitacion.edtContrasennaKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then lblbtnAceptar1.Click;
end;



procedure TfrmNuevaHabitacion.edtRepetirContrasennaKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then lblbtnAceptar1.Click;
end;



procedure TfrmNuevaHabitacion.btnVerificarUsuarioClick(Sender: TObject);
begin
  //Verifica que no haya un usuario igual en la base de datos (¡Por programar!)
end;





procedure TfrmNuevaHabitacion.ComboBoxPrivilegioDrawItem(
  Control: TWinControl; Index: Integer; Rect: TRect;
  State: TOwnerDrawState);
const 
  clPaleGreen= TColor($CCFFCC);
  clPaleRed= TColor($CCCCFF);
  clStrongRed=TColor($006C6CFF);
begin
  with (Control as TComboBox) do
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



procedure TfrmNuevaHabitacion.CentrarForma(var m : TWMWINDOWPOSCHANGED);
begin
  m.windowpos.x := (Screen.Width - Width) div 2;   {Left/Posicion X}
  m.windowpos.y := (Screen.Height - Height) div 2; {Left/Posicion X}
end;



procedure TfrmNuevaHabitacion.SoloNumerosKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13]) then lblbtnAceptar1.Click;

  //Valido para solo numeros
  if not (Key in['0'..'9', #8, #13]) then Abort;
end;



procedure TfrmNuevaHabitacion.lblbtnCancelarClick(Sender: TObject);
begin
  //Cierro la forma
  frmNuevaHabitacion.Close;
end;



procedure TfrmNuevaHabitacion.AdvComboBoxPiso1Change(Sender: TObject);
begin
  //Actualizo el resto de los ComboBox de Piso, en base al 1ro de ellos
  AdvComboBoxPiso2.ItemIndex:=  AdvComboBoxPiso1.ItemIndex;
  AdvComboBoxPiso3.ItemIndex:=  AdvComboBoxPiso1.ItemIndex;
end;



procedure TfrmNuevaHabitacion.AdvComboBoxPiso2Change(Sender: TObject);
begin
  //Actualizo el resto de los ComboBox de Piso, en base al 2do de ellos
  AdvComboBoxPiso1.ItemIndex:=  AdvComboBoxPiso2.ItemIndex;
  AdvComboBoxPiso3.ItemIndex:=  AdvComboBoxPiso2.ItemIndex;
end;



procedure TfrmNuevaHabitacion.AdvComboBoxPiso3Change(Sender: TObject);
begin
  //Actualizo el resto de los ComboBox de Piso, en base al 3ro de ellos
  AdvComboBoxPiso1.ItemIndex:=  AdvComboBoxPiso3.ItemIndex;
  AdvComboBoxPiso2.ItemIndex:=  AdvComboBoxPiso3.ItemIndex;
end;



procedure TfrmNuevaHabitacion.edtNumeroCuarto1Change(Sender: TObject);
begin
  //Actualizo el resto de los Edits de numero de habitacion, en base al 1ro de ellos
  edtNumeroCuarto2.Text:= edtNumeroCuarto1.Text;
  edtNumeroCuarto3.Text:= edtNumeroCuarto1.Text;
end;



procedure TfrmNuevaHabitacion.edtNumeroCuarto2Change(Sender: TObject);
begin
  //Actualizo el resto de los Edits de numero de habitacion, en base al 2do de ellos
  edtNumeroCuarto1.Text:= edtNumeroCuarto2.Text;
  edtNumeroCuarto3.Text:= edtNumeroCuarto2.Text;
end;



procedure TfrmNuevaHabitacion.edtNumeroCuarto3Change(Sender: TObject);
begin
  //Actualizo el resto de los Edits de numero de habitacion, en base al 3ro de ellos
  edtNumeroCuarto1.Text:= edtNumeroCuarto3.Text;
  edtNumeroCuarto2.Text:= edtNumeroCuarto3.Text;
end;



procedure TfrmNuevaHabitacion.lblbtnLimpiarClick(Sender: TObject);
begin
  //Reinicio todas las posiciones

  //Ubicacion (se modifica en todos los demas)
  edtNumeroCuarto1.Clear;
  AdvComboBoxPiso1.ItemIndex:= 3;
  AdvComboBoxPiso2.ItemIndex:= 3;
  AdvComboBoxPiso3.ItemIndex:= 3;

  //Capacidad
  AdvComboBoxTipoCama.ItemIndex:= 0;
  edtNumeroSerieCama.Clear;

  //Moviliario (equipos)
  AdvSpinEditTelevisor.Value:= 0;
  AdvSpinEditRefrigerador.Value:= 0;
  AdvSpinEditVentilador.Value:= 0;
  AdvSpinEditCalentadorAgua.Value:= 0;
  ComboBoxSecadorPelo.ItemIndex:= 0;

  //Moviliario (Muebles)
  AdvSpinEditSillasOSillones.Value:= 0;
  AdvSpinEditMesasGrandes.Value:= 0;
  AdvSpinEditMesitasNoche.Value:= 0;
  AdvSpinEditMesitasPC.Value:= 0;
  ComboBoxArmario.ItemIndex:= 0;
  ComboBoxCloset.ItemIndex:= 0;
  ComboBoxEspejo.ItemIndex:= 0;

  //Servicios (basicos)
  ComboBoxAireAcondicionado.ItemIndex:= 0;
  ComboBoxAguaCaliente.ItemIndex:= 0;
  AdvSpinEditTomasElectricas.Value:= 0;
  edtTelefonoInterno.Clear;
  edtTelefonoDirecto.Clear;

  //Servicios (de lujo)
  ComboBoxInternet.ItemIndex:= 0;
  ComboBoxTVSatelite.ItemIndex:= 0;

  //Limpio los ListBox
  ListBoxTipoCama.Clear;
  ListBoxNumeroSerieCama.Clear;

  //Pongo el focus en el Edit de numero de cuarto
  //En dependencia de la pestaña activa
  if (AdvOfficePagerHabitacion.ActivePageIndex = 0 )
    then
      begin
        edtNumeroCuarto1.SetFocus;
      end
        else
          begin
            if (AdvOfficePagerHabitacion.ActivePageIndex = 1 )
              then
                begin
                  edtNumeroCuarto2.SetFocus;
                end
                  else
                    begin
                      if (AdvOfficePagerHabitacion.ActivePageIndex = 2 )
                        then
                          begin
                            edtNumeroCuarto3.SetFocus;
                          end;
                    end;
          end;
end;



procedure TfrmNuevaHabitacion.lblbtnAceptarClick(Sender: TObject);
var
  i, ID_Habitacion: Integer;
  NumeroIncompleto: AnsiString;
begin
  //Primero verifico que aun exista conexión con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Luego verifico que se haya tecleado el número del cuarto
        if (edtNumeroCuarto1.Text <> '')
          then
            begin //Se tecleó el número del cuarto
              //Procedo a completar los 3 digitos para el número de la habitación
              if (Length(edtNumeroCuarto1.Text) = 1)
                then
                  begin  //*** Una sola cifra
                    //Recojo el número incompleto (con 1 cifra)
                    NumeroIncompleto:= edtNumeroCuarto1.Text;

                    //Completo hasta las 3 cifras necesarias
                    if (AdvComboBoxPiso1.Text = 'PB')
                      then
                        begin //Planta Baja
                          edtNumeroCuarto1.Text:= '10' + NumeroIncompleto;
                        end
                          else
                            begin //Otros Pisos
                              edtNumeroCuarto1.Text:= LeftStr(AdvComboBoxPiso1.Text, 1) + '0' + NumeroIncompleto;
                            end;
                  end
                    else //*** Mas de una cifra
                      begin
                        if (Length(edtNumeroCuarto1.Text) = 2)
                          then
                            begin //*** Dos cifras
                              //Recojo el número incompleto (con 2 cifras)
                              NumeroIncompleto:= edtNumeroCuarto1.Text;

                              //Completo hasta las 3 cifras necesarias
                              if (AdvComboBoxPiso1.Text = 'PB')
                                then
                                  begin //Planta Baja
                                    edtNumeroCuarto1.Text:= '1' + NumeroIncompleto;
                                  end
                                    else
                                      begin //Otros Pisos
                                        edtNumeroCuarto1.Text:= LeftStr(AdvComboBoxPiso1.Text, 1) + NumeroIncompleto;
                                      end;
                            end
                              else
                                begin //*** Mas de 2 cifras
                                  if (Length(edtNumeroCuarto1.Text) = 3)
                                    then
                                      begin //*** Tres cifras
                                        //Compruebo si concuerda el número con el piso
                                        if (LeftStr(edtNumeroCuarto1.Text, 1) <> LeftStr( AdvComboBoxPiso1.Text, 1) )
                                          then
                                            begin //No concuerda, así que arreglo el número
                                              //Recojo el número no acorde
                                              NumeroIncompleto:= edtNumeroCuarto1.Text;

                                              //Arreglo las cifras para que concuerde
                                              edtNumeroCuarto1.Text:= LeftStr(AdvComboBoxPiso1.Text, 1) + RightStr(NumeroIncompleto, 2)
                                            end;
                                      end;
                                end;
                      end;

              //Y finalmente verifico que no exista otra habitacion con el mismo número
              if (HostalWare.ExisteLaHabitacionConNumero(StrToInt(edtNumeroCuarto1.Text)) = False)
                then
                  begin
                    //Relleno la habitacion temporal
                    RellenarHabitacionTemporal;
  
                    //Introduzco los datos en la BD
                    HostalWare.InsertarHabitacion(TempHabitacion);

                    //Inserto la Traza
                    HostalWare.GuardarTrazaDelSistema('Insertó la habitación ' + edtNumeroCuarto1.Text);

                    //Actualizo todas las trazas
                    HostalWare.MostrarTodasLasTrazas;

                    //Obtengo el ID_Habitacion de la Habitacion que acabo de insertar (para enlazarlo con sus camas)
                    HostalWare.BuscarHabitacionPorNumero(StrToInt(edtNumeroCuarto1.Text));

                    //Recojo el ID_Habitacion
                    ID_Habitacion:= StrToInt(DBTextID_Habitacion.Field.Text);

                    //Verifico que el ListBox de camas no esté vacio
                    if (ListBoxTipoCama.Count<> 0)
                      then
                        begin
                          //Recorro desde la 1ra hasta la ultima cama insertada en los ListBox
                          for i:= 0 to ListBoxTipoCama.Count-1 do
                            begin
                              //Creo la cama temporal
                              TempCama:= TCama.Create;

                              //Relleno los campos del Curso Programado temporal
                              TempCama.TipoCama:= ListBoxTipoCama.Items.Strings[i];
                              TempCama.NumeroSerie:= ListBoxNumeroSerieCama.Items.Strings[i];
                              TempCama.EstadoOcupacional:= 'Libre';
                              TempCama.ID_Habitacion:= ID_Habitacion;

                              //Mando a insertar la Cama Temporal en la BD
                              HostalWare.InsertarCama(TempCama);

                              //Destruyo la cama temporal
                              TempCama.Destroy;
                            end;
                        end;

                    //Actualizo el DBGrid (forma principal) de las Habitaciones
                    HostalWare.MostrarHabitaciones;

                    //Cierro la forma
                    frmNuevaHabitacion.Close;
                  end
                    else //Ya existe una habitación con el mismo número
                      begin
                        MessageDlg('Ya existe una habitación con el número ' + edtNumeroCuarto1.Text + '.', mtError, [mbOk], 0);
                      end;
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
            frmNuevaHabitacion.Close;
          end;


                

end;



procedure TfrmNuevaHabitacion.lblbtnAgregarCamaClick(Sender: TObject);
var
  TipoCama, NumeroSerieCama: AnsiString;
  i: Integer;
  Label InsertarDirecto, SalidaPerfecta, SalidaConLios;
begin
  //Primero verifico que todos los campos estén llenos
  if (edtNumeroSerieCama.Text <> '')
    then
      begin
        //Tomo lo que necesito
        TipoCama:= AdvComboBoxTipoCama.Text;
        NumeroSerieCama:= UpperCase( edtNumeroSerieCama.Text ); //En mayúsculas el número de serie

        //Verifico que el ListBox de camas no esté vacio
        if (ListBoxTipoCama.Count<> 0)
          then
            begin
              //Recorro desde la 1ra hasta la ultima cama insertada en los ListBox
              for i:= 0 to ListBoxTipoCama.Count-1 do
                begin
                  if (ListBoxNumeroSerieCama.Items[i] = NumeroSerieCama)
                    then
                      begin
                        MessageDlg('Ya usted introdujo una cama con el número de serie ' + NumeroSerieCama + '.', mtError, [mbOk], 0);

                        //Salgo del procedimiento
                        goto SalidaConLios;
                      end;
                end;
            end
              else
                begin
                  goto InsertarDirecto;
                end;


        //Etiqueta de insercion, cuando todo no hay nada en los ListBox
        InsertarDirecto:
        
        //En caso de que la cama sea del tipo 'litera', debo cubrir la de arriba y la de abajo
        if (TipoCama = 'Litera')
          then
            begin
              ListBoxTipoCama.Items.Add(TipoCama + ' Arriba');
              ListBoxTipoCama.Items.Add(TipoCama + ' Debajo');

              ListBoxNumeroSerieCama.Items.Add(NumeroSerieCama);
              ListBoxNumeroSerieCama.Items.Add(NumeroSerieCama);
            end
              else
                begin  //Del tipo 'cama'
                  //Procedo a insertar los campos en los ListBox
                  ListBoxTipoCama.Items.Add(TipoCama);
                  ListBoxNumeroSerieCama.Items.Add(NumeroSerieCama);
                end;

        //Actualizo el Label informativo de capacidad
        lblCapacidad.Caption:= 'TOTAL = ' + IntToStr(ListBoxTipoCama.Count);

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
end;



procedure TfrmNuevaHabitacion.lblbtnEliminarCamaClick(Sender: TObject);
begin
  //Verifico que haya algo insertado en los ListBox
  if (ListBoxTipoCama.Count <> 0)
    then
      begin
        //Elimino de cada ListBox la fila seleccionada
        ListBoxTipoCama.DeleteSelected;
        ListBoxNumeroSerieCama.DeleteSelected;

        //Actualizo el Label informativo de capacidad
        lblCapacidad.Caption:= 'TOTAL = ' + IntToStr(ListBoxTipoCama.Count);

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
      end;
end;



procedure TfrmNuevaHabitacion.ListBoxTipoCamaClick(Sender: TObject);
begin
  //Mando a seleccionar el resto de los ListBox
  if (ListBoxTipoCama.ItemIndex >= 0)
    then
      begin
        //Selecciono el otro ListBox
        ListBoxNumeroSerieCama.ItemIndex:= ListBoxTipoCama.ItemIndex;
      end;
end;



procedure TfrmNuevaHabitacion.ListBoxNumeroSerieCamaClick(Sender: TObject);
begin
  //Mando a seleccionar el resto de los ListBox
  if (ListBoxNumeroSerieCama.ItemIndex >= 0)
    then
      begin
        //Selecciono el otro ListBox
        ListBoxTipoCama.ItemIndex:= ListBoxNumeroSerieCama.ItemIndex;
      end;
end;



procedure TfrmNuevaHabitacion.RellenarHabitacionTemporal;
begin
  //Creo la habitacion temporal
  TempHabitacion:= THabitacion.Create;


  //*** Rellenos los campos de la habitacion temporal ***
  //Ubicacion
  TempHabitacion.NumeroHabitacion:= StrToInt(edtNumeroCuarto1.Text);
  TempHabitacion.Piso:=AdvComboBoxPiso1.Text;

  //Equipos
  TempHabitacion.Televisores:= StrToInt(AdvSpinEditTelevisor.Text);
  TempHabitacion.Refrigeradores:= StrToInt(AdvSpinEditRefrigerador.Text);
  TempHabitacion.Ventiladores:= StrToInt(AdvSpinEditVentilador.Text);
  TempHabitacion.CalentadoresAgua:= StrToInt(AdvSpinEditCalentadorAgua.Text);
  TempHabitacion.SecadorPelo:= ComboBoxSecadorPelo.Text;
  TempHabitacion.SillasYSillones:= StrToInt(AdvSpinEditSillasOSillones.Text);

  //Moviliario
  TempHabitacion.MesasGrandes:= StrToInt(AdvSpinEditMesasGrandes.Text);
  TempHabitacion.MesitasNoche:= StrToInt(AdvSpinEditMesitasNoche.Text);
  TempHabitacion.MesasPC:= StrToInt(AdvSpinEditMesitasPC.Text);
  TempHabitacion.Armario:= ComboBoxArmario.Text;
  TempHabitacion.Closet:= ComboBoxCloset.Text;
  TempHabitacion.Espejo:= ComboBoxEspejo.Text;

  //Servicios
  TempHabitacion.AireAcondicionado:= ComboBoxAireAcondicionado.Text;
  TempHabitacion.AguaCaliente:= ComboBoxAguaCaliente.Text;
  TempHabitacion.TomasElectricas:= StrToInt(AdvSpinEditTomasElectricas.Text);

  //En dependencia que el telefono interno exista o no
  if (edtTelefonoInterno.Text <> '')
    then
      begin
        TempHabitacion.TelefonoInterno:= edtTelefonoInterno.Text;
      end
        else
          begin
            TempHabitacion.TelefonoInterno:= 'No Tiene';
          end;

  //En dependencia que el telefono directo exista o no
  if (edtTelefonoDirecto.Text <> '')
    then
      begin
        TempHabitacion.TelefonoDirecto:= edtTelefonoDirecto.Text;
      end
        else
          begin
            TempHabitacion.TelefonoDirecto:= 'No Tiene';
          end;

  
  TempHabitacion.Internet:= ComboBoxInternet.Text;
  TempHabitacion.TVSatelite:= ComboBoxTVSatelite.Text;
end;



procedure TfrmNuevaHabitacion.SoloCaracteresKeyPress(Sender: TObject; var Key: Char);
begin
  //Valido para solo caracteres
  if not (Key in['a'..'z', 'A'..'Z', '0'..'9', #8, #13]) then Abort;
end;



procedure TfrmNuevaHabitacion.Solo3NumerosKeyPress(Sender: TObject; var Key: Char);
begin
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
end;




end.
