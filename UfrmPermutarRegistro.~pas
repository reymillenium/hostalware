unit UfrmPermutarRegistro;

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
  TfrmPermutarRegistro = class(TForm)
    AdvOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    OfficePagerNuevoRegistro: TAdvOfficePager;
    PageAsignacion: TAdvOfficePage;
    lblbtnAceptar4: TLbButton;
    lblbtnCancelar4: TLbButton;
    lblbtnAnularAsignacion: TLbButton;
    lblbtnAsignarCama: TLbButton;
    DBtxtID_Habitacion: TDBText;
    DBtxtID_Cama: TDBText;
    DBtxtNombreHuesped_A: TDBText;
    DBtxtApellidosHuesped_A: TDBText;
    DBtxtCarneIdentidad_A: TDBText;
    DBtxtNumeroSerieCama_A: TDBText;
    DBtxtNumeroHabitacion_A: TDBText;
    AdvGroupBoxHuespedesRegistrados: TAdvGroupBox;
    DBGridHuespedesRegistrados: TDBAdvGrid;
    lblFiltrarRegistrosPorPiso: TLabel;
    cmbxFiltrarRegistrosPorPiso: TAdvOfficeSelector;
    lblFiltrarRegistrosPorMotivo: TLabel;
    cmbxFiltrarRegistrosPorMotivo: TAdvOfficeSelector;
    DBTextID_Huesped_B: TDBText;
    DBTextID_CamaDeHuesped_B: TDBText;
    lblEtiquetaTotalHuespedes: TLabel;
    DBTextApellidos_B: TDBText;
    DBTextNombre_B: TDBText;
    DBTextCarneIdentidad_B: TDBText;
    DBTextNumeroSerieCama_B: TDBText;
    DBTextNumeroHabitacion_B: TDBText;
    DBAdvGlowNavigatorHuespedesRegistrados: TDBAdvGlowNavigator;

    procedure btnCancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);

    procedure CentrarForma(var m: TWMWINDOWPOSCHANGED); message
    WM_WINDOWPOSCHANGING;

    procedure lblbtnCancelarClick(Sender: TObject);
    procedure lblbtnAceptarClick(Sender: TObject);
    procedure lblbtnAsignarCamaClick(Sender: TObject);
    procedure lblbtnAnularAsignacionClick(Sender: TObject);
    procedure cmbxFiltrarRegistrosPorPisoChange(Sender: TObject);
    procedure cmbxFiltrarRegistrosPorMotivoChange(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    FID_Huesped_A: Integer;
    FID_Cama_A: Integer;
    
    FID_Huesped_B: Integer;
    FID_Cama_B: Integer;
    
    procedure ActualizarRegistros;

    function SeAsignoUnaCama: Boolean;
  end;

var
  frmPermutarRegistro: TfrmPermutarRegistro;

implementation

uses StrUtils;
var
    HostalWare: TGestionCursistasHospedados;
{$R *.dfm}



procedure TfrmPermutarRegistro.btnCancelarClick(Sender: TObject);
begin
  //Cierro la forma
  frmPermutarRegistro.Close;
end;



procedure TfrmPermutarRegistro.FormShow(Sender: TObject);
var
  hMenuHandle : HMENU;
  ID_ProvinciaHuesped, ID_ProvinciaCentroLaboral: Integer;
  ID_Habitacion: Integer;
begin
  //Pongo el FID_Cama_B en cero
  FID_Cama_B:= 0;

  //Deshabilito el boton de Asignar
  lblbtnAceptar4.Enabled:= False;  

  //En dependencia de si hubo asignación de nueva cama, o no
  if (FID_Cama_B = 0)
    then
      begin //No hubo asignación
        lblbtnAsignarCama.Enabled:= True;
        lblbtnAnularAsignacion.Enabled:= False;

        //Habilito los componentes
        cmbxFiltrarRegistrosPorPiso.Enabled:= True;
        cmbxFiltrarRegistrosPorMotivo.Enabled:= True;
        DBGridHuespedesRegistrados.Enabled:= True;
        DBAdvGlowNavigatorHuespedesRegistrados.Enabled:= True;

        //Deshabilito el boton de Aceptar (no puedo permutar aun)
        lblbtnAceptar4.Enabled:= False;
      end
        else
          begin //Hubo asignación
            lblbtnAsignarCama.Enabled:= False;
            lblbtnAnularAsignacion.Enabled:= True;

            //Deshabilito los componentes
            cmbxFiltrarRegistrosPorPiso.Enabled:= False;
            cmbxFiltrarRegistrosPorMotivo.Enabled:= False;
            DBGridHuespedesRegistrados.Enabled:= False;
            DBAdvGlowNavigatorHuespedesRegistrados.Enabled:= False;

            //Habilito el boton de Aceptar (ya puedo permutar)
            lblbtnAceptar4.Enabled:= True;
          end;
  
  //Aquí deshabilito el botón de Cerrar de la forma
  hMenuHandle := GetSystemMenu(frmPermutarRegistro.Handle, FALSE);

  if (hMenuHandle <> 0)
    then
      begin
        DeleteMenu(hMenuHandle, SC_CLOSE, MF_BYCOMMAND);
      end;

  //Busco los datos necesarios del huésped que deseo permutar (A)
  HostalWare.MostrarDatosTotalesDeHuespedPorID_Huesped(FID_Huesped_A);

  //Mando a actualizar los Registros que pueden permutar con el huésped A
  ActualizarRegistros;

  //Modifico el Caption de la forma, por una razon informativa
  frmPermutarRegistro.Caption:= 'Permuta de Registro - ' + DBtxtNombreHuesped_A.Field.Text + ' ' + DBtxtApellidosHuesped_A.Field.Text + ' (Habitación: ' + DBtxtNumeroHabitacion_A.Field.Text + ', Cama: ' + DBtxtNumeroSerieCama_A.Field.Text + ')';
end;



procedure TfrmPermutarRegistro.CentrarForma(var m : TWMWINDOWPOSCHANGED);
begin
  m.windowpos.x := (Screen.Width - Width) div 2;   {Left/Posicion X}
  m.windowpos.y := (Screen.Height - Height) div 2; {Left/Posicion X}
end;



procedure TfrmPermutarRegistro.lblbtnCancelarClick(Sender: TObject);
begin
  //Cierro la forma
  frmPermutarRegistro.Close;
end;



procedure TfrmPermutarRegistro.lblbtnAceptarClick(Sender: TObject);
var
  Nombre_A,
  Apellidos_A,
  CarneIdentidad_A,
  NumeroSerieCama_A,
  NumeroHabitacion_A: AnsiString;

  Nombre_B,
  Apellidos_B,
  CarneIdentidad_B,
  NumeroSerieCama_B,
  NumeroHabitacion_B: AnsiString;
begin

  //Primero verifico que aun exista conexión con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Luego verifico que se haya asignado una cama los valores necesarios
        if (SeAsignoUnaCama = True)
          then
            begin //Se asignó una cama al futuro hospedado
              //Tomo los valores necesarios del huésped A (para conformar la traza)
              Nombre_A:= DBtxtNombreHuesped_A.Field.Text;
              Apellidos_A:= DBtxtApellidosHuesped_A.Field.Text;
              CarneIdentidad_A:= DBtxtCarneIdentidad_A.Field.Text;
              NumeroSerieCama_A:= DBtxtNumeroSerieCama_A.Field.Text;
              NumeroHabitacion_A:= DBtxtNumeroHabitacion_A.Field.Text;

              //Tomo los valores necesarios del huésped B (para conformar la traza)
              Nombre_B:= DBTextNombre_B.Field.Text;
              Apellidos_B:= DBTextApellidos_B.Field.Text;
              CarneIdentidad_B:= DBTextCarneIdentidad_B.Field.Text;
              NumeroSerieCama_B:= DBTextNumeroSerieCama_B.Field.Text;
              NumeroHabitacion_B:= DBTextNumeroHabitacion_B.Field.Text;

              //Le modifico el ID_Cama del huésped A (lo traslado hacia la cama del huésped B)
              HostalWare.TrasladarHuespedDeCamaPorID_Huesped(FID_Cama_B, FID_Huesped_A);

              //Le modifico el ID_Cama del huésped B (lo traslado hacia la cama del huésped A)
              HostalWare.TrasladarHuespedDeCamaPorID_Huesped(FID_Cama_A, FID_Huesped_B);

              //Inserto la Traza (AUN POR TERMINAR)
              HostalWare.GuardarTrazaDelSistema('Permutó al huésped ' + Nombre_A + ' ' + Apellidos_A + ', con Carné de Identidad ' + CarneIdentidad_A + ', que inicialmente estaba en la habitación ' + NumeroHabitacion_A + ' y en la cama ' + NumeroSerieCama_A + ', con el huésped ' + Nombre_B + ' ' + Apellidos_B + ', con Carné de Identidad ' + CarneIdentidad_B + ', que antes estaba en la habitación ' +  NumeroHabitacion_B + ' y en la cama ' + NumeroSerieCama_B);

              //Actualizo todas las trazas
              HostalWare.MostrarTodasLasTrazas;

             //Cierro la forma
             frmPermutarRegistro.Close;
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
            frmPermutarRegistro.Close;
          end;
end;

  

function TfrmPermutarRegistro.SeAsignoUnaCama: Boolean;
begin
  //Verifico si se asignó una cama al hospedado
  if (FID_Cama_B <> 0)
    then
      begin
        Result:= True;
      end
        else
          begin
            Result:= False;
          end;
end;



procedure TfrmPermutarRegistro.lblbtnAsignarCamaClick(Sender: TObject);
begin
  //Primero verifico que aun exista conexión con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Asigno el ID_Cama para el huésped B
        FID_Cama_B:= StrToInt(DBTextID_CamaDeHuesped_B.Field.Text);

        //Asigno el ID_Huesped para el huésped B
        FID_Huesped_B:= StrToInt(DBTextID_Huesped_B.Field.Text);

        //En dependencia de si hubo asignación de nueva cama, o no
        if (FID_Cama_B = 0)
          then
            begin //No hubo asignación
              lblbtnAsignarCama.Enabled:= True;
              lblbtnAnularAsignacion.Enabled:= False;

              //Habilito los componentes
              cmbxFiltrarRegistrosPorPiso.Enabled:= True;
              cmbxFiltrarRegistrosPorMotivo.Enabled:= True;
              DBGridHuespedesRegistrados.Enabled:= True;
              DBAdvGlowNavigatorHuespedesRegistrados.Enabled:= True;

              //Deshabilito el boton de Aceptar (no puedo permutar aun)
              lblbtnAceptar4.Enabled:= False;
            end
              else
                begin //Hubo asignación
                  lblbtnAsignarCama.Enabled:= False;
                  lblbtnAnularAsignacion.Enabled:= True;

                  //Deshabilito los componentes
                  cmbxFiltrarRegistrosPorPiso.Enabled:= False;
                  cmbxFiltrarRegistrosPorMotivo.Enabled:= False;
                  DBGridHuespedesRegistrados.Enabled:= False;
                  DBAdvGlowNavigatorHuespedesRegistrados.Enabled:= False;

                  //Habilito el boton de Aceptar (ya puedo permutar)
                  lblbtnAceptar4.Enabled:= True;
                end;
      end
        else  //No existe conexión con la BD
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);

            //Cierro la forma
            frmPermutarRegistro.Close;
          end;
end;



procedure TfrmPermutarRegistro.lblbtnAnularAsignacionClick(Sender: TObject);
begin
  //Le otorgo cero a los IDs del huésped B
  FID_Cama_B:= 0;
  FID_Huesped_B:= 0;

  //En dependencia de si hubo asignación de nueva cama, o no
  if (FID_Cama_B = 0)
    then
      begin //No hubo asignación
        lblbtnAsignarCama.Enabled:= True;
        lblbtnAnularAsignacion.Enabled:= False;

        //Habilito los componentes
        cmbxFiltrarRegistrosPorPiso.Enabled:= True;
        cmbxFiltrarRegistrosPorMotivo.Enabled:= True;
        DBGridHuespedesRegistrados.Enabled:= True;
        DBAdvGlowNavigatorHuespedesRegistrados.Enabled:= True;

        //Deshabilito el boton de Aceptar (no puedo permutar aun)
        lblbtnAceptar4.Enabled:= False;
      end
        else
          begin //Hubo asignación
            lblbtnAsignarCama.Enabled:= False;
            lblbtnAnularAsignacion.Enabled:= True;

            //Deshabilito los componentes
            cmbxFiltrarRegistrosPorPiso.Enabled:= False;
            cmbxFiltrarRegistrosPorMotivo.Enabled:= False;
            DBGridHuespedesRegistrados.Enabled:= False;
            DBAdvGlowNavigatorHuespedesRegistrados.Enabled:= False;

            //Habilito el boton de Aceptar (ya puedo permutar)
            lblbtnAceptar4.Enabled:= True;
          end;
end;



procedure TfrmPermutarRegistro.ActualizarRegistros;
var
  ID_Habitacion: Integer;
  Motivo, Piso: AnsiString;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //En dependencia del filtrado por pisos escogido
        if (cmbxFiltrarRegistrosPorPiso.Text = 'TODOS')
          then //Todos los pisos juntos
            begin
              //En dependencia del filtrado por motivo escogido
              if (cmbxFiltrarRegistrosPorMotivo.Text = 'TODOS')
                then
                  begin //Todos los motivos, todos los pisos
                    //Le cambio el DataSource al DBGrid de huespedes registrados
                    DBGridHuespedesRegistrados.DataSource:= DataModuleRegistroDeHuespedes.dsSelecOtrosHuespedesTotalesPorID_Huesped;

                    //Le cambio el DataSource a los DBTExt del Huésped B
                    DBTextID_Huesped_B.DataSource:= DataModuleRegistroDeHuespedes.dsSelecOtrosHuespedesTotalesPorID_Huesped;
                    DBTextID_CamaDeHuesped_B.DataSource:= DataModuleRegistroDeHuespedes.dsSelecOtrosHuespedesTotalesPorID_Huesped;
                    DBTextNombre_B.DataSource:= DataModuleRegistroDeHuespedes.dsSelecOtrosHuespedesTotalesPorID_Huesped;
                    DBTextApellidos_B.DataSource:= DataModuleRegistroDeHuespedes.dsSelecOtrosHuespedesTotalesPorID_Huesped;
                    DBTextCarneIdentidad_B.DataSource:= DataModuleRegistroDeHuespedes.dsSelecOtrosHuespedesTotalesPorID_Huesped;
                    DBTextNumeroSerieCama_B.DataSource:= DataModuleRegistroDeHuespedes.dsSelecOtrosHuespedesTotalesPorID_Huesped;
                    DBTextNumeroHabitacion_B.DataSource:= DataModuleRegistroDeHuespedes.dsSelecOtrosHuespedesTotalesPorID_Huesped;

                    //Le cambio el DataSource al DBAdvGlowNavigator de los huespedes registrados
                    DBAdvGlowNavigatorHuespedesRegistrados.DataSource:= DataModuleRegistroDeHuespedes.dsSelecOtrosHuespedesTotalesPorID_Huesped;

                    //Actualizo el DBGrid y los DBText (forma principal) con todos los otros huespedes
                    HostalWare.MostrarOtrosHuespedesTotalesPorID_Huesped(FID_Huesped_A);

                    //Valido la habilitación de los botones de 'Permutar'
                    if (HostalWare.CantidadDeOtrosHuespedesTotalesPorID_Huesped > 0)
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

                    if (HostalWare.CantidadDeOtrosHuespedesTotalesPorID_Huesped = 1)
                      then
                        begin
                          //Actualizo la cantidad de huespedes (totales)
                          lblEtiquetaTotalHuespedes.Caption:= 'TOTAL = 1 huésped';
                        end
                          else
                            begin
                              //Actualizo la cantidad de huespedes (totales)
                              lblEtiquetaTotalHuespedes.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDeOtrosHuespedesTotalesPorID_Huesped) + ' huéspedes';
                            end;
                  end
                    else
                      begin //Un motivo en específico, para todos los pisos
                        //Recojo el motivo
                        Motivo:= cmbxFiltrarRegistrosPorMotivo.Text;

                        //Le cambio el DataSource al DBGrid de huespedes registrados
                        DBGridHuespedesRegistrados.DataSource:= DataModuleRegistroDeHuespedes.dsSelecOtrosHuespedesPorMotivoYPorID_Huesped;

                        //Le cambio el DataSource a los DBTExt del Huésped B
                        DBTextID_Huesped_B.DataSource:= DataModuleRegistroDeHuespedes.dsSelecOtrosHuespedesPorMotivoYPorID_Huesped;
                        DBTextID_CamaDeHuesped_B.DataSource:= DataModuleRegistroDeHuespedes.dsSelecOtrosHuespedesPorMotivoYPorID_Huesped;
                        DBTextNombre_B.DataSource:= DataModuleRegistroDeHuespedes.dsSelecOtrosHuespedesPorMotivoYPorID_Huesped;
                        DBTextApellidos_B.DataSource:= DataModuleRegistroDeHuespedes.dsSelecOtrosHuespedesPorMotivoYPorID_Huesped;
                        DBTextCarneIdentidad_B.DataSource:= DataModuleRegistroDeHuespedes.dsSelecOtrosHuespedesPorMotivoYPorID_Huesped;
                        DBTextNumeroSerieCama_B.DataSource:= DataModuleRegistroDeHuespedes.dsSelecOtrosHuespedesPorMotivoYPorID_Huesped;
                        DBTextNumeroHabitacion_B.DataSource:= DataModuleRegistroDeHuespedes.dsSelecOtrosHuespedesPorMotivoYPorID_Huesped;

                        //Le cambio el DataSource al DBAdvGlowNavigator de los huespedes registrados
                        DBAdvGlowNavigatorHuespedesRegistrados.DataSource:= DataModuleRegistroDeHuespedes.dsSelecOtrosHuespedesPorMotivoYPorID_Huesped;

                        //Actualizo el DBGrid y los DBText (forma principal) con todos los otros huespedes
                        HostalWare.MostrarOtrosHuespedesPorMotivoYPorID_Huesped(Motivo, FID_Huesped_A);

                        //Valido la habilitación de los botones de 'Permutar'
                        if (HostalWare.CantidadDeOtrosHuespedesPorMotivoYPorID_Huesped > 0)
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

                        if (HostalWare.CantidadDeOtrosHuespedesPorMotivoYPorID_Huesped = 1)
                          then
                            begin
                              //Actualizo la cantidad de huespedes (totales)
                              lblEtiquetaTotalHuespedes.Caption:= 'TOTAL = 1 huésped';
                            end
                              else
                                begin
                                  //Actualizo la cantidad de huespedes (totales)
                                  lblEtiquetaTotalHuespedes.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDeOtrosHuespedesPorMotivoYPorID_Huesped) + ' huéspedes';
                                end;
                      end;
            end
              else //Específico, por pisos
                begin 
                  //En dependencia del filtrado por motivo escogido
                  if (cmbxFiltrarRegistrosPorMotivo.Text = 'TODOS')
                    then
                      begin //Todos los motivos, por pisos en especifico
                        //Recojo el piso
                        Piso:= LeftStr(cmbxFiltrarRegistrosPorPiso.Text, 3);

                        //Le cambio el DataSource al DBGrid de huespedes registrados
                        DBGridHuespedesRegistrados.DataSource:= DataModuleRegistroDeHuespedes.dsSelecOtrosHuespedesPorPisoYPorID_Huesped;

                        //Le cambio el DataSource a los DBTExt del Huésped B
                        DBTextID_Huesped_B.DataSource:= DataModuleRegistroDeHuespedes.dsSelecOtrosHuespedesPorPisoYPorID_Huesped;
                        DBTextID_CamaDeHuesped_B.DataSource:= DataModuleRegistroDeHuespedes.dsSelecOtrosHuespedesPorPisoYPorID_Huesped;
                        DBTextNombre_B.DataSource:= DataModuleRegistroDeHuespedes.dsSelecOtrosHuespedesPorPisoYPorID_Huesped;
                        DBTextApellidos_B.DataSource:= DataModuleRegistroDeHuespedes.dsSelecOtrosHuespedesPorPisoYPorID_Huesped;
                        DBTextCarneIdentidad_B.DataSource:= DataModuleRegistroDeHuespedes.dsSelecOtrosHuespedesPorPisoYPorID_Huesped;
                        DBTextNumeroSerieCama_B.DataSource:= DataModuleRegistroDeHuespedes.dsSelecOtrosHuespedesPorPisoYPorID_Huesped;
                        DBTextNumeroHabitacion_B.DataSource:= DataModuleRegistroDeHuespedes.dsSelecOtrosHuespedesPorPisoYPorID_Huesped;

                        //Le cambio el DataSource al DBAdvGlowNavigator de los huespedes registrados
                        DBAdvGlowNavigatorHuespedesRegistrados.DataSource:= DataModuleRegistroDeHuespedes.dsSelecOtrosHuespedesPorPisoYPorID_Huesped;

                        //Actualizo el DBGrid y los DBText (forma principal) con todos los otros huespedes
                        HostalWare.MostrarOtrosHuespedesPorPisoYPorID_Huesped(Piso, FID_Huesped_A);

                        //Valido la habilitación de los botones de 'Permutar'
                        if (HostalWare.CantidadDeOtrosHuespedesPorPisoYPorID_Huesped > 0)
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

                        if (HostalWare.CantidadDeOtrosHuespedesPorPisoYPorID_Huesped = 1)
                          then
                            begin
                              //Actualizo la cantidad de huespedes (totales)
                              lblEtiquetaTotalHuespedes.Caption:= 'TOTAL = 1 huésped';
                            end
                              else
                                begin
                                  //Actualizo la cantidad de huespedes (totales)
                                  lblEtiquetaTotalHuespedes.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDeOtrosHuespedesPorPisoYPorID_Huesped) + ' huéspedes';
                                end;
                      end
                        else
                          begin //Un motivo en específico, por pisos en especifico
                            //Recojo el piso
                            Piso:= LeftStr(cmbxFiltrarRegistrosPorPiso.Text, 3);

                            //Recojo el motivo
                            Motivo:= cmbxFiltrarRegistrosPorMotivo.Text;

                            //Le cambio el DataSource al DBGrid de huespedes registrados
                            DBGridHuespedesRegistrados.DataSource:= DataModuleRegistroDeHuespedes.dsSelecOtrosHuespedesPorMotivoYPorPisoYPorID_Huesped;

                            //Le cambio el DataSource a los DBTExt del Huésped B
                            DBTextID_Huesped_B.DataSource:= DataModuleRegistroDeHuespedes.dsSelecOtrosHuespedesPorMotivoYPorPisoYPorID_Huesped;
                            DBTextID_CamaDeHuesped_B.DataSource:= DataModuleRegistroDeHuespedes.dsSelecOtrosHuespedesPorMotivoYPorPisoYPorID_Huesped;
                            DBTextNombre_B.DataSource:= DataModuleRegistroDeHuespedes.dsSelecOtrosHuespedesPorMotivoYPorPisoYPorID_Huesped;
                            DBTextApellidos_B.DataSource:= DataModuleRegistroDeHuespedes.dsSelecOtrosHuespedesPorMotivoYPorPisoYPorID_Huesped;
                            DBTextCarneIdentidad_B.DataSource:= DataModuleRegistroDeHuespedes.dsSelecOtrosHuespedesPorMotivoYPorPisoYPorID_Huesped;
                            DBTextNumeroSerieCama_B.DataSource:= DataModuleRegistroDeHuespedes.dsSelecOtrosHuespedesPorMotivoYPorPisoYPorID_Huesped;
                            DBTextNumeroHabitacion_B.DataSource:= DataModuleRegistroDeHuespedes.dsSelecOtrosHuespedesPorMotivoYPorPisoYPorID_Huesped;

                            //Le cambio el DataSource al DBAdvGlowNavigator de los huespedes registrados
                            DBAdvGlowNavigatorHuespedesRegistrados.DataSource:= DataModuleRegistroDeHuespedes.dsSelecOtrosHuespedesPorMotivoYPorPisoYPorID_Huesped;

                            //Actualizo el DBGrid y los DBText (forma principal) con todos los otros huespedes
                            HostalWare.MostrarOtrosHuespedesPorMotivoYPorPisoYPorID_Huesped(Motivo, Piso, FID_Huesped_A);

                            //Valido la habilitación de los botones de 'Permutar'
                            if (HostalWare.CantidadDeOtrosHuespedesPorMotivoYPorPisoYPorID_Huesped > 0)
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

                            if (HostalWare.CantidadDeOtrosHuespedesPorMotivoYPorPisoYPorID_Huesped = 1)
                              then
                                begin
                                  //Actualizo la cantidad de huespedes (totales)
                                  lblEtiquetaTotalHuespedes.Caption:= 'TOTAL = 1 huésped';
                                end
                                  else
                                    begin
                                      //Actualizo la cantidad de huespedes (totales)
                                      lblEtiquetaTotalHuespedes.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDeOtrosHuespedesPorMotivoYPorPisoYPorID_Huesped) + ' huéspedes';
                                    end;
                          end;
                end;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;


procedure TfrmPermutarRegistro.cmbxFiltrarRegistrosPorPisoChange(Sender: TObject);
begin
  //Actualizo los registros
  ActualizarRegistros;
end;



procedure TfrmPermutarRegistro.cmbxFiltrarRegistrosPorMotivoChange(Sender: TObject);
begin
  //Actualizo los registros
  ActualizarRegistros;
end;



end.
