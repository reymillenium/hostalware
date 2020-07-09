unit UfrmPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, StdCtrls, Buttons, Grids, DBGrids,
  ImgList, DBCtrls, ExtCtrls, Mask, ToolWin, CheckLst, AppEvnts, StrUtils,
  XPMan, ActnMan, ActnCtrls, XPStyleActnCtrls, ActnList, Math, MMSystem,
  ShellApi, DB, Winsock, OleCtrls, Sockets, RpRender,
  RpRenderPDF, RpBase, RpSystem, RpDefine, ExtDlgs, ERombBtn,
  ATImageBox, dsZoomNavigator, LbButton, CollapsePanel,

  cbClasses,
  CaptionButton,
  FormTrayIcon,
  FormRoller,
  FormTopmost,
  mxCaptionBarButtons,
  LbStaticText,
  LbSpeedButton,
  PJMenuSpeedButtons,
  RpRave,
  ExportPack,
  BcCustomDrawModule,
  BarMenus,
  XiPanel,
  CabSTComps,
  BcDrawModule,
  AdvPageControl,
  XiButton,
  CustomizeGrid,

  //Sirve para poder usar el portapapeles
  ClipBrd,

  //Trabajo con imagenes
  jpeg, PixTwixLib_TLB,


  {Units controladoras confeccionadas por mi.}
  UGestionCursistasHospedados,



  {DataModules confeccionados por mi.}
  UDataModuleConexionGeneral, UDataModuleControlDelSistema,
  UDataModuleAdminCapacidades,
  UDataModuleRegistroDeHuespedes,
  UDataModuleReservaciones,
  UDataModuleAlertasDelSistema,
  UDataModuleArchivoDeRegistros,


  //para poder hacer consultas en la BD desde la aplicacion
  ADODB,



  {Units interfaz confeccionadas por mi.}
  UfrmAcercaDe,
  UfrmValidacionPuestoDeTrabajo,
  UfrmNuevoPuestoDeTrabajo,
  UfrmModificarPuestoDeTrabajo,
  UfrmDetallesDeTrazaDelSistema,
  UfrmNuevaHabitacion,
  UfrmModificarHabitacion,
  UfrmNuevoRegistro,
  UfrmModificarRegistro,
  UfrmTrasladarRegistro,
  UfrmPermutarRegistro,
  UfrmNuevaReservacion,

  UfrmDetalleAlertaHabitacionVacia,
  UfrmDetalleAlertaHuespedesPasadosDeTiempo,
  UfrmDetalleAlertaFaltaDeCapacidades,
  UfrmDetalleAlertaHuespedesConIncidenciasRecientes,
  UfrmDetalleAlertaHuespedesConIncidenciasHistoricas,
  UfrmDetalleAlertaHuespedesConIncidenciasHistoricasYRecientes,
  UfrmDetalleDeRegistroEnArchivo,

  
  {Units entidad confeccionadas por mi.}
  UPantalla,

  UFicheroIdioma,
  UFicheroAlineacionVisores,
  UFicheroTipoVisores,
  UFicheroZoomImagen,
  UFicheroComentarios,
  
  UPuestoDeTrabajo,
  UCama,
  UHabitacion,
  UHuesped, 
  UReservacion,
  

  //Reportes usando QuickReport
  UfrmQRReporteCuentasDeUsuarios,
  UfrmPreviewReporteCuentasDeUsuarios,

  UfrmQRReporteTrazasDelSistema,
  UfrmPreviewReporteTrazasDelSistema,

  UfrmQRReporteRegistroDeHuespedes,
  UfrmPreviewReporteRegistroDeHuespedes,

  UfrmQRReporteHabitacionesExistentes,
  UfrmPreviewReporteHabitacionesExistentes,
  
  UfrmQRReporteCamasExistentes,
  UfrmPreviewReporteCamasExistentes,

  UfrmQRReporteAlertasDelSistema,
  UfrmPreviewReporteAlertasDelSistema,


  //* De archivos específicamente *
  //Por datos
  UfrmQRReporteArchivosPorCarneIdentidadPorNombreYPorApellido,
  UfrmPreviewReporteArchivosPorCarneIdentidadNombreYApellidos,

  UfrmQRReporteArchivosPorCarneIdentidadYPorNombre,
  UfrmPreviewReporteArchivosPorCarneIdentidadYPorNombre,

  UfrmQRReporteArchivosPorCarneIdentidadYPorApellidos,
  UfrmPreviewReporteArchivosPorCarneIdentidadYPorApellidos,

  UfrmQRReporteArchivosPorNombreYPorApellidos,
  UfrmPreviewReporteArchivosPorNombreYPorApellidos,

  UfrmQRReporteArchivosPorCarneIdentidad,
  UfrmPreviewReporteArchivosPorCarneIdentidad,

  UfrmQRReporteArchivosPorNombre,
  UfrmPreviewReporteArchivosPorNombre,
    
  UfrmQRReporteArchivosPorApellidos,
  UfrmPreviewReporteArchivosPorApellidos,

  
  //por fechas
  UfrmQRReporteArchivosPorIntervalosDeFechasInicioHospedaje,
  UfrmPreviewReporteArchivosPorIntervalosDeFechasInicioHospedaje,

  UfrmQRReporteArchivosPorIntervalosDeFechasFinalHospedaje,
  UfrmPreviewReporteArchivosPorIntervalosDeFechasFinalHospedaje,
  
  UfrmQRReporteArchivosEnIntervalosDeFechas,
  UfrmPreviewReporteArchivosEnIntervalosDeFechas,


  
  
  FileCtrl,



  //Para dialogos en español (buena opcion, pero no agradable visualmente)
  Msgdlg,


  
  //Dialogs especiales, esquemas, etc (Message Master)
  MessDlgs, BiDiDBNavigator, DBAdvNavigator, AdvGlassButton, AdvCombo,
  ColCombo, AdvOfficePager, AdvOfficePagerStylers, AdvProgressBar,
  DBAdvGlowNavigator, AdvGroupBox, AdvOfficeButtons, AdvSpin, AdvEdit,
  AdvNavBar, AdvFontCombo, AdvSelectors, AdvOfficeComboBox,
  AdvOfficeSelectors, Lucombo, dblucomb, asgcombo, ColorCombo, AdvToolBar,
  AdvToolBarStylers, AdvMenus, AdvMenuStylers, BaseGrid, AdvGrid, DBAdvGrid,
  AdvGlowButton, AdvSmoothButton, AdvSmoothEdit, AdvSmoothEditButton,
  AdvSmoothDatePicker;



  {Formas confeccionadas por mi.}


  //AdvPageControl  AdvTabSet

type
  TfrmPrincipal = class(TForm)
    ApplicationEvents1: TApplicationEvents;
    ImageListArchivoHostalWare: TImageList;
    ColorDialogSimulacionImagenes: TColorDialog;
    RvSystemHabitacionesExistentes: TRvSystem;
    RvRenderPDFHostalWare: TRvRenderPDF;
    SaveDialogHostalWare: TSaveDialog;
    OpenPictureDialogSimulacion: TOpenPictureDialog;
    SavePictureDialogSimulacionImagenes: TSavePictureDialog;
    OpenDialogHostalWare: TOpenDialog;
    ImageListEdicionHostalWare: TImageList;
    ImageListHerramientasHostalWare: TImageList;
    ImageListAyudaHostalWare: TImageList;
    ImageListVerHostalWare: TImageList;
    FontDialogSimulacionImagenes: TFontDialog;
    STCabReaderSimulacionImagenes: TSTCabReader;
    STCabWriterSimulacionImagenes: TSTCabWriter;
    EXQR: TExportQR;
    RvProjectSimulacionImagenes: TRvProject;
    AdvPageControlPrincipal: TAdvPageControl;
    AdvTabSheetControlDelSistema: TAdvTabSheet;
    AdvTabSheetHospedaje: TAdvTabSheet;
    ImageListGeneral: TImageList;
    AdvOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    AdvOfficePagerHospedaje: TAdvOfficePager;
    AdvOfficePageRegistroHuespedes: TAdvOfficePage;
    lblFiltrarRegistrosPorPiso: TLabel;
    lblEtiquetaTotalHuespedes: TLabel;
    cmbxFiltrarRegistrosPorPiso2: TComboBox;
    AdvOfficePageAdminCapacidadesHospedaje: TAdvOfficePage;
    lblFiltrarRegistrosPorMotivo: TLabel;
    cmbxFiltrarRegistrosPorMotivo2: TComboBox;
    DBAdvGlowNavigatorHuespedesRegistrados: TDBAdvGlowNavigator;
    AdvGroupBox2: TAdvGroupBox;
    lblbtnExportarHaciaPDFReporteHuespedesRegistrados: TLbButton;
    lblbtnPrevisualizarReporteHuespedesRegistrados: TLbButton;
    AdvGroupBox4: TAdvGroupBox;
    lblbtnExportarHaciaPDFReporteHabitacionesExistentes: TLbButton;
    lblbtnPrevisualizarReporteHabitacionesExistentes: TLbButton;
    Label3: TLabel;
    Label4: TLabel;
    DBAdvGlowNavigatorHabitacionesExistentes: TDBAdvGlowNavigator;
    AdvGroupBoxHuespedesRegistrados: TAdvGroupBox;
    AdvGroupBoxHabitacionesExistentes: TAdvGroupBox;
    lblCantidadHabitaciones: TLabel;
    DBTextID_Habitacion: TDBText;
    AdvGroupBox1: TAdvGroupBox;
    lblCantidadCamas: TLabel;
    DBAdvGlowNavigatorCamasExistentes: TDBAdvGlowNavigator;
    grbxReportesDeCamas: TAdvGroupBox;
    lblbtnExportarHaciaPDFReporteCamasExistentes: TLbButton;
    lblbtnPrevisualizarReporteCamasExistentes: TLbButton;
    DBTextID_Huesped: TDBText;
    DBTextID_CamaDeHuesped: TDBText;
    AdvOfficePagerControlDelSistema: TAdvOfficePager;
    AdvOfficePageCuentasDeUsuario: TAdvOfficePage;
    AdvOfficePageTrazasDelSistema: TAdvOfficePage;
    AdvGroupBoxReporteCuentasDeUsuario: TAdvGroupBox;
    lblbtnExportarHaciaPDFReporteCuentasDeUsuario: TLbButton;
    lblbtnPrevisualizarReporteCuentasDeUsuario: TLbButton;
    AdvGroupBoxPuestosDeTrabajo: TAdvGroupBox;
    lblCantidadPuestosDeTrabajo: TLabel;
    DBTextSegundoApellido: TDBText;
    DBTextPrivilegios: TDBText;
    DBTextPrimerApellido: TDBText;
    DBTextNombre: TDBText;
    DBAdvGlowNavigatorCuentasDeUsuario: TDBAdvGlowNavigator;
    AdvGroupBoxReporteTrazasDelSistema: TAdvGroupBox;
    lblbtnExportarHaciaPDFReporteTrazasDelSistema: TLbButton;
    lblbtnPrevisualizarReporteTrazasDelSistema: TLbButton;
    AdvGroupBoxTrazasDelSistema: TAdvGroupBox;
    DBAdvGlowNavigatorTrazasDelSistema: TDBAdvGlowNavigator;
    DBTextApellidos: TDBText;
    cmbxFiltrarRegistrosPorMotivo: TAdvOfficeSelector;
    cmbxFiltrarRegistrosPorPiso: TAdvOfficeSelector;
    ComboBoxFiltroParaHabitaciones: TAdvOfficeSelector;
    ComboBoxFiltroPorCapacidad: TAdvOfficeSelector;
    ToolBar1: TToolBar;
    AdvToolBarHostalWare: TAdvToolBar;
    AdvToolBarFantasyStylerHostalWare: TAdvToolBarFantasyStyler;
    barbtnAcercaDe: TAdvToolBarButton;
    barbtnTemasDeAyuda: TAdvToolBarButton;
    MainMenuHostalWare: TAdvMainMenu;
    MenuFantasyStylerHostalWare: TAdvMenuFantasyStyler;
    MenuArchivo: TMenuItem;
    AdvToolBarSeparator1: TAdvToolBarSeparator;
    SubMenuSalir: TMenuItem;
    DBGridTrazasDelSistema: TDBAdvGrid;
    DBGridPuestosDeTrabajo: TDBAdvGrid;
    DBGridHuespedesRegistrados: TDBAdvGrid;
    DBGridHabitacionesExistentes: TDBAdvGrid;
    DBGridCamasExistentes: TDBAdvGrid;
    N1: TMenuItem;
    SubMenuDesconectar: TMenuItem;
    SubMenuImprimirReporteCuentasDeUsuario: TMenuItem;
    N2: TMenuItem;
    SubMenuExportarReporteCuentasDeUsuario: TMenuItem;
    MenuEdicion: TMenuItem;
    MenuVer: TMenuItem;
    MenuHerramientas: TMenuItem;
    MenuAyuda: TMenuItem;
    SubMenuTemasDeAyuda: TMenuItem;
    N3: TMenuItem;
    SubMenuAcercaDeHostalWare: TMenuItem;
    SubMenuSalvarBaseDeDatos: TMenuItem;
    SubMenuAgregarCuentaDeUsuario: TMenuItem;
    SubMenuModificarCuentaDeUsuario: TMenuItem;
    SubMenuEliminarCuentaDeUsuario: TMenuItem;
    SubMenuAgregarRegistroDeHuesped: TMenuItem;
    SubMenuModificarRegistroDeHuesped: TMenuItem;
    SubMenuEliminarRegistroDeHuesped: TMenuItem;
    SubMenuAgregarHabitacion: TMenuItem;
    SubMenuModificarHabitacion: TMenuItem;
    SubMenuEliminarHabitacion: TMenuItem;
    SubMenuAgregarReservacion: TMenuItem;
    SubMenuModificarReservacion: TMenuItem;
    SubMenuEliminarReservacion: TMenuItem;
    SubMenuTrasladarRegistroDeHuesped: TMenuItem;
    SubMenuPermutarRegistroDeHuesped: TMenuItem;
    SubMenuVerReporteCuentasDeUsuario: TMenuItem;
    SubMenuVerDetallesDeTraza: TMenuItem;
    SubMenuVerReporteRegistroDeHuesped: TMenuItem;
    SubMenuVerReporteHabitaciones: TMenuItem;
    SubMenuVerReporteCamas: TMenuItem;
    SubMenuVerReporteReservaciones: TMenuItem;
    SubMenuExportarReporteTrazasDelSistema: TMenuItem;
    SubMenuExportarReporteRegistroDeHuespedes: TMenuItem;
    SubMenuExportarReporteHabitaciones: TMenuItem;
    SubMenuExportarReporteCamasExistentes: TMenuItem;
    SubMenuExportarReporteReservaciones: TMenuItem;
    SubMenuImprimirReporteTrazasDelSistema: TMenuItem;
    SubMenuImprimirReporteRegistroDeHuespedes: TMenuItem;
    SubMenuImprimirReporteHabitaciones: TMenuItem;
    SubMenuImprimirReporteCamasExistentes: TMenuItem;
    SubMenuImprimirReporteReservaciones: TMenuItem;
    SubMenuReporteTrazasDelSistema: TMenuItem;
    barbtnDesconectar: TAdvToolBarButton;
    AdvToolBarSeparator2: TAdvToolBarSeparator;
    barbtnSalvarBaseDeDatos: TAdvToolBarButton;
    AdvOfficePageAdminAlertas: TAdvOfficePage;
    SubMenuImprimirReporteCapacidades: TMenuItem;
    SubMenuExportarReporteCapacidades: TMenuItem;
    SubMenuVerReporteCapacidades: TMenuItem;
    SubMenuRestaurarBaseDeDatos: TMenuItem;
    barbtnRestaurarBaseDeDatos: TAdvToolBarButton;
    AdvOfficePageReservaciones: TAdvOfficePage;
    AdvGroupBox3: TAdvGroupBox;
    lblbtnExportarHaciaPDFReporteReservacionesEfectuadas: TLbButton;
    lblbtnPrevisualizarReporteReservacionesEfectuadas: TLbButton;
    Label1: TLabel;
    AdvOfficeSelector1: TAdvOfficeSelector;
    Label2: TLabel;
    AdvOfficeSelector2: TAdvOfficeSelector;
    AdvGroupBoxReservacionesEfectuadas: TAdvGroupBox;
    DBGridReservacionesEfectuadas: TDBAdvGrid;
    lblCantidadReservaciones: TLabel;
    DBAdvGlowNavigatorReservacionesEfectuadas: TDBAdvGlowNavigator;
    lblbtnModificarReservacion: TAdvGlassButton;
    lblbtnNuevaReservacion: TAdvGlassButton;
    lblbtnEliminarReservacion: TAdvGlassButton;
    lblbtnNuevaCapacidad: TAdvGlassButton;
    lblbtnModificarCapacidad: TAdvGlassButton;
    lblbtnEliminarCapacidad: TAdvGlassButton;
    lblbtnNuevoRegistro: TAdvGlassButton;
    lblbtnModificarRegistro: TAdvGlassButton;
    lblbtnEliminarRegistro: TAdvGlassButton;
    lblbtnNuevaCuentaDeUsuario: TAdvGlassButton;
    lblbtnModificarCuentaDeUsuario: TAdvGlassButton;
    lblbtnEliminarCuentaDeUsuario: TAdvGlassButton;
    lblbtnDetallesDeTraza: TAdvGlassButton;
    lblbtnHacerTraslado: TAdvGlassButton;
    lblbtnRealizarPermuta: TAdvGlassButton;
    lblbtnTramitarReservacion: TAdvGlassButton;
    SubMenuTramitarReservacion: TMenuItem;
    AdvGroupBoxAlertasDelSistema: TAdvGroupBox;
    DBGridAlertasDelSistema: TDBAdvGrid;
    AdvGroupBox5: TAdvGroupBox;
    lblbtnExportarHaciaPDFReporteAlertasDelSistema: TLbButton;
    lblbtnPrevisualizarReporteAlertasDelSistema: TLbButton;
    lblCantidadAlertasDelSistema: TLabel;
    DBAdvGlowNavigatorAlertasDelSistema: TDBAdvGlowNavigator;
    SubMenuImprimirReporteAlertasDelSistema: TMenuItem;
    SubMenuVerReporteAlertasDelSistema: TMenuItem;
    SubMenuExportarReporteAlertasDelSistema: TMenuItem;
    lblbtnDetallesDeAlertaDelSistema: TAdvGlassButton;
    SubMenuVerDetallesDeAlertaDelSistema: TMenuItem;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    AdvOfficePageRegistrosHistoricos: TAdvOfficePage;
    lblbtnBuscarArchivosDeRegistro: TAdvGlassButton;
    AdvGroupBox6: TAdvGroupBox;
    blbtnExportarHaciaPDFReporteArchivosHistoricos: TLbButton;
    lblbtnPrevisualizarReporteArchivosHistoricos: TLbButton;
    GroupBoxArchivosHistoricos: TAdvGroupBox;
    DBGridArchivosHistoricos: TDBAdvGrid;
    lblbtnDetallarArchivoDeRegistro: TAdvGlassButton;
    SubMenuExportarReporteArchivosDeRegistros: TMenuItem;
    SubMenuImprimirReporteArchivosDeRegistros: TMenuItem;
    SubMenuVerDetallesDeRegistroEnElArchivo: TMenuItem;
    SubMenuBuscarEnLosArchivos: TMenuItem;
    SubMenuVerReporteArchivosDeRegistros: TMenuItem;
    PageControlFiltroArchivos: TAdvPageControl;
    TabSheetFiltroArchivosPorDatos: TAdvTabSheet;
    TabSheetFiltroArchivosPorFechas: TAdvTabSheet;
    Label5: TLabel;
    edtFiltroCarneIdentidadHuespedParaHistorico: TEdit;
    Label6: TLabel;
    edtFiltroNombreHuespedParaHistorico: TEdit;
    Label7: TLabel;
    edtFiltroApellidosHuespedParaHistorico: TEdit;
    rbtnFiltroArchivosFechaEspecifica: TAdvOfficeRadioButton;
    rbtnFiltroArchivosRangoDeFechas: TAdvOfficeRadioButton;
    rbtnFiltroArchivosInicioDeHospedaje: TAdvOfficeRadioButton;
    rbtnFiltroArchivosFinDeHospedaje: TAdvOfficeRadioButton;
    lblFechaInicioHospedaje: TLabel;
    dtpFechaInicioHospedaje: TAdvSmoothDatePicker;
    lblFechaFinalHospedaje: TLabel;
    dtpFechaFinalHospedaje: TAdvSmoothDatePicker;
    DBAdvGlowNavigatorArchivosHistoricos: TDBAdvGlowNavigator;
    lblCantidadArchivosHistoricos: TLabel;
    DBtxtID_HuespedHistorico: TDBText;



    //Eventos de la forma principal (como tal)
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure PersonalizarCaptionsMenuSistemaDeLaForma(AFormHandle:HWnd);
    procedure FormActivate(Sender: TObject);
    
    //Eventos del Menu Principal  (MainMenu)
    procedure SubMenuSalirClick(Sender: TObject);
    procedure SubMenuTemasDeAyudaClick(Sender: TObject);
    

    procedure ApplicationEventsSimulacionImagenesIdle(Sender: TObject; var Done: Boolean);
    procedure lblbtnNuevaCuentaDeUsuarioClick(Sender: TObject);
    procedure lblbtnModificarCuentaDeUsuarioClick(Sender: TObject);
    procedure lblbtnEliminarCuentaDeUsuarioClick(Sender: TObject);
    procedure lblbtnDetallesDeTrazaClick(Sender: TObject);
    procedure CustomizeGridPuestosDeTrabajoPaintCell(FieldName: String;
      Field: TField; var CellColor: TColor; var ChangeColor: Boolean);
    procedure SpeedButtonDesconectarseClick(Sender: TObject);
    procedure lblbtnNuevaCapacidadClick(Sender: TObject);
    procedure ComboBoxFiltroParaHabitacionesChange(Sender: TObject);
    procedure lblbtnModificarCapacidadClick(Sender: TObject);
    procedure DBGridHabitacionesExistentesDblClick(Sender: TObject);
    procedure lblbtnEliminarCapacidadClick(Sender: TObject);
    procedure lblbtnExportarHaciaPDFReporteHabitacionesExistentesClick(Sender: TObject);
    procedure lblbtnPrevisualizarReporteHabitacionesExistentesClick(Sender: TObject);
    procedure DBGridTrazasDelSistemaDblClick(Sender: TObject);
    procedure DBGridPuestosDeTrabajoDblClick(Sender: TObject);
    procedure DBGridHabitacionesExistentesCellClick(Column: TColumn);
    procedure DBGridHabitacionesExistentesMouseDown(Sender: TObject;
      Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure DBAdvGlowNavigatorHabitacionesExistentesClick(
      Sender: TObject; Button: TAdvNavigateBtn);

    //******************************
    //*** Procedimientos Comunes ***
    //******************************
    
    procedure SalvarBaseDeDatosHostalWare;
    procedure RestaurarBaseDeDatosHostalWare;
    procedure DesconectarElSistema;
    procedure CerrarLaAplicacion;
    procedure MostrarAyudaGeneralDelSistema;

    //Configuracion del idioma
    procedure SetIdiomaEspannol;
    procedure SetIdiomaIngles;

    function MinDeTres(a, b, c: integer): integer;
    function MaxDeTres(a, b, c: integer): integer;
    function ObtenerFechaDelSistema: String;



    

    //*************************************
    //*** Modulo de Control del Sistema ***
    //*************************************

    //Pestaña de Cuentas de Usuarios
    Procedure AgregarCuentaDeUsuario;
    Procedure ModificarCuentaDeUsuario;
    Procedure EliminarCuentaDeUsuario;
    
    procedure ActualizarCuentasDeUsuario;

    procedure PrevisualizarReporteCuentasDeUsuario;
    procedure ExportarHaciaPDFReporteCuentasDeUsuario;
    procedure ImprimirReporteCuentasDeUsuario;


    //Pestaña de Trazas del Sistema
    procedure DetallarTrazaDelSistema;

    procedure PrevisualizarReporteTrazasDelSistema;
    procedure ExportarHaciaPDFReporteTrazasDelSistema;
    procedure ImprimirReporteTrazasDelSistema;


    
    //***************************
    //*** Modulo de Hospedaje ***
    //***************************

    //Pestaña de Registro de Huéspedes
    Procedure AgregarRegistroDeHuesped;
    Procedure ModificarRegistroDeHuesped;
    Procedure EliminarRegistroDeHuesped;

    procedure ActualizarRegistros;

    procedure Trasladar;
    procedure Permutar;

    procedure PrevisualizarReporteRegistrosDeHuespedes;
    procedure ExportarHaciaPDFReporteRegistrosDeHuespedes;
    procedure ImprimirReporteRegistrosDeHuespedes;


    //Pestaña de Admin. de Capacidades
    Procedure AgregarHabitacion;
    Procedure ModificarHabitacion;
    Procedure EliminarHabitacion;
    
    procedure ActualizarCapacidades;
    procedure ActualizarSoloCamas;
    
    procedure PrevisualizarReporteHabitaciones;
    procedure ExportarHaciaPDFReporteHabitaciones;
    procedure ImprimirReporteHabitaciones;
    
    procedure PrevisualizarReporteCamasExistentes;
    procedure ExportarHaciaPDFReporteCamasExistentes;
    procedure ImprimirReporteCamasExistentes;



    
    //Pestaña de Reservaciones
    Procedure AgregarReservacion;
    Procedure ModificarReservacion;
    Procedure EliminarReservacion;
    
    procedure ActualizarReservaciones;

    procedure TramitarReservacion;

    procedure PrevisualizarReporteReservaciones;
    procedure ExportarHaciaPDFReporteReservaciones;
    procedure ImprimirReporteReservaciones;




    //Pestaña de Alertas
    procedure PrevisualizarReporteAlertas;
    procedure ExportarHaciaPDFReporteAlertas;
    procedure ImprimirReporteAlertas;

    procedure ActualizarAlertasDelSistema;
    procedure DetallarAlertaDelSistema;




    //Pestaña de Archivos
    procedure ActualizarFiltroArchivosPorFechas;
    procedure BuscarEnArchivos;
    procedure DetallarRegistroEnElArchivo;
    procedure LimpiarFiltroArchivosPorDatos;

    procedure PrevisualizarReporteDeArchivos;
    procedure ExportarHaciaPDFReporteDeArchivos;
    procedure ImprimirReporteDeArchivos;



    
    procedure ComboBoxFiltroPorCapacidadChange(Sender: TObject);
    procedure lblbtnNuevoRegistroClick(Sender: TObject);
    procedure lblbtnEliminarRegistroClick(Sender: TObject);
    procedure lblbtnModificarRegistroClick(Sender: TObject);
    procedure cmbxFiltrarRegistrosPorPisoChange(Sender: TObject);
    procedure cmbxFiltrarRegistrosPorMotivoChange(Sender: TObject);
    procedure cmbxFiltrarRegistrosPorPisoDblClick(Sender: TObject);
    procedure cmbxFiltrarRegistrosPorMotivoDblClick(Sender: TObject);
    procedure DBGridHuespedesRegistradosDblClick(Sender: TObject);
    procedure lblbtnExportarHaciaPDFReporteHuespedesRegistradosClick(
      Sender: TObject);
    procedure lblbtnPrevisualizarReporteHuespedesRegistradosClick(
      Sender: TObject);
    procedure lblbtnHacerTrasladoClick(Sender: TObject);
    procedure lblbtnRealizarPermutaClick(Sender: TObject);
    procedure lblbtnExportarHaciaPDFReporteTrazasDelSistemaClick(
      Sender: TObject);
    procedure lblbtnPrevisualizarReporteTrazasDelSistemaClick(
      Sender: TObject);
    procedure lblbtnExportarHaciaPDFReporteCuentasDeUsuarioClick(
      Sender: TObject);
    procedure lblbtnPrevisualizarReporteCuentasDeUsuarioClick(
      Sender: TObject);
    procedure RvSystemHabitacionesExistentesBeforePrint(Sender: TObject);
    procedure RvSystemHabitacionesExistentesPrint(Sender: TObject);
    procedure barbtnAcercaDeClick(Sender: TObject);
    procedure SubMenuAcercaDeHostalWareClick(Sender: TObject);
    procedure barbtnTemasDeAyudaClick(Sender: TObject);
    procedure barbtnSalvarBaseDeDatosClick(Sender: TObject);
    procedure SubMenuSalvarBaseDeDatosClick(Sender: TObject);
    procedure barbtnDesconectarClick(Sender: TObject);
    procedure SubMenuDesconectarClick(Sender: TObject);
    procedure SubMenuVerReporteCuentasDeUsuarioClick(Sender: TObject);
    procedure SubMenuReporteTrazasDelSistemaClick(Sender: TObject);
    procedure SubMenuVerDetallesDeTrazaClick(Sender: TObject);
    procedure SubMenuVerReporteRegistroDeHuespedClick(Sender: TObject);
    procedure SubMenuVerReporteHabitacionesClick(Sender: TObject);
    procedure SubMenuVerReporteCamasClick(Sender: TObject);
    procedure SubMenuVerReporteReservacionesClick(Sender: TObject);
    procedure SubMenuAgregarCuentaDeUsuarioClick(Sender: TObject);
    procedure SubMenuModificarCuentaDeUsuarioClick(Sender: TObject);
    procedure SubMenuEliminarCuentaDeUsuarioClick(Sender: TObject);
    procedure SubMenuAgregarRegistroDeHuespedClick(Sender: TObject);
    procedure SubMenuModificarRegistroDeHuespedClick(Sender: TObject);
    procedure SubMenuEliminarRegistroDeHuespedClick(Sender: TObject);
    procedure SubMenuTrasladarRegistroDeHuespedClick(Sender: TObject);
    procedure SubMenuPermutarRegistroDeHuespedClick(Sender: TObject);
    procedure SubMenuAgregarHabitacionClick(Sender: TObject);
    procedure SubMenuModificarHabitacionClick(Sender: TObject);
    procedure SubMenuEliminarHabitacionClick(Sender: TObject);
    procedure SubMenuAgregarReservacionClick(Sender: TObject);
    procedure SubMenuModificarReservacionClick(Sender: TObject);
    procedure SubMenuEliminarReservacionClick(Sender: TObject);
    procedure SubMenuExportarReporteCuentasDeUsuarioClick(Sender: TObject);
    procedure SubMenuExportarReporteTrazasDelSistemaClick(Sender: TObject);
    procedure SubMenuExportarReporteRegistroDeHuespedesClick(
      Sender: TObject);
    procedure SubMenuExportarReporteHabitacionesClick(Sender: TObject);
    procedure SubMenuExportarReporteCamasExistentesClick(Sender: TObject);
    procedure SubMenuExportarReporteReservacionesClick(Sender: TObject);
    procedure SubMenuImprimirReporteCuentasDeUsuarioClick(Sender: TObject);
    procedure SubMenuImprimirReporteTrazasDelSistemaClick(Sender: TObject);
    procedure SubMenuImprimirReporteRegistroDeHuespedesClick(
      Sender: TObject);
    procedure SubMenuImprimirReporteHabitacionesClick(Sender: TObject);
    procedure SubMenuImprimirReporteCamasExistentesClick(Sender: TObject);
    procedure SubMenuImprimirReporteReservacionesClick(Sender: TObject);
    procedure SubMenuRestaurarBaseDeDatosClick(Sender: TObject);
    procedure barbtnRestaurarBaseDeDatosClick(Sender: TObject);
    procedure lblbtnPrevisualizarReporteCamasExistentesClick(
      Sender: TObject);
    procedure lblbtnExportarHaciaPDFReporteCamasExistentesClick(
      Sender: TObject);
    procedure lblbtnNuevaReservacionClick(Sender: TObject);
    procedure lblbtnModificarReservacionClick(Sender: TObject);
    procedure lblbtnEliminarReservacionClick(Sender: TObject);
    procedure lblbtnTramitarReservacionClick(Sender: TObject);
    procedure SubMenuTramitarReservacionClick(Sender: TObject);
    procedure lblbtnExportarHaciaPDFReporteAlertasDelSistemaClick(
      Sender: TObject);
    procedure lblbtnPrevisualizarReporteAlertasDelSistemaClick(
      Sender: TObject);
    procedure SubMenuVerReporteAlertasDelSistemaClick(Sender: TObject);
    procedure SubMenuExportarReporteAlertasDelSistemaClick(
      Sender: TObject);
    procedure SubMenuImprimirReporteAlertasDelSistemaClick(
      Sender: TObject);
    procedure lblbtnExportarHaciaPDFReporteReservacionesEfectuadasClick(
      Sender: TObject);
    procedure lblbtnPrevisualizarReporteReservacionesEfectuadasClick(
      Sender: TObject);
    procedure DBGridReservacionesEfectuadasDblClick(Sender: TObject);
    procedure lblbtnDetallesDeAlertaDelSistemaClick(Sender: TObject);
    procedure SubMenuVerDetallesDeAlertaDelSistemaClick(Sender: TObject);
    procedure DBGridAlertasDelSistemaDblClick(Sender: TObject);
    procedure lblbtnBuscarArchivosDeRegistroClick(Sender: TObject);
    procedure lblbtnDetallarArchivoDeRegistroClick(Sender: TObject);
    procedure blbtnExportarHaciaPDFReporteArchivosHistoricosClick(Sender: TObject);
    procedure lblbtnPrevisualizarReporteArchivosHistoricosClick(Sender: TObject);
    procedure SubMenuExportarReporteArchivosDeRegistrosClick(Sender: TObject);
    procedure SubMenuImprimirReporteArchivosDeRegistrosClick(Sender: TObject);
    procedure SubMenuVerDetallesDeRegistroEnElArchivoClick(Sender: TObject);
    procedure SubMenuVerReporteArchivosDeRegistrosClick(Sender: TObject);
    procedure rbtnFiltroArchivosFechaEspecificaClick(Sender: TObject);
    procedure rbtnFiltroArchivosRangoDeFechasClick(Sender: TObject);
    procedure rbtnFiltroArchivosInicioDeHospedajeClick(Sender: TObject);
    procedure rbtnFiltroArchivosFinDeHospedajeClick(Sender: TObject);
    procedure SubMenuBuscarEnLosArchivosClick(Sender: TObject); //Para usuarios    


    //Validaciones de pulsado de teclas
    procedure SoloLetrasConEspaciosYPuntuacionKeyPress(Sender: TObject; var Key: Char); //Para nombres, apellidos, etc.
    procedure SoloLetrasYNumerosSinPuntuacionNiEspaciosKeyPress(Sender: TObject; var Key: Char);
    procedure DBGridArchivosHistoricosDblClick(Sender: TObject);
    procedure dtpFechaInicioHospedajeClick(Sender: TObject);
    procedure dtpFechaFinalHospedajeClick(Sender: TObject);
    procedure dtpFechaFinalHospedajeChange(Sender: TObject);
    procedure dtpFechaInicioHospedajeChange(Sender: TObject); //IDs cubanos (números) y extranjeros (letras y números)
    
  private
    { Private declarations }
    FUpdatingSelfOptionsSimulacionImagenes: Boolean;

    //Cosas para el Menu Especial
    FDrawBuffer: TBitmap;

    //Variables para el uso de imagenes vectoriales
    _OriginalBitmap: TBitmap;
    _nmesas: Integer;

    //Variables para borrado de ficheros sim
    ProcedenciaDelFicheroSimulacionImagenes: AnsiString;
    
    function GetDrawBuffer: TBitmap;

    procedure appmessage(var msg: tmsg; var handled: boolean);
    procedure DeterminarResolucionInicial;
    function CambiarResolucion(XRes, YRes: DWord): integer;

    //Posicion del Mouse
    function HallarColumnaPosicionX: Integer;
    function HallarFilaPosicionY: Integer;

    function QuitaEn(Cadena, Esto: String): String;
    function CumpleConFormatoAdecuado(aCadena: String): Boolean;
    function ExtraerParteUtilDeNombreFichero(aCadena: String): String;


    function QuitarEspaciosVaciosAlInicio(aNombre: AnsiString): AnsiString;

  public
    procedure DrawGradient(Canvas: TCanvas; ARect: TRect; StartingColor, EndingColor: TColor; Style: TGradientStyle);

    property DrawBuffer: TBitmap read GetDrawBuffer;
    { Public declarations }

  end;



var
  frmPrincipal: TfrmPrincipal;


const
    MaxPixelCount   =  32768;

type
    pRGBArray  =  ^TRGBArray;
    TRGBArray  =  ARRAY[0..MaxPixelCount-1] OF TRGBTriple;

  function Min(a, b: integer): integer;
  function Max(a, b: integer): integer;




      implementation
  
 uses UfrmPresentacion,
 BcRectUtilities, DateUtils;

var
    //Variables para la configuracion del modo de pantalla (optimo = 1024 X 768)
    AnchoOriginalPantalla: Integer;
    AltoOriginalPantalla: Integer;
    Pantalla: TPantalla;

    HostalWare: TGestionCursistasHospedados;
    //TrabajadorLoggeado: TTrabajadorLoggeado;
    ModuloActivo: string;
    PestannaActiva: string;
    Ocioso: Boolean;
    VecesEntrando: Integer;

    
    //*** Variables de trabajo con archivos ***
    //Variables para nombres de archivos abiertos
    ArchivoEnteroAbiertoSimulacionImagenes: AnsiString;
    CaminoDelArchivoAbiertoSimulacionImagenes: AnsiString;

    NombreEnteroDelArchivoAbiertoSimulacionImagenes: AnsiString;
    NombreDelArchivoAbiertoSimulacionImagenes: AnsiString;
    NombreUtilDelArchivoAbiertoSimulacionImagenes: AnsiString;
    
    ExtensionDelArchivoAbiertoSimulacionImagenes: AnsiString;


    //Variables del sistema de configuracion de idioma
    IdiomaImperante: AnsiString;
    FicheroIdioma: TFicheroIdioma;

    //Variables para la busqueda en los archivos
    TipoBusqueda: AnsiString;

    CarneIdentidad,
    Nombre,
    Apellidos: AnsiString;

{$R *.dfm}



Procedure TfrmPrincipal.appmessage(var msg:tmsg; var handled:boolean);
begin
  if (   (msg.message = wm_syscommand) and (msg.wParam = sc_screensave)   )
    then handled:= True;
end;



procedure TfrmPrincipal.SubMenuSalirClick(Sender: TObject);
begin
  //Cierro la aplicación
  CerrarLaAplicacion;
end;


{---------------------------------------------------------}


procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
  //Deshabilito los componentes

  //Creo el fichero de idioma
  FicheroIdioma:= TFicheroIdioma.New;

  //Cargo el fichero de idioma
  FicheroIdioma.Cargar(ExtractFilePath(Application.ExeName) + 'Languaje\lang.txt');

  //Determino el idoma a mostrar en a interfaz
  if (FicheroIdioma.DeterminarIdiomaImperante = 'Ingles')
    then
      begin
        //Actualizo la variable indicadora de idioma imperante
        IdiomaImperante:= 'Ingles';

        //Instauro el idioma ingles
        SetIdiomaIngles;
      end
        else
          begin
            if (FicheroIdioma.DeterminarIdiomaImperante = 'Espannol')
              then
                begin
                  //Actualizo la variable indicadora de idioma imperante
                  IdiomaImperante:= 'Espannol';

                  //Instauro el idioma espannol
                  SetIdiomaEspannol;
                end;
          end;

  if (VecesEntrando = 1)
    then
      begin
        //Muestro el Splash Screen
        frmPresentacion.ShowModal;

        //Muestro la forma de validacion
        frmValidacionPuestoDeTrabajo.Position:= poDesktopCenter;
        frmValidacionPuestoDeTrabajo.ShowModal;
      end;

  //Verificacion de acceso
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Verifico de nuevo la conexión, por si se canceló el Loggeo
        if (HostalWare.ExisteConexionConLaBD = True)
          then
            begin
              //Decido qué componentes mostrar en dependencia de los privilegios del Loggeado
              if ( HostalWare.ElTrabajadorEsAdministrador = False)
                then
                  begin //Se trata de un Operador
                    //Oculto la pestaña de Control del Sistema
                    AdvTabSheetControlDelSistema.TabVisible:= False;
                  end
                    else
                      begin //Se trata de un Administrador
                        //Muestro la pestaña de Control del Sistema
                        AdvTabSheetControlDelSistema.TabVisible:= True;
                      end;


              //Inserto la Traza
              HostalWare.GuardarTrazaDelSistema('Entró al sistema HostalWare v1.0.');


              
              HostalWare.MostrarPuestosDeTrabajo;

              //Muestro los datos en el DBGrid del Módulo de Puestos de Trabajo
              ActualizarCuentasDeUsuario;
                            
              //Actualizo todas las trazas
              HostalWare.MostrarTodasLasTrazas;

              //Mando a actualizar los Registros de Huespedes
              ActualizarRegistros;

              //Mando a mostrar y actualizar las Capacidades
              ActualizarCapacidades;

              //Mando a mostrar y actualizar las Reservaciones

              //Mando a mostrar y actualizar las alertas
              ActualizarAlertasDelSistema;

              //Marco el RadioButton de fecha específica, para que funcione bien (los mostraba desmarcados a todos, al inicio)
              rbtnFiltroArchivosFechaEspecifica.Checked:= True;

              //Actualizo el estado de los filtros de fecha
              ActualizarFiltroArchivosPorFechas;

              //Limpio los Edits del filtro por datos en los archivos
              LimpiarFiltroArchivosPorDatos;

              //Pongo la busqueda en archivos en nula
              TipoBusqueda:= 'ninguna';

              //Pongo en nulo el label informativo de registros hallados en los archivos
              lblCantidadArchivosHistoricos.Caption:= '';

              //Deshabilito el boton y el Sub Menu de detallar registro en archivos
              lblbtnDetallarArchivoDeRegistro.Enabled:= False;
              SubMenuVerDetallesDeRegistroEnElArchivo.Enabled:= False;
            end;
      end;
end;



procedure TfrmPrincipal.FormDestroy(Sender: TObject);
begin
  {Shut down WinSock}
  WSACleanup;

  //Restituyo la resolución de la pantalla
  CambiarResolucion(AnchoOriginalPantalla, AltoOriginalPantalla);  
end;



procedure TfrmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if (HostalWare.ExisteConexionConLaBD)
    then
      begin
        //Inserto la Traza
        HostalWare.GuardarTrazaDelSistema('Salió del sistema HostalWare v1.0');

        //Actualizo todas las trazas
        HostalWare.MostrarTodasLasTrazas;

        //Desloggeo al usuario
        HostalWare.DesloggearAlUsuario;
      end;
      
  //Restituyo la resolución de la pantalla
  CambiarResolucion(AnchoOriginalPantalla, AltoOriginalPantalla);
end;



procedure TfrmPrincipal.DeterminarResolucionInicial;
begin
  //Determino la resolución inicial de la pantalla
  AnchoOriginalPantalla:= GetSysTemMetrics(SM_CXSCREEN);   {Ancho}
  AltoOriginalPantalla:= GetSysTemMetrics(SM_CYSCREEN);   {Alto}
end;



function TfrmPrincipal.CambiarResolucion(XRes, YRes: DWord):integer;
var
  lpDevMode : TDeviceMode;
begin
//Cambio la resolución de la pantalla a los valores
  EnumDisplaySettings(nil, 0, lpDevMode);
  lpDevMode.dmFields:=DM_PELSWIDTH or DM_PELSHEIGHT;
  lpDevMode.dmPelsWidth:=XRes;
  lpDevMode.dmPelsHeight:=YRes;
  CambiarResolucion:=ChangeDisplaySettings(lpDevMode, 0);
end;



//Posicion del Mouse en el eje de las X (Columna)
function TfrmPrincipal.HallarColumnaPosicionX: Integer;
var 
  Cur : TPoint;
  //x:integer;
begin 
  GetCursorPos(Cur);
  Result := Cur.x;
end;



//Posicion del Mouse en el eje de las Y
function TfrmPrincipal.HallarFilaPosicionY: Integer;
var 
  Cur : TPoint;
  //y:integer;
begin 
  GetCursorPos(Cur);
  Result := Cur.y;
end;



procedure TfrmPrincipal.FormCreate(Sender: TObject);
var
  wVersionRequested : WORD;
  wsaData : TWSAData;
  Img: TATImage;
begin
  //Para poder obtener el IP y nombre de la PC
  {Start up WinSock}
  wVersionRequested := MAKEWORD(1, 1);
  WSAStartup(wVersionRequested, wsaData);

  //Llamo al procedimiento que impide que se levante el salvapantallas, cuando trate de mostrarse.
  Application.OnMessage:=appmessage;
  VecesEntrando:= 1;
    
  //Pruebas
  //ATImageBoxSimulacionImagenes.Image.OnMouseDown:= ATImageBoxImageSimulacionImagenesMouseDown;
  //ATImageBoxSimulacionImagenes.Image.OnMouseMove:= ATImageBoxImageSimulacionImagenesMouseMove;

  //PersonalizarCaptionsMenuSistemaDeLaForma(Handle);

  //Llamo al procedimiento que impide que se levante el salvapantallas, cuando trate de mostrarse.
  Application.OnMessage:=appmessage;

  //Determino la resolución inicial de la pantalla
  DeterminarResolucionInicial;

  //Creo una instancia de la clase pantalla
  Pantalla:= TPantalla.Create;

  //Guardo los valores inicales de la pantalla
  Pantalla.AnchoOriginalPantalla:= AnchoOriginalPantalla;
  Pantalla.AltoOriginalPantalla:= AltoOriginalPantalla;

  if (   (AnchoOriginalPantalla < 1024) or (AltoOriginalPantalla < 768)   )
    then
      begin
        //Cambio la resolución de la pantalla hacia 1024 X 768
        CambiarResolucion(1024, 768);
      end;   


  //--------------------------------------------------
  //*** Estipulo la configuracion para los dialogs ***
  //--------------------------------------------------
  //Customizo los botones y paneles para los dialogs
  MsgOptions.CustomButtonsColorScheme := btncsNeoGrass;
  MsgOptions.CustomPanelColorScheme := pnlcsGrass;
  //MsgOptions.CustomProgressColorScheme := procsSky;   //no es necesario en los dialogs
  
  //Usar customizacion para paneles de los dialogs
  MsgOptions.UseCustomPanel := True;

  //Usar customizacion para botones de los dialogs
  MsgOptions.UseCustomButtons := True;

  //Usar customizacion para el font de los dialogs
  MsgOptions.UseCustomFont := True;

  //Le especifico un font adecuado para los dialogs
  MsgOptions.Font.Assign(FontDialogSimulacionImagenes.Font);

  //Usar gradiente en los dialogs
  MsgOptions.UseGradient := True;

  //Usar forma especial en los botones de los dialogs
  MsgOptions.UseShapedForm := True;

  //No mostrar bordes en los dialogs
  MsgOptions.UseBorder := False;

  //MsgOptions.FormRoundSize := 15;
  //MsgOptions.StartGradientColor := clNavy;
  //MsgOptions.EndGradientColor := clBlack;

  //Color de
    //MsgOptions.StartGradientColor := 15448477; //clGradientInactiveCaption;
    //MsgOptions.EndGradientColor := 16749885; //clGradientActiveCaption;

  //MsgOptions.Font.Name := 'Tahoma';
  //MsgOptions.Font.Style := [fsBold];
end;



procedure TfrmPrincipal.SubMenuTemasDeAyudaClick(Sender: TObject);
begin
  //Muestro la ayuda general del sistema HostalWare
  MostrarAyudaGeneralDelSistema;
end;



//*** Configuracion del idioma ***

procedure TfrmPrincipal.SetIdiomaEspannol; //Cambio los caption de todo el sistema, hacia el idioma español
begin
  MsgOptions.DefLang:= ltSpanish;
end;



procedure TfrmPrincipal.SetIdiomaIngles;
begin
  MsgOptions.DefLang:= ltEnglish;
end;




procedure TfrmPrincipal.FormResize(Sender: TObject);
begin
//**** Plantilla para determinar Modulo y Seccion en activo ****
{
  if (PageControlTodo.ActivePageIndex = 0) //Modulo de Simulacion
    then
      begin

      end
        else
          begin
            if (PageControlTodo.ActivePageIndex = 1) //Modulo de Entrenamiento
             then
               begin
                 if (PageControlEntrenamiento.ActivePageIndex = 0) //Seccion de Microscopio Optico
                   then
                     begin

                     end
                       else
                         begin
                           if (PageControlEntrenamiento.ActivePageIndex = 1) //Seccion de Casos Tipicos
                             then
                               begin

                               end;
                         end;
               end;
          end;
}
end;



procedure TfrmPrincipal.ApplicationEventsSimulacionImagenesIdle(Sender: TObject; var Done: Boolean);
begin
{
  //Muestro el caption de la forma principal en dependencia del idioma
  if (IdiomaImperante = 'Espannol')
    then
      begin
        //Cambio el caption
        frmPrincipal.Caption:= 'HostalWare - Sistema de Hospedaje Automatizado';
      end
        else
          begin
            if (IdiomaImperante = 'Ingles')
              then
                begin
                  //Cambio el caption
                  frmPrincipal.Caption:= 'HostalWare - Sistema de Hospedaje Automatizado';
                end;
          end;
}


  //Determino los Items del Menu Principal que se verán
  //En dependencia de la pestaña activa
  if (AdvPageControlPrincipal.ActivePageIndex = 0)
    then
      begin // *** Modulo de Control del Sistema ***
        if (AdvOfficePagerControlDelSistema.ActivePageIndex = 0)
          then
            begin // * Pestaña de Usuarios del Sistema *
              //Menu Archivos
              SubMenuDesconectar.Visible:= True;

              SubMenuExportarReporteCuentasDeUsuario.Visible:= True;
              SubMenuExportarReporteTrazasDelSistema.Visible:= False;
              SubMenuExportarReporteRegistroDeHuespedes.Visible:= False;
              SubMenuExportarReporteCapacidades.Visible:= False;
              SubMenuExportarReporteHabitaciones.Visible:= False;
              SubMenuExportarReporteCamasExistentes.Visible:= False;
              SubMenuExportarReporteReservaciones.Visible:= False;
              SubMenuExportarReporteAlertasDelSistema.Visible:= False;
              SubMenuExportarReporteArchivosDeRegistros.Visible:= False;  //new

              SubMenuImprimirReporteCuentasDeUsuario.Visible:= True;
              SubMenuImprimirReporteTrazasDelSistema.Visible:= False;
              SubMenuImprimirReporteRegistroDeHuespedes.Visible:= False;
              SubMenuImprimirReporteCapacidades.Visible:= False;
              SubMenuImprimirReporteHabitaciones.Visible:= False;
              SubMenuImprimirReporteCamasExistentes.Visible:= False;
              SubMenuImprimirReporteReservaciones.Visible:= False;
              SubMenuImprimirReporteAlertasDelSistema.Visible:= False;
              SubMenuImprimirReporteArchivosDeRegistros.Visible:= False;  //new

              SubMenuSalir.Visible:= True;



              //Menu Edición
              SubMenuAgregarCuentaDeUsuario.Visible:= True;
              SubMenuModificarCuentaDeUsuario.Visible:= True;
              SubMenuEliminarCuentaDeUsuario.Visible:= True;

              SubMenuAgregarRegistroDeHuesped.Visible:= False;
              SubMenuModificarRegistroDeHuesped.Visible:= False;
              SubMenuEliminarRegistroDeHuesped.Visible:= False;
              SubMenuTrasladarRegistroDeHuesped.Visible:= False;
              SubMenuPermutarRegistroDeHuesped.Visible:= False;

              SubMenuAgregarHabitacion.Visible:= False;
              SubMenuModificarHabitacion.Visible:= False;
              SubMenuEliminarHabitacion.Visible:= False;
              
              SubMenuAgregarReservacion.Visible:= False;
              SubMenuModificarReservacion.Visible:= False;
              SubMenuEliminarReservacion.Visible:= False;
              SubMenuTramitarReservacion.Visible:= False;

              SubMenuBuscarEnLosArchivos.Visible:= False;  //new



              //Menu Ver
              SubMenuVerReporteCuentasDeUsuario.Visible:= True;
              SubMenuReporteTrazasDelSistema.Visible:= False;
              SubMenuVerDetallesDeTraza.Visible:= False;
              SubMenuVerReporteRegistroDeHuesped.Visible:= False;
              SubMenuVerReporteCapacidades.Visible:= False;
              SubMenuVerReporteHabitaciones.Visible:= False;
              SubMenuVerReporteCamas.Visible:= False;
              SubMenuVerReporteReservaciones.Visible:= False;
              SubMenuVerReporteAlertasDelSistema.Visible:= False;
              SubMenuVerDetallesDeAlertaDelSistema.Visible:= False;
              SubMenuVerReporteArchivosDeRegistros.Visible:= False; //new
              SubMenuVerDetallesDeRegistroEnElArchivo.Visible:= False; //new

              //Menu Herramientas
              SubMenuSalvarBaseDeDatos.Visible:= True;
              SubMenuRestaurarBaseDeDatos.Visible:= True;


              //Menu Ayuda
              SubMenuTemasDeAyuda.Visible:= True;
              SubMenuAcercaDeHostalWare.Visible:= True;
            end
              else
                begin
                  if (AdvOfficePagerControlDelSistema.ActivePageIndex = 1)
                    then
                      begin // * Pestaña de Trazas del Sistema *
                        //Menu Archivos
                        SubMenuDesconectar.Visible:= True;

                        SubMenuExportarReporteCuentasDeUsuario.Visible:= False;
                        SubMenuExportarReporteTrazasDelSistema.Visible:= True;
                        SubMenuExportarReporteRegistroDeHuespedes.Visible:= False;
                        SubMenuExportarReporteCapacidades.Visible:= False;
                        SubMenuExportarReporteHabitaciones.Visible:= False;
                        SubMenuExportarReporteCamasExistentes.Visible:= False;
                        SubMenuExportarReporteReservaciones.Visible:= False;
                        SubMenuExportarReporteAlertasDelSistema.Visible:= False;
                        SubMenuExportarReporteArchivosDeRegistros.Visible:= False;

                        SubMenuImprimirReporteCuentasDeUsuario.Visible:= False;
                        SubMenuImprimirReporteTrazasDelSistema.Visible:= True;
                        SubMenuImprimirReporteRegistroDeHuespedes.Visible:= False;
                        SubMenuImprimirReporteCapacidades.Visible:= False;
                        SubMenuImprimirReporteHabitaciones.Visible:= False;
                        SubMenuImprimirReporteCamasExistentes.Visible:= False;
                        SubMenuImprimirReporteReservaciones.Visible:= False;
                        SubMenuImprimirReporteAlertasDelSistema.Visible:= False;
                        SubMenuImprimirReporteArchivosDeRegistros.Visible:= False;

                        SubMenuSalir.Visible:= True;



                        //Menu Edición
                        SubMenuAgregarCuentaDeUsuario.Visible:= False;
                        SubMenuModificarCuentaDeUsuario.Visible:= False;
                        SubMenuEliminarCuentaDeUsuario.Visible:= False;
                        SubMenuAgregarRegistroDeHuesped.Visible:= False;
                        SubMenuModificarRegistroDeHuesped.Visible:= False;
                        SubMenuEliminarRegistroDeHuesped.Visible:= False;
                        SubMenuTrasladarRegistroDeHuesped.Visible:= False;
                        SubMenuPermutarRegistroDeHuesped.Visible:= False;
                        SubMenuAgregarHabitacion.Visible:= False;
                        SubMenuModificarHabitacion.Visible:= False;
                        SubMenuEliminarHabitacion.Visible:= False;
                        SubMenuAgregarReservacion.Visible:= False;
                        SubMenuModificarReservacion.Visible:= False;
                        SubMenuEliminarReservacion.Visible:= False;
                        SubMenuTramitarReservacion.Visible:= False;

                        SubMenuBuscarEnLosArchivos.Visible:= False;
                        


                        //Menu Ver
                        SubMenuVerReporteCuentasDeUsuario.Visible:= False;
                        SubMenuReporteTrazasDelSistema.Visible:= True;
                        SubMenuVerDetallesDeTraza.Visible:= True;
                        SubMenuVerReporteRegistroDeHuesped.Visible:= False;
                        SubMenuVerReporteCapacidades.Visible:= False;
                        SubMenuVerReporteHabitaciones.Visible:= False;
                        SubMenuVerReporteCamas.Visible:= False;
                        SubMenuVerReporteReservaciones.Visible:= False;
                        SubMenuVerReporteAlertasDelSistema.Visible:= False;
                        SubMenuVerDetallesDeAlertaDelSistema.Visible:= False;
                        SubMenuVerReporteArchivosDeRegistros.Visible:= False;
                        SubMenuVerDetallesDeRegistroEnElArchivo.Visible:= False;


                        //Menu Herramientas
                        SubMenuSalvarBaseDeDatos.Visible:= True;
                        SubMenuRestaurarBaseDeDatos.Visible:= True;



                        //Menu Ayuda
                        SubMenuTemasDeAyuda.Visible:= True;
                        SubMenuAcercaDeHostalWare.Visible:= True;
                      end;
                end;
      end
        else
          begin
            if (AdvPageControlPrincipal.ActivePageIndex = 1)
              then
                begin // *** Modulo de Hospedaje ***
                  if (AdvOfficePagerHospedaje.ActivePageIndex = 0)
                    then
                      begin // * Pestaña de Registro de Huespedes *
                        //Menu Archivos
                        SubMenuDesconectar.Visible:= True;

                        SubMenuExportarReporteCuentasDeUsuario.Visible:= False;
                        SubMenuExportarReporteTrazasDelSistema.Visible:= False;
                        SubMenuExportarReporteRegistroDeHuespedes.Visible:= True;
                        SubMenuExportarReporteCapacidades.Visible:= False;
                        SubMenuExportarReporteHabitaciones.Visible:= False;
                        SubMenuExportarReporteCamasExistentes.Visible:= False;
                        SubMenuExportarReporteReservaciones.Visible:= False;
                        SubMenuExportarReporteAlertasDelSistema.Visible:= False;
                        SubMenuExportarReporteArchivosDeRegistros.Visible:= False;
                        
                        SubMenuImprimirReporteCuentasDeUsuario.Visible:= False;
                        SubMenuImprimirReporteTrazasDelSistema.Visible:= False;
                        SubMenuImprimirReporteRegistroDeHuespedes.Visible:= True;
                        SubMenuImprimirReporteCapacidades.Visible:= False;
                        SubMenuImprimirReporteHabitaciones.Visible:= False;
                        SubMenuImprimirReporteCamasExistentes.Visible:= False;
                        SubMenuImprimirReporteReservaciones.Visible:= False;
                        SubMenuImprimirReporteAlertasDelSistema.Visible:= False;
                        SubMenuImprimirReporteArchivosDeRegistros.Visible:= False;
                        
                        SubMenuSalir.Visible:= True;



                        //Menu Edición
                        SubMenuAgregarCuentaDeUsuario.Visible:= False;
                        SubMenuModificarCuentaDeUsuario.Visible:= False;
                        SubMenuEliminarCuentaDeUsuario.Visible:= False;
                        SubMenuAgregarRegistroDeHuesped.Visible:= True;
                        SubMenuModificarRegistroDeHuesped.Visible:= True;
                        SubMenuEliminarRegistroDeHuesped.Visible:= True;
                        SubMenuTrasladarRegistroDeHuesped.Visible:= True;
                        SubMenuPermutarRegistroDeHuesped.Visible:= True;
                        SubMenuAgregarHabitacion.Visible:= False;
                        SubMenuModificarHabitacion.Visible:= False;
                        SubMenuEliminarHabitacion.Visible:= False;
                        SubMenuAgregarReservacion.Visible:= False;
                        SubMenuModificarReservacion.Visible:= False;
                        SubMenuEliminarReservacion.Visible:= False;
                        SubMenuTramitarReservacion.Visible:= False;

                        SubMenuBuscarEnLosArchivos.Visible:= False;



                        //Menu Ver
                        SubMenuVerReporteCuentasDeUsuario.Visible:= False;
                        SubMenuReporteTrazasDelSistema.Visible:= False;
                        SubMenuVerDetallesDeTraza.Visible:= False;
                        SubMenuVerReporteRegistroDeHuesped.Visible:= True;
                        SubMenuVerReporteCapacidades.Visible:= False;
                        SubMenuVerReporteHabitaciones.Visible:= False;
                        SubMenuVerReporteCamas.Visible:= False;
                        SubMenuVerReporteReservaciones.Visible:= False;
                        SubMenuVerReporteAlertasDelSistema.Visible:= False;
                        SubMenuVerDetallesDeAlertaDelSistema.Visible:= False;
                        SubMenuVerReporteArchivosDeRegistros.Visible:= False;
                        SubMenuVerDetallesDeRegistroEnElArchivo.Visible:= False;


                        //Menu Herramientas
                        SubMenuSalvarBaseDeDatos.Visible:= True;
                        SubMenuRestaurarBaseDeDatos.Visible:= True;
                        


                        //Menu Ayuda
                        SubMenuTemasDeAyuda.Visible:= True;
                        SubMenuAcercaDeHostalWare.Visible:= True;
                      end
                        else
                          begin
                            if (AdvOfficePagerHospedaje.ActivePageIndex = 1)
                              then
                                begin // * Pestaña de Admin. de Capacidades *
                                  //Menu Archivos
                                  SubMenuDesconectar.Visible:= True;

                                  SubMenuExportarReporteCuentasDeUsuario.Visible:= False;
                                  SubMenuExportarReporteTrazasDelSistema.Visible:= False;
                                  SubMenuExportarReporteRegistroDeHuespedes.Visible:= False;
                                  SubMenuExportarReporteCapacidades.Visible:= True;
                                  SubMenuExportarReporteHabitaciones.Visible:= True;
                                  SubMenuExportarReporteCamasExistentes.Visible:= True;
                                  SubMenuExportarReporteReservaciones.Visible:= False;
                                  SubMenuExportarReporteAlertasDelSistema.Visible:= False;
                                  SubMenuExportarReporteArchivosDeRegistros.Visible:= False;
                                  
                                  SubMenuImprimirReporteCuentasDeUsuario.Visible:= False;
                                  SubMenuImprimirReporteTrazasDelSistema.Visible:= False;
                                  SubMenuImprimirReporteRegistroDeHuespedes.Visible:= False;
                                  SubMenuImprimirReporteCapacidades.Visible:= True;
                                  SubMenuImprimirReporteHabitaciones.Visible:= True;
                                  SubMenuImprimirReporteCamasExistentes.Visible:= True;
                                  SubMenuImprimirReporteReservaciones.Visible:= False;
                                  SubMenuImprimirReporteAlertasDelSistema.Visible:= False;
                                  SubMenuImprimirReporteArchivosDeRegistros.Visible:= False;

                                  SubMenuSalir.Visible:= True;



                                  //Menu Edición
                                  SubMenuAgregarCuentaDeUsuario.Visible:= False;
                                  SubMenuModificarCuentaDeUsuario.Visible:= False;
                                  SubMenuEliminarCuentaDeUsuario.Visible:= False;
                                  SubMenuAgregarRegistroDeHuesped.Visible:= False;
                                  SubMenuModificarRegistroDeHuesped.Visible:= False;
                                  SubMenuEliminarRegistroDeHuesped.Visible:= False;
                                  SubMenuTrasladarRegistroDeHuesped.Visible:= False;
                                  SubMenuPermutarRegistroDeHuesped.Visible:= False;
                                  SubMenuAgregarHabitacion.Visible:= True;
                                  SubMenuModificarHabitacion.Visible:= True;
                                  SubMenuEliminarHabitacion.Visible:= True;
                                  SubMenuAgregarReservacion.Visible:= False;
                                  SubMenuModificarReservacion.Visible:= False;
                                  SubMenuEliminarReservacion.Visible:= False;
                                  SubMenuTramitarReservacion.Visible:= False;

                                  SubMenuBuscarEnLosArchivos.Visible:= False;



                                  //Menu Ver
                                  SubMenuVerReporteCuentasDeUsuario.Visible:= False;
                                  SubMenuReporteTrazasDelSistema.Visible:= False;
                                  SubMenuVerDetallesDeTraza.Visible:= False;
                                  SubMenuVerReporteRegistroDeHuesped.Visible:= False;
                                  SubMenuVerReporteCapacidades.Visible:= True;
                                  SubMenuVerReporteHabitaciones.Visible:= True;
                                  SubMenuVerReporteCamas.Visible:= True;
                                  SubMenuVerReporteReservaciones.Visible:= False;
                                  SubMenuVerReporteAlertasDelSistema.Visible:= False;
                                  SubMenuVerDetallesDeAlertaDelSistema.Visible:= False;
                                  SubMenuVerReporteArchivosDeRegistros.Visible:= False;
                                  SubMenuVerDetallesDeRegistroEnElArchivo.Visible:= False;


                                  //Menu Herramientas
                                  SubMenuSalvarBaseDeDatos.Visible:= True;
                                  SubMenuRestaurarBaseDeDatos.Visible:= True;



                                  //Menu Ayuda
                                  SubMenuTemasDeAyuda.Visible:= True;
                                  SubMenuAcercaDeHostalWare.Visible:= True;
                                end
                                  else
                                    begin
                                      if (AdvOfficePagerHospedaje.ActivePageIndex = 2)
                                        then
                                          begin // * Pestaña de Reservaciones *
                                            //Menu Archivos
                                            SubMenuDesconectar.Visible:= True;

                                            SubMenuExportarReporteCuentasDeUsuario.Visible:= False;
                                            SubMenuExportarReporteTrazasDelSistema.Visible:= False;
                                            SubMenuExportarReporteRegistroDeHuespedes.Visible:= False;
                                            SubMenuExportarReporteCapacidades.Visible:= False;
                                            SubMenuExportarReporteHabitaciones.Visible:= False;
                                            SubMenuExportarReporteCamasExistentes.Visible:= False;
                                            SubMenuExportarReporteReservaciones.Visible:= True;
                                            SubMenuExportarReporteAlertasDelSistema.Visible:= False;
                                            SubMenuExportarReporteArchivosDeRegistros.Visible:= False;
                                            
                                            SubMenuImprimirReporteCuentasDeUsuario.Visible:= False;
                                            SubMenuImprimirReporteTrazasDelSistema.Visible:= False;
                                            SubMenuImprimirReporteRegistroDeHuespedes.Visible:= False;
                                            SubMenuImprimirReporteCapacidades.Visible:= False;
                                            SubMenuImprimirReporteHabitaciones.Visible:= False;
                                            SubMenuImprimirReporteCamasExistentes.Visible:= False;
                                            SubMenuImprimirReporteReservaciones.Visible:= True;
                                            SubMenuImprimirReporteAlertasDelSistema.Visible:= False;
                                            SubMenuImprimirReporteArchivosDeRegistros.Visible:= False;

                                            SubMenuSalir.Visible:= True;



                                            //Menu Edición
                                            SubMenuAgregarCuentaDeUsuario.Visible:= False;
                                            SubMenuModificarCuentaDeUsuario.Visible:= False;
                                            SubMenuEliminarCuentaDeUsuario.Visible:= False;
                                            SubMenuAgregarRegistroDeHuesped.Visible:= False;
                                            SubMenuModificarRegistroDeHuesped.Visible:= False;
                                            SubMenuEliminarRegistroDeHuesped.Visible:= False;
                                            SubMenuTrasladarRegistroDeHuesped.Visible:= False;
                                            SubMenuPermutarRegistroDeHuesped.Visible:= False;
                                            SubMenuAgregarHabitacion.Visible:= False;
                                            SubMenuModificarHabitacion.Visible:= False;
                                            SubMenuEliminarHabitacion.Visible:= False;
                                            SubMenuAgregarReservacion.Visible:= True;
                                            SubMenuModificarReservacion.Visible:= True;
                                            SubMenuEliminarReservacion.Visible:= True;
                                            SubMenuTramitarReservacion.Visible:= True;

                                            SubMenuBuscarEnLosArchivos.Visible:= False;



                                            //Menu Ver
                                            SubMenuVerReporteCuentasDeUsuario.Visible:= False;
                                            SubMenuReporteTrazasDelSistema.Visible:= False;
                                            SubMenuVerDetallesDeTraza.Visible:= False;
                                            SubMenuVerReporteRegistroDeHuesped.Visible:= False;
                                            SubMenuVerReporteCapacidades.Visible:= False;
                                            SubMenuVerReporteHabitaciones.Visible:= False;
                                            SubMenuVerReporteCamas.Visible:= False;
                                            SubMenuVerReporteReservaciones.Visible:= True;
                                            SubMenuVerReporteAlertasDelSistema.Visible:= False;
                                            SubMenuVerDetallesDeAlertaDelSistema.Visible:= False;
                                            SubMenuVerReporteArchivosDeRegistros.Visible:= False;
                                            SubMenuVerDetallesDeRegistroEnElArchivo.Visible:= False;



                                            //Menu Herramientas
                                            SubMenuSalvarBaseDeDatos.Visible:= True;
                                            SubMenuRestaurarBaseDeDatos.Visible:= True;



                                            //Menu Ayuda
                                            SubMenuTemasDeAyuda.Visible:= True;
                                            SubMenuAcercaDeHostalWare.Visible:= True;
                                          end
                                            else
                                              begin
                                                if (AdvOfficePagerHospedaje.ActivePageIndex = 3)
                                                  then
                                                    begin // * Pestaña de Alertas *
                                                      //Menu Archivos
                                                      SubMenuDesconectar.Visible:= True;

                                                      SubMenuExportarReporteCuentasDeUsuario.Visible:= False;
                                                      SubMenuExportarReporteTrazasDelSistema.Visible:= False;
                                                      SubMenuExportarReporteRegistroDeHuespedes.Visible:= False;
                                                      SubMenuExportarReporteCapacidades.Visible:= False;
                                                      SubMenuExportarReporteHabitaciones.Visible:= False;
                                                      SubMenuExportarReporteCamasExistentes.Visible:= False;
                                                      SubMenuExportarReporteReservaciones.Visible:= False;
                                                      SubMenuExportarReporteAlertasDelSistema.Visible:= True;
                                                      SubMenuExportarReporteArchivosDeRegistros.Visible:= False;

                                                      SubMenuImprimirReporteCuentasDeUsuario.Visible:= False;
                                                      SubMenuImprimirReporteTrazasDelSistema.Visible:= False;
                                                      SubMenuImprimirReporteRegistroDeHuespedes.Visible:= False;
                                                      SubMenuImprimirReporteCapacidades.Visible:= False;
                                                      SubMenuImprimirReporteHabitaciones.Visible:= False;
                                                      SubMenuImprimirReporteCamasExistentes.Visible:= False;
                                                      SubMenuImprimirReporteReservaciones.Visible:= False;
                                                      SubMenuImprimirReporteAlertasDelSistema.Visible:= True;
                                                      SubMenuImprimirReporteArchivosDeRegistros.Visible:= False;

                                                      SubMenuSalir.Visible:= True;



                                                      //Menu Edición
                                                      SubMenuAgregarCuentaDeUsuario.Visible:= False;
                                                      SubMenuModificarCuentaDeUsuario.Visible:= False;
                                                      SubMenuEliminarCuentaDeUsuario.Visible:= False;
                                                      SubMenuAgregarRegistroDeHuesped.Visible:= False;
                                                      SubMenuModificarRegistroDeHuesped.Visible:= False;
                                                      SubMenuEliminarRegistroDeHuesped.Visible:= False;
                                                      SubMenuTrasladarRegistroDeHuesped.Visible:= False;
                                                      SubMenuPermutarRegistroDeHuesped.Visible:= False;
                                                      SubMenuAgregarHabitacion.Visible:= False;
                                                      SubMenuModificarHabitacion.Visible:= False;
                                                      SubMenuEliminarHabitacion.Visible:= False;
                                                      SubMenuAgregarReservacion.Visible:= False;
                                                      SubMenuModificarReservacion.Visible:= False;
                                                      SubMenuEliminarReservacion.Visible:= False;
                                                      SubMenuTramitarReservacion.Visible:= False;

                                                      SubMenuBuscarEnLosArchivos.Visible:= False;



                                                      //Menu Ver
                                                      SubMenuVerReporteCuentasDeUsuario.Visible:= False;
                                                      SubMenuReporteTrazasDelSistema.Visible:= False;
                                                      SubMenuVerDetallesDeTraza.Visible:= False;
                                                      SubMenuVerReporteRegistroDeHuesped.Visible:= False;
                                                      SubMenuVerReporteCapacidades.Visible:= False;
                                                      SubMenuVerReporteHabitaciones.Visible:= False;
                                                      SubMenuVerReporteCamas.Visible:= False;
                                                      SubMenuVerReporteReservaciones.Visible:= False;
                                                      SubMenuVerReporteAlertasDelSistema.Visible:= True;
                                                      SubMenuVerDetallesDeAlertaDelSistema.Visible:= True;
                                                      SubMenuVerReporteArchivosDeRegistros.Visible:= False;
                                                      SubMenuVerDetallesDeRegistroEnElArchivo.Visible:= False;



                                                      //Menu Herramientas
                                                      SubMenuSalvarBaseDeDatos.Visible:= True;
                                                      SubMenuRestaurarBaseDeDatos.Visible:= True;
                                                      


                                                      //Menu Ayuda
                                                      SubMenuTemasDeAyuda.Visible:= True;
                                                      SubMenuAcercaDeHostalWare.Visible:= True;
                                                    end
                                                      else
                                                        begin
                                                          if (AdvOfficePagerHospedaje.ActivePageIndex = 4)
                                                            then
                                                              begin // * Pestaña de Archivos *
                                                                //Menu Archivos
                                                                SubMenuDesconectar.Visible:= True;

                                                                SubMenuExportarReporteCuentasDeUsuario.Visible:= False;
                                                                SubMenuExportarReporteTrazasDelSistema.Visible:= False;
                                                                SubMenuExportarReporteRegistroDeHuespedes.Visible:= False;
                                                                SubMenuExportarReporteCapacidades.Visible:= False;
                                                                SubMenuExportarReporteHabitaciones.Visible:= False;
                                                                SubMenuExportarReporteCamasExistentes.Visible:= False;
                                                                SubMenuExportarReporteReservaciones.Visible:= False;
                                                                SubMenuExportarReporteAlertasDelSistema.Visible:= False;
                                                                SubMenuExportarReporteArchivosDeRegistros.Visible:= True;
                                                                
                                                                SubMenuImprimirReporteCuentasDeUsuario.Visible:= False;
                                                                SubMenuImprimirReporteTrazasDelSistema.Visible:= False;
                                                                SubMenuImprimirReporteRegistroDeHuespedes.Visible:= False;
                                                                SubMenuImprimirReporteCapacidades.Visible:= False;
                                                                SubMenuImprimirReporteHabitaciones.Visible:= False;
                                                                SubMenuImprimirReporteCamasExistentes.Visible:= False;
                                                                SubMenuImprimirReporteReservaciones.Visible:= False;
                                                                SubMenuImprimirReporteAlertasDelSistema.Visible:= False;
                                                                SubMenuImprimirReporteArchivosDeRegistros.Visible:= True;
                                                                
                                                                SubMenuSalir.Visible:= True;



                                                                //Menu Edición
                                                                SubMenuAgregarCuentaDeUsuario.Visible:= False;
                                                                SubMenuModificarCuentaDeUsuario.Visible:= False;
                                                                SubMenuEliminarCuentaDeUsuario.Visible:= False;
                                                                SubMenuAgregarRegistroDeHuesped.Visible:= False;
                                                                SubMenuModificarRegistroDeHuesped.Visible:= False;
                                                                SubMenuEliminarRegistroDeHuesped.Visible:= False;
                                                                SubMenuTrasladarRegistroDeHuesped.Visible:= False;
                                                                SubMenuPermutarRegistroDeHuesped.Visible:= False;
                                                                SubMenuAgregarHabitacion.Visible:= False;
                                                                SubMenuModificarHabitacion.Visible:= False;
                                                                SubMenuEliminarHabitacion.Visible:= False;
                                                                SubMenuAgregarReservacion.Visible:= False;
                                                                SubMenuModificarReservacion.Visible:= False;
                                                                SubMenuEliminarReservacion.Visible:= False;
                                                                SubMenuTramitarReservacion.Visible:= False;

                                                                SubMenuBuscarEnLosArchivos.Visible:= True;



                                                                //Menu Ver
                                                                SubMenuVerReporteCuentasDeUsuario.Visible:= False;
                                                                SubMenuReporteTrazasDelSistema.Visible:= False;
                                                                SubMenuVerDetallesDeTraza.Visible:= False;
                                                                SubMenuVerReporteRegistroDeHuesped.Visible:= False;
                                                                SubMenuVerReporteCapacidades.Visible:= False;
                                                                SubMenuVerReporteHabitaciones.Visible:= False;
                                                                SubMenuVerReporteCamas.Visible:= False;
                                                                SubMenuVerReporteReservaciones.Visible:= False;
                                                                SubMenuVerReporteAlertasDelSistema.Visible:= False;
                                                                SubMenuVerDetallesDeAlertaDelSistema.Visible:= False;
                                                                SubMenuVerReporteArchivosDeRegistros.Visible:= True;
                                                                SubMenuVerDetallesDeRegistroEnElArchivo.Visible:= True;



                                                                //Menu Herramientas
                                                                SubMenuSalvarBaseDeDatos.Visible:= True;
                                                                SubMenuRestaurarBaseDeDatos.Visible:= True;
                                                                


                                                                //Menu Ayuda
                                                                SubMenuTemasDeAyuda.Visible:= True;
                                                                SubMenuAcercaDeHostalWare.Visible:= True;
                                                              end;
                                                        end;
                                              end;
                                    end;
                          end;
                end;
          end;
end;



function TfrmPrincipal.QuitaEn(Cadena, Esto: String): String;
var
  aPos: Integer;
begin
  aPos:= Pos(Esto, Cadena);
  Result:= '';
  
  while (aPos > 0) do
    begin
      Result := Result + Copy(Cadena, 1, aPos-1);
      Delete(Cadena, 1, aPos + Length(Esto)-1);
      aPos := Pos(Esto, Cadena);
    end;

  Result:= Result + Cadena;
end;



function Min(a, b: integer): integer;
begin
  if a < b then result := a
  else result := b;
end;



function Max(a, b: integer): integer;
begin
  if a > b then result := a
  else result := b;
end;



procedure TfrmPrincipal.PersonalizarCaptionsMenuSistemaDeLaForma(AFormHandle:HWnd);
const 
  STR_CLOSE    = '&Cerrar';
  STR_MAXIMIZE = 'Ma&ximizar';
  STR_MINIMIZE = 'Mi&nimizar';
  STR_SIZE     = 'Redimen&sionar';
  STR_MOVE     = '&Mover';
  STR_RESTORE  = '&Restaurar';
var 
  SystemMenu     : HMenu;
  MyMenuItemInfo : TMenuItemInfo;
begin 
  SystemMenu := GetSystemMenu(AFormHandle, FALSE);
  FillChar(MyMenuItemInfo,SizeOf(TMenuItemInfo),#0);
  MyMenuItemInfo.cbSize := SizeOf(TMenuItemInfo);
  MyMenuItemInfo.fMask  := MIIM_TYPE or MIIM_ID or MIIM_STATE;
  MyMenuItemInfo.fType  := MFT_STRING;

  MyMenuItemInfo.wId        := SC_CLOSE;
  MyMenuItemInfo.dwTypeData := STR_CLOSE;
  MyMenuItemInfo.cch        := Length(STR_CLOSE);
  SetMenuItemInfo(SystemMenu,
                  SC_CLOSE,
                  FALSE,
                  MyMenuItemInfo);
 
  MyMenuItemInfo.wId        := SC_MAXIMIZE;
  MyMenuItemInfo.dwTypeData := STR_MAXIMIZE;
  MyMenuItemInfo.cch        := Length(STR_MAXIMIZE);
  SetMenuItemInfo(SystemMenu,
                  SC_MAXIMIZE,
                  FALSE,
                  MyMenuItemInfo);
 
  MyMenuItemInfo.wId        := SC_MINIMIZE;
  MyMenuItemInfo.dwTypeData := STR_MINIMIZE;
  MyMenuItemInfo.cch        := Length(STR_MINIMIZE);
  SetMenuItemInfo(SystemMenu,
                  SC_MINIMIZE,
                  FALSE,
                  MyMenuItemInfo);
 
  MyMenuItemInfo.wId        := SC_SIZE;
  MyMenuItemInfo.dwTypeData := STR_SIZE;
  MyMenuItemInfo.cch        := Length(STR_SIZE);
  SetMenuItemInfo(SystemMenu,
                  SC_SIZE,
                  FALSE,
                  MyMenuItemInfo);
 
  MyMenuItemInfo.wId        := SC_MOVE;
  MyMenuItemInfo.dwTypeData := STR_MOVE;
  MyMenuItemInfo.cch        := Length(STR_MOVE);
  SetMenuItemInfo(SystemMenu,
                  SC_MOVE,
                  FALSE,
                  MyMenuItemInfo);
 
  MyMenuItemInfo.wId        := SC_RESTORE;
  MyMenuItemInfo.dwTypeData := STR_RESTORE;
  MyMenuItemInfo.cch        := Length(STR_RESTORE);
  SetMenuItemInfo(SystemMenu,
                  SC_RESTORE,
                  FALSE,
                  MyMenuItemInfo);

end;




function TfrmPrincipal.CumpleConFormatoAdecuado(aCadena: String): Boolean;
var
  LargoTotal: Integer;
  Inicio: Integer;
  Aumento: String;
begin
  //Inicializo la respuesta en verdadero
  Result:= True;

  //Primero determinamos el largo total de la cadena original
  LargoTotal:= length(aCadena);

  //Luego determinamos el indice a partir del cual empieza la subcadena: _X_
  Inicio:=  PosEx('_X_', aCadena, 1 );

  //Si hubo error al hayar la cadena _X_ entonces es falso
  if (Inicio = 0)
    then
      begin
        Result:= False;
      end;

  //Ahora tomo en consideración el formato en que se encuentra el archivo
  //*** Verificamos si la imagen cargada es de extension *.sim, *.bmp o *.jpg
  if (  LowerCase( AnsiRightStr(aCadena, 3) ) = 'jpg'   )
    then
      begin //Formato *.JPG
        //Luego determino el aumento
        Aumento:= AnsiMidStr(aCadena, Inicio + 3, (LargoTotal - Inicio - 3 - 3)   );
      end   //Fin de formato *.JPG
        else
          begin
            if (  LowerCase( AnsiRightStr(aCadena, 3) ) = 'bmp'   )
              then
                begin //Formato *.BMP
                  //Luego determino el aumento
                  Aumento:= AnsiMidStr(aCadena, Inicio + 3, (LargoTotal - Inicio - 3 - 3)   );
                end   //Fin de formato *.BMP
                  else
                    begin
                      if (  LowerCase( AnsiRightStr(aCadena, 4) ) = 'jpeg'   )
                        then
                          begin //Formato *.JPEG
                            //Luego determino el aumento
                            Aumento:= AnsiMidStr(aCadena, Inicio + 3, (LargoTotal - Inicio - 3 - 4)   );
                          end;  //Fin de formato *.JPEG
                    end;
          end;      

  //Si hubo error al hayar el aumento entonces es falso
  if (Aumento = '')
    then
      begin
        Result:= False;
      end;
end;



function TfrmPrincipal.ExtraerParteUtilDeNombreFichero(aCadena: String): String;
var
  //LargoTotal: Integer;
  Inicio: Integer;
begin
  //Primero determinamos el largo total de la cadena original
  //LargoTotal:= length(aCadena);

  //Luego determinamos el indice a partir del cual empieza la subcadena: _X_
  Inicio:=  PosEx('_X_', aCadena, 1 );

  //Luego determino la parte util del nombre
  Result:= AnsiMidStr(aCadena, 1, (Inicio - 1));
end;



function TfrmPrincipal.MaxDeTres(a, b, c: integer): integer;
begin
  if (   (a >= b) and (a >= c)   )
    then
      begin
        Result := a
      end
        else
          begin
            if (   (b >= a) and (b >= c)   )
              then
                begin
                  Result := b
                end
                  else
                    begin
                      if (   (c >= a) and (c >= b)   )
                        then
                          begin
                            Result := c
                          end;
                    end;
          end;
end;



function TfrmPrincipal.MinDeTres(a, b, c: integer): integer;
begin
  if (   (a <= b) and (a <= c)   )
    then
      begin
        Result := a
      end
        else
          begin
            if (   (b <= a) and (b <= c)   )
              then
                begin
                  Result := b
                end
                  else
                    begin
                      if (   (c <= a) and (c <= b)   )
                        then
                          begin
                            Result := c
                          end
                            else;
                    end;
          end;
end;










procedure TfrmPrincipal.DrawGradient(Canvas: TCanvas; ARect: TRect;
  StartingColor, EndingColor: TColor; Style: TGradientStyle);
begin
  DrawBuffer.Height := RectHeight(ARect);
  DrawBuffer.Width := RectWidth(ARect);
  BarMenus.DrawGradient(DrawBuffer, nil, BitmapRect(DrawBuffer), startingColor, EndingColor, Style);
  Canvas.Draw(ARect.Left, ARect.Top, DrawBuffer); // copy the buffer
  DrawBuffer.Height := 0;
  DrawBuffer.Width := 0;
end;



function TfrmPrincipal.GetDrawBuffer: TBitmap;
begin
  if not Assigned(FDrawBuffer) then
    FDrawBuffer := TBitmap.Create;
  Result := FDrawBuffer;
end;



function TfrmPrincipal.QuitarEspaciosVaciosAlInicio(aNombre: AnsiString): AnsiString;
var
 i: Integer;
 Ancho: Integer;
 
 NombreInicial, NombreEditado: AnsiString;
label Inicio, Salida;
begin
  //Recibo el nombre a editar
  NombreInicial:= aNombre;

  //Inicialmente el nombre editado es el mismo que el pasado por datos
  NombreEditado:= aNombre;
  
  //Etiqueta de inicio de la funcion
  Inicio:

  //Recorro desde el 1er caracter de la cadena, hasta el ultimo
  for i:= 1 to Length(NombreInicial) do
    begin //Inicio del ciclo
      //Si encuentro uno vacio entonces
      if (NombreInicial[i] = ' ')
        then
          begin
            //Tomo el ancho de la cadena a extraer
            Ancho:= Length(NombreInicial) - 1;
            
            //Elimino ese caracter nulo a la izquierda
            NombreEditado:= AnsiRightStr(NombreInicial, Ancho);
            NombreInicial:= NombreEditado;
            //Vuelvo a empezar el ciclo, desde el primcipio del mismo
            goto Inicio;
          end
            else
              begin
                //Salgo del ciclo
                break;
              end;

    end;  //Fin del ciclo

  //Etiqueta de salida de la funcion
  Salida:

  //Sale el nombre ya editado
  Result:= NombreEditado;
end;



procedure TfrmPrincipal.FormActivate(Sender: TObject);
var
  ArchivoEnteroAbierto: AnsiString;
  CaminoDelArchivoAbierto: AnsiString;
  NombreEnteroDelArchivoAbierto: AnsiString;
  NombreDelArchivoAbierto: AnsiString;

  ExtensionDelArchivoAbierto: AnsiString;
  NombreUtilDelArchivoAbierto: AnsiString;

  MyJPEG : TJPEGImage;
  MyBMP  : TBitmap;

  Label Salida;
begin
  //Verifico si se hizo una llamada
  if (ParamCount <> 0)
    then
      begin

      end;

  //Etiqueta que marca un punto de salida del procedimiento
  Salida:

end;



function TfrmPrincipal.ObtenerFechaDelSistema: String;
var 
   stSystemTime : TSystemTime;
begin 
   Windows.GetLocalTime( stSystemTime );
   Result := AnsiLeftStr(   DateTimeToStr( SystemTimeToDateTime( stSystemTime ) ), 10   );
end;



procedure TfrmPrincipal.lblbtnNuevaCuentaDeUsuarioClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Agrego una nueva Cuenta de Usuario
        AgregarCuentaDeUsuario;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.lblbtnModificarCuentaDeUsuarioClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Modifico la Cuenta de Usuario seleccionada
        ModificarCuentaDeUsuario;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.lblbtnEliminarCuentaDeUsuarioClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Elimino la Cuenta de Usuario seleccionada
        EliminarCuentaDeUsuario;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.lblbtnDetallesDeTrazaClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Detallo la Traza del Sistema
        DetallarTrazaDelSistema;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.CustomizeGridPuestosDeTrabajoPaintCell(FieldName: String; Field: TField; var CellColor: TColor;
  var ChangeColor: Boolean);
begin
  // Pintar
  if (FieldName = 'Privilegio') and (not (Field.IsNull))
    then
      begin
        if (Field.AsString = 'Administrador')
          then
            begin
              ChangeColor := True;
              CellColor := clRed;
            end;

        if (Field.AsString = 'Operador')
          then
            begin
              ChangeColor := True;
              CellColor := clGreen;
            end;
      end;




  // Pintar
  if (FieldName = 'VendorName') and (not (Field.IsNull)) then begin
    if (Field.AsString[1] = 'C') then begin
      ChangeColor := True;
      CellColor := clRed;
    end;
  end;
end;



procedure TfrmPrincipal.SpeedButtonDesconectarseClick(Sender: TObject);
begin
  //
end;



procedure TfrmPrincipal.lblbtnNuevaCapacidadClick(Sender: TObject);
begin
  //Primero verifico que exista aun conexion a la base de datos
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Agrego una Habitacion
        AgregarHabitacion;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.ComboBoxFiltroParaHabitacionesChange(Sender: TObject);
begin
  //Mando a actualizar las Capacidades
  ActualizarCapacidades;
end;



procedure TfrmPrincipal.lblbtnModificarCapacidadClick(Sender: TObject);
begin
  //Primero verifico que exista aun conexion a la base de datos
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Modifico la Habitacion seleccionada
        ModificarHabitacion;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.DBGridHabitacionesExistentesDblClick(Sender: TObject);
begin
  //Primero verifico que exista aun conexion a la base de datos
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Modifico la Habitacion seleccionada
        ModificarHabitacion;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.lblbtnEliminarCapacidadClick(Sender: TObject);
begin
  //Primero verifico que exista aun conexion a la base de datos
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Elimino la Habitacion seleccionada
        EliminarHabitacion;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.lblbtnExportarHaciaPDFReporteHabitacionesExistentesClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Exporto hacia PDf el Reporte de Habitaciones
        ExportarHaciaPDFReporteHabitaciones;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.lblbtnPrevisualizarReporteHabitacionesExistentesClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Previsualizo el Reporte de Habitaciones
        PrevisualizarReporteHabitaciones;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;




procedure TfrmPrincipal.DBGridTrazasDelSistemaDblClick(Sender: TObject);
begin
  //Primero verifico que exista aun conexion a la base de datos
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        if (lblbtnDetallesDeTraza.Enabled = True)
          then
            begin
              lblbtnDetallesDeTraza.Click;
            end;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.DBGridPuestosDeTrabajoDblClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Modifico la Cuenta de Usuario seleccionada
        ModificarCuentaDeUsuario;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.DBGridHabitacionesExistentesCellClick(Column: TColumn);
begin
  //Mando a actualizar las camas
  ActualizarSoloCamas
end;



procedure TfrmPrincipal.DBGridHabitacionesExistentesMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //Mando a actualizar las camas
  ActualizarSoloCamas;
end;



procedure TfrmPrincipal.DBAdvGlowNavigatorHabitacionesExistentesClick(Sender: TObject; Button: TAdvNavigateBtn);
begin
  //Muestro y actualizo las camas
  ActualizarSoloCamas;
end;



procedure TfrmPrincipal.ActualizarCapacidades;
var
  ID_Habitacion: Integer;
begin
  //Plantilla
{
        //En dependencia del filtrado por capacidad escogido
        if (ComboBoxFiltroPorCapacidad.Text = 'TODOS')
          then
            begin

            end
              else
                begin
                  if (ComboBoxFiltroPorCapacidad.Text = 'Con Vacantes')
                    then
                      begin

                      end
                        else
                          begin
                            if (ComboBoxFiltroPorCapacidad.Text = 'Sin Vacantes')
                              then
                                begin

                                end;
                          end;
                end;
}

  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //En dependencia del filtrado por pisos escogido
        if (ComboBoxFiltroParaHabitaciones.Text = 'TODOS')
          then //Todos los pisos juntos
            begin
              //En dependencia del filtrado por capacidad escogido
              if (ComboBoxFiltroPorCapacidad.Text = 'TODOS')
                then
                  begin
                    //Le cambio el DataSource al DBGrid de habitaciones existentes
                    DBGridHabitacionesExistentes.DataSource:= DataModuleAdminCapacidades.DataSourceSelecHabitaciones;

                    //Le cambio el DataSource al DBTExt de ID_Habitaciones
                    DBTextID_Habitacion.DataSource:= DataModuleAdminCapacidades.DataSourceSelecHabitaciones;

                    //Le cambio el DataSource al DBAdvGlowNavigator de las habitaciones existentes
                    DBAdvGlowNavigatorHabitacionesExistentes.DataSource:= DataModuleAdminCapacidades.DataSourceSelecHabitaciones;

                    //Actualizo el DBGrid y el DBText (forma principal) con todas las Habitaciones
                    HostalWare.MostrarHabitaciones;

                    if (HostalWare.CantidadDeHabitaciones > 0)
                      then
                        begin
                          lblbtnModificarCapacidad.Enabled:= True;
                          lblbtnEliminarCapacidad.Enabled:= True;

                          SubMenuModificarHabitacion.Enabled:= True;
                          SubMenuEliminarHabitacion.Enabled:= True;
                        end
                          else
                            begin
                              lblbtnModificarCapacidad.Enabled:= False;
                              lblbtnEliminarCapacidad.Enabled:= False;

                              SubMenuModificarHabitacion.Enabled:= False;
                              SubMenuEliminarHabitacion.Enabled:= False;
                            end;

                    if (HostalWare.CantidadDeHabitaciones = 1)
                      then
                        begin
                          //Actualizo la cantidad de habitaciones (totales)
                          lblCantidadHabitaciones.Caption:= 'TOTAL = 1 habitación';
                        end
                          else
                            begin
                              //Actualizo la cantidad de habitaciones (totales)
                              lblCantidadHabitaciones.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDeHabitaciones) + ' habitaciones';
                            end;

                    //Actualizo las camas existentes para la habitacion que esté seleccionada
                    if (HostalWare.CantidadDeHabitaciones <> 0)
                      then
                        begin
                          //Recojo el ID_Habitacion
                          ID_Habitacion:= StrToInt(DBTextID_Habitacion.Field.Text);

                          //Muestro las camas para la habitacion seleccionada
                          HostalWare.MostrarCamasPorID_Habitacion(ID_Habitacion);

                          if (HostalWare.CantidadDeCamas = 1)
                            then
                              begin
                                //Actualizo la cantidad de camas para la habitacion seleccionada
                                lblCantidadCamas.Caption:= 'TOTAL = 1 Lecho';
                              end
                                else
                                  begin
                                    //Actualizo la cantidad de camas para la habitacion seleccionada
                                    lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDeCamas) + ' Lechos';
                                  end;
                        end
                          else //No tiene habitaciones
                            begin
                              //Le paso un ID_Habitacion que no existe (me daba explote)
                              ID_Habitacion:= StrToInt('0');

                              //Muestro las camas para la habitacion seleccionada
                              HostalWare.MostrarCamasPorID_Habitacion(ID_Habitacion);

                              //Actualizo la cantidad de camas para la habitacion seleccionada
                              lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDeCamas) + ' Lechos';
                            end;
                  end
                    else
                      begin
                        if (ComboBoxFiltroPorCapacidad.Text = 'Con Vacantes')
                          then
                            begin
                              //Le cambio el DataSource al DBGrid de habitaciones existentes
                              DBGridHabitacionesExistentes.DataSource:= DataModuleAdminCapacidades.DataSourceSelecHabitacionesConVacantes;

                              //Le cambio el DataSource al DBTExt de ID_Habitaciones
                              DBTextID_Habitacion.DataSource:= DataModuleAdminCapacidades.DataSourceSelecHabitacionesConVacantes;

                              //Le cambio el DataSource al DBAdvGlowNavigator de las habitaciones existentes
                              DBAdvGlowNavigatorHabitacionesExistentes.DataSource:= DataModuleAdminCapacidades.DataSourceSelecHabitacionesConVacantes;

                              //Actualizo el DBGrid y el DBText (forma principal) con todas las Habitaciones
                              HostalWare.MostrarHabitacionesConVacantes;

                              if (HostalWare.CantidadDeHabitacionesTotalesYConVacantes > 0)
                                then
                                  begin
                                    lblbtnModificarCapacidad.Enabled:= True;
                                    lblbtnEliminarCapacidad.Enabled:= True;

                                    SubMenuModificarHabitacion.Enabled:= True;
                                    SubMenuEliminarHabitacion.Enabled:= True;
                                  end
                                    else
                                      begin
                                        lblbtnModificarCapacidad.Enabled:= False;
                                        lblbtnEliminarCapacidad.Enabled:= False;

                                        SubMenuModificarHabitacion.Enabled:= False;
                                        SubMenuEliminarHabitacion.Enabled:= False;
                                      end;

                              if (HostalWare.CantidadDeHabitacionesTotalesYConVacantes = 1)
                                then
                                  begin
                                    //Actualizo la cantidad de habitaciones (totales)
                                    lblCantidadHabitaciones.Caption:= 'TOTAL = 1 habitación con vacantes';
                                  end
                                    else
                                      begin
                                        //Actualizo la cantidad de habitaciones (totales)
                                        lblCantidadHabitaciones.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDeHabitacionesTotalesYConVacantes) + ' habitaciones con vacantes';
                                      end;

                              //Actualizo las camas existentes para la habitacion que esté seleccionada
                              if (HostalWare.CantidadDeHabitacionesTotalesYConVacantes <> 0)
                                then
                                  begin
                                    //Recojo el ID_Habitacion
                                    ID_Habitacion:= StrToInt(DBTextID_Habitacion.Field.Text);

                                    //Muestro las camas para la habitacion seleccionada
                                    HostalWare.MostrarCamasPorID_Habitacion(ID_Habitacion);

                                    if (HostalWare.CantidadDeCamas = 1)
                                      then
                                        begin
                                          //Actualizo la cantidad de camas para la habitacion seleccionada
                                          lblCantidadCamas.Caption:= 'TOTAL = 1 Lecho';
                                        end
                                          else
                                            begin
                                              //Actualizo la cantidad de camas para la habitacion seleccionada
                                              lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDeCamas) + ' Lechos';
                                            end;
                                  end
                                    else //No tiene habitaciones
                                      begin
                                        //Le paso un ID_Habitacion que no existe (me daba explote)
                                        ID_Habitacion:= StrToInt('0');

                                        //Muestro las camas para la habitacion seleccionada
                                        HostalWare.MostrarCamasPorID_Habitacion(ID_Habitacion);

                                        //Actualizo la cantidad de camas para la habitacion seleccionada
                                        lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDeCamas) + ' Lechos';
                                      end;
                            end
                              else
                                begin
                                  if (ComboBoxFiltroPorCapacidad.Text = 'Sin Vacantes')
                                    then
                                      begin
                                        //Le cambio el DataSource al DBGrid de habitaciones existentes
                                        DBGridHabitacionesExistentes.DataSource:= DataModuleAdminCapacidades.DataSourceSelecHabitacionesSinVacantes;

                                        //Le cambio el DataSource al DBTExt de ID_Habitaciones
                                        DBTextID_Habitacion.DataSource:= DataModuleAdminCapacidades.DataSourceSelecHabitacionesSinVacantes;

                                        //Le cambio el DataSource al DBAdvGlowNavigator de las habitaciones existentes
                                        DBAdvGlowNavigatorHabitacionesExistentes.DataSource:= DataModuleAdminCapacidades.DataSourceSelecHabitacionesSinVacantes;

                                        //Actualizo el DBGrid y el DBText (forma principal) con todas las Habitaciones
                                        HostalWare.MostrarHabitacionesSinVacantes;

                                        if (HostalWare.CantidadDeHabitacionesTotalesYSinVacantes > 0)
                                          then
                                            begin
                                              lblbtnModificarCapacidad.Enabled:= True;
                                              lblbtnEliminarCapacidad.Enabled:= True;

                                              SubMenuModificarHabitacion.Enabled:= True;
                                              SubMenuEliminarHabitacion.Enabled:= True;
                                            end
                                              else
                                                begin
                                                  lblbtnModificarCapacidad.Enabled:= False;
                                                  lblbtnEliminarCapacidad.Enabled:= False;

                                                  SubMenuModificarHabitacion.Enabled:= False;
                                                  SubMenuEliminarHabitacion.Enabled:= False;
                                                end;

                                        if (HostalWare.CantidadDeHabitacionesTotalesYSinVacantes = 1)
                                          then
                                            begin
                                              //Actualizo la cantidad de habitaciones (totales)
                                              lblCantidadHabitaciones.Caption:= 'TOTAL = 1 habitación sin vacantes';
                                            end
                                              else
                                                begin
                                                  //Actualizo la cantidad de habitaciones (totales)
                                                  lblCantidadHabitaciones.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDeHabitacionesTotalesYSinVacantes) + ' habitaciones sin vacantes';
                                                end;

                                        //Actualizo las camas existentes para la habitacion que esté seleccionada
                                        if (HostalWare.CantidadDeHabitacionesTotalesYSinVacantes <> 0)
                                          then
                                            begin
                                              //Recojo el ID_Habitacion
                                              ID_Habitacion:= StrToInt(DBTextID_Habitacion.Field.Text);

                                              //Muestro las camas para la habitacion seleccionada
                                              HostalWare.MostrarCamasPorID_Habitacion(ID_Habitacion);

                                              if (HostalWare.CantidadDeCamas = 1)
                                                then
                                                  begin
                                                    //Actualizo la cantidad de camas para la habitacion seleccionada
                                                    lblCantidadCamas.Caption:= 'TOTAL = 1 Lecho';
                                                  end
                                                    else
                                                      begin
                                                        //Actualizo la cantidad de camas para la habitacion seleccionada
                                                        lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDeCamas) + ' Lechos';
                                                      end;
                                            end
                                              else //No tiene habitaciones
                                                begin
                                                  //Le paso un ID_Habitacion que no existe (me daba explote)
                                                  ID_Habitacion:= StrToInt('0');

                                                  //Muestro las camas para la habitacion seleccionada
                                                  HostalWare.MostrarCamasPorID_Habitacion(ID_Habitacion);

                                                  //Actualizo la cantidad de camas para la habitacion seleccionada
                                                  lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDeCamas) + ' Lechos';
                                                end;
                                      end;
                                end;
                      end;
            end
              else //Específico, por pisos
                begin 
                  //En dependencia del filtrado por capacidad escogido
                  if (ComboBoxFiltroPorCapacidad.Text = 'TODOS')
                    then
                      begin
                        //Le cambio el DataSource al DBGrid de habitaciones existentes
                        DBGridHabitacionesExistentes.DataSource:= DataModuleAdminCapacidades.DataSourceSelecHabitacionesPorPiso;

                        //Le cambio el DataSource al DBTExt de ID_Habitaciones
                        DBTextID_Habitacion.DataSource:= DataModuleAdminCapacidades.DataSourceSelecHabitacionesPorPiso;

                        //Le cambio el DataSource al DBAdvGlowNavigator de las habitaciones existentes
                        DBAdvGlowNavigatorHabitacionesExistentes.DataSource:= DataModuleAdminCapacidades.DataSourceSelecHabitacionesPorPiso;

                        //Actualizo el DBGrid (forma principal) con las Habitaciones del piso escogido
                        HostalWare.MostrarHabitacionesPorPiso(LeftStr(ComboBoxFiltroParaHabitaciones.Text, 3)  );

                        if (HostalWare.CantidadDeHabitacionesPorPiso > 0)
                          then
                            begin
                              lblbtnModificarCapacidad.Enabled:= True;
                              lblbtnEliminarCapacidad.Enabled:= True;

                              SubMenuModificarHabitacion.Enabled:= True;
                              SubMenuEliminarHabitacion.Enabled:= True;
                            end
                              else
                                begin
                                  lblbtnModificarCapacidad.Enabled:= False;
                                  lblbtnEliminarCapacidad.Enabled:= False;

                                  SubMenuModificarHabitacion.Enabled:= False;
                                  SubMenuEliminarHabitacion.Enabled:= False;
                                end;

                        if (HostalWare.CantidadDeHabitacionesPorPiso = 1)
                          then
                            begin
                              //Actualizo la cantidad de habitaciones (piso escogido)
                              lblCantidadHabitaciones.Caption:= 'TOTAL = 1 habitación en el ' + LeftStr(ComboBoxFiltroParaHabitaciones.Text, 3) + ' piso';
                            end
                              else
                                begin
                                  //Actualizo la cantidad de habitaciones (piso escogido)
                                  lblCantidadHabitaciones.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDeHabitacionesPorPiso) + ' habitaciones en el ' + LeftStr(ComboBoxFiltroParaHabitaciones.Text, 3) + ' piso';
                                end;

                        //Actualizo las camas existentes para la habitacion que esté seleccionada
                        if (HostalWare.CantidadDeHabitacionesPorPiso <> 0)
                          then
                            begin
                              //Recojo el ID_Habitacion
                              ID_Habitacion:= StrToInt(DBTextID_Habitacion.Field.Text);

                              //Muestro las camas para la habitacion seleccionada
                              HostalWare.MostrarCamasPorID_Habitacion(ID_Habitacion);

                              if (HostalWare.CantidadDeCamas = 1)
                                then
                                  begin
                                    //Actualizo la cantidad de camas para la habitacion seleccionada
                                    lblCantidadCamas.Caption:= 'TOTAL = 1 Lecho';
                                  end
                                    else
                                      begin
                                        //Actualizo la cantidad de camas para la habitacion seleccionada
                                        lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDeCamas) + ' Lechos';
                                      end;
                            end
                              else //No tiene habitaciones
                                begin
                                  //Le paso un ID_Habitacion que no existe (me daba explote)
                                  ID_Habitacion:= StrToInt('0');

                                  //Muestro las camas para la habitacion seleccionada
                                  HostalWare.MostrarCamasPorID_Habitacion(ID_Habitacion);

                                  //Actualizo la cantidad de camas para la habitacion seleccionada
                                  lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDeCamas) + ' Lechos';
                                end;
                      end
                        else
                          begin
                            if (ComboBoxFiltroPorCapacidad.Text = 'Con Vacantes')
                              then
                                begin
                                  //Le cambio el DataSource al DBGrid de habitaciones existentes
                                  DBGridHabitacionesExistentes.DataSource:= DataModuleAdminCapacidades.DataSourceSelecHabitacionesPorPisoYConVacantes;

                                  //Le cambio el DataSource al DBTExt de ID_Habitaciones
                                  DBTextID_Habitacion.DataSource:= DataModuleAdminCapacidades.DataSourceSelecHabitacionesPorPisoYConVacantes;

                                  //Le cambio el DataSource al DBAdvGlowNavigator de las habitaciones existentes
                                  DBAdvGlowNavigatorHabitacionesExistentes.DataSource:= DataModuleAdminCapacidades.DataSourceSelecHabitacionesPorPisoYConVacantes;

                                  //Actualizo el DBGrid (forma principal) con las Habitaciones del piso escogido
                                  HostalWare.MostrarHabitacionesPorPisoYConVacantes(LeftStr(ComboBoxFiltroParaHabitaciones.Text, 3)  );

                                  if (HostalWare.CantidadDeHabitacionesPorPisoYConVacantes > 0)
                                    then
                                      begin
                                        lblbtnModificarCapacidad.Enabled:= True;
                                        lblbtnEliminarCapacidad.Enabled:= True;

                                        SubMenuModificarHabitacion.Enabled:= True;
                                        SubMenuEliminarHabitacion.Enabled:= True;
                                      end
                                        else
                                          begin
                                            lblbtnModificarCapacidad.Enabled:= False;
                                            lblbtnEliminarCapacidad.Enabled:= False;

                                            SubMenuModificarHabitacion.Enabled:= False;
                                            SubMenuEliminarHabitacion.Enabled:= False;
                                          end;

                                  if (HostalWare.CantidadDeHabitacionesPorPisoYConVacantes = 1)
                                    then
                                      begin
                                        //Actualizo la cantidad de habitaciones (piso escogido)
                                        lblCantidadHabitaciones.Caption:= 'TOTAL = 1 habitación con vacantes en el ' + LeftStr(ComboBoxFiltroParaHabitaciones.Text, 3)   + ' piso';
                                      end
                                        else
                                          begin
                                            //Actualizo la cantidad de habitaciones (piso escogido)
                                            lblCantidadHabitaciones.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDeHabitacionesPorPisoYConVacantes) + ' habitaciones con vacantes en el ' + LeftStr(ComboBoxFiltroParaHabitaciones.Text, 3)   + ' piso';
                                          end;

                                  //Actualizo las camas existentes para la habitacion que esté seleccionada
                                  if (HostalWare.CantidadDeHabitacionesPorPisoYConVacantes <> 0)
                                    then
                                      begin
                                        //Recojo el ID_Habitacion
                                        ID_Habitacion:= StrToInt(DBTextID_Habitacion.Field.Text);

                                        //Muestro las camas para la habitacion seleccionada
                                        HostalWare.MostrarCamasPorID_Habitacion(ID_Habitacion);

                                        if (HostalWare.CantidadDeCamas = 1)
                                          then
                                            begin
                                              //Actualizo la cantidad de camas para la habitacion seleccionada
                                              lblCantidadCamas.Caption:= 'TOTAL = 1 Lecho';
                                            end
                                              else
                                                begin
                                                  //Actualizo la cantidad de camas para la habitacion seleccionada
                                                  lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDeCamas) + ' Lechos';
                                                end;
                                      end
                                        else
                                          begin
                                            //Le paso un ID_Habitacion que no existe (me daba explote)
                                            ID_Habitacion:= StrToInt('0');

                                            //Muestro las camas para la habitacion seleccionada
                                            HostalWare.MostrarCamasPorID_Habitacion(ID_Habitacion);

                                            //Actualizo la cantidad de camas para la habitacion seleccionada
                                            lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDeCamas) + ' Lechos';
                                          end;
                                end
                                  else
                                    begin
                                      if (ComboBoxFiltroPorCapacidad.Text = 'Sin Vacantes')
                                        then
                                          begin
                                            //Le cambio el DataSource al DBGrid de habitaciones existentes
                                            DBGridHabitacionesExistentes.DataSource:= DataModuleAdminCapacidades.DataSourceSelecHabitacionesPorPisoYSinVacantes;

                                            //Le cambio el DataSource al DBTExt de ID_Habitaciones
                                            DBTextID_Habitacion.DataSource:= DataModuleAdminCapacidades.DataSourceSelecHabitacionesPorPisoYSinVacantes;

                                            //Le cambio el DataSource al DBAdvGlowNavigator de las habitaciones existentes
                                            DBAdvGlowNavigatorHabitacionesExistentes.DataSource:= DataModuleAdminCapacidades.DataSourceSelecHabitacionesPorPisoYSinVacantes;

                                            //Actualizo el DBGrid (forma principal) con las Habitaciones del piso escogido
                                            HostalWare.MostrarHabitacionesPorPisoYSinVacantes(LeftStr(ComboBoxFiltroParaHabitaciones.Text, 3)  );

                                            if (HostalWare.CantidadDeHabitacionesPorPisoYSinVacantes > 0)
                                              then
                                                begin
                                                  lblbtnModificarCapacidad.Enabled:= True;
                                                  lblbtnEliminarCapacidad.Enabled:= True;

                                                  SubMenuModificarHabitacion.Enabled:= True;
                                                  SubMenuEliminarHabitacion.Enabled:= True;
                                                end
                                                  else
                                                    begin
                                                      lblbtnModificarCapacidad.Enabled:= False;
                                                      lblbtnEliminarCapacidad.Enabled:= False;

                                                      SubMenuModificarHabitacion.Enabled:= False;
                                                      SubMenuEliminarHabitacion.Enabled:= False;
                                                    end;

                                            if (HostalWare.CantidadDeHabitacionesPorPisoYSinVacantes = 1)
                                              then
                                                begin
                                                  //Actualizo la cantidad de habitaciones (piso escogido)
                                                  lblCantidadHabitaciones.Caption:= 'TOTAL = 1 habitación sin vacantes en el ' + LeftStr(ComboBoxFiltroParaHabitaciones.Text, 3)   + ' piso';
                                                end
                                                  else
                                                    begin
                                                      //Actualizo la cantidad de habitaciones (piso escogido)
                                                      lblCantidadHabitaciones.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDeHabitacionesPorPisoYSinVacantes) + ' habitaciones sin vacantes en el ' + LeftStr(ComboBoxFiltroParaHabitaciones.Text, 3)   + ' piso';
                                                    end;

                                            //Actualizo las camas existentes para la habitacion que esté seleccionada
                                            if (HostalWare.CantidadDeHabitacionesPorPisoYSinVacantes <> 0)
                                              then
                                                begin
                                                  //Recojo el ID_Habitacion
                                                  ID_Habitacion:= StrToInt(DBTextID_Habitacion.Field.Text);

                                                  //Muestro las camas para la habitacion seleccionada
                                                  HostalWare.MostrarCamasPorID_Habitacion(ID_Habitacion);

                                                  if (HostalWare.CantidadDeCamas = 1)
                                                    then
                                                      begin
                                                        //Actualizo la cantidad de camas para la habitacion seleccionada
                                                        lblCantidadCamas.Caption:= 'TOTAL = 1 Lecho';
                                                      end
                                                        else
                                                          begin
                                                            //Actualizo la cantidad de camas para la habitacion seleccionada
                                                            lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDeCamas) + ' Lechos';
                                                          end;
                                                end
                                                  else
                                                    begin
                                                      //Le paso un ID_Habitacion que no existe (me daba explote)
                                                      ID_Habitacion:= StrToInt('0');

                                                      //Muestro las camas para la habitacion seleccionada
                                                      HostalWare.MostrarCamasPorID_Habitacion(ID_Habitacion);

                                                      //Actualizo la cantidad de camas para la habitacion seleccionada
                                                      lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDeCamas) + ' Lechos';
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



procedure TfrmPrincipal.ComboBoxFiltroPorCapacidadChange(Sender: TObject);
begin
  //Mando a actualizar las Capacidades
  ActualizarCapacidades;
end;



procedure TfrmPrincipal.ActualizarSoloCamas;
var
  ID_Habitacion: Integer;
begin
  //Plantilla
{
        //En dependencia del filtrado por capacidad escogido
        if (ComboBoxFiltroPorCapacidad.Text = 'TODOS')
          then
            begin

            end
              else
                begin
                  if (ComboBoxFiltroPorCapacidad.Text = 'Con Vacantes')
                    then
                      begin

                      end
                        else
                          begin
                            if (ComboBoxFiltroPorCapacidad.Text = 'Sin Vacantes')
                              then
                                begin

                                end;
                          end;
                end;
}

  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //En dependencia del filtrado por pisos escogido
        if (ComboBoxFiltroParaHabitaciones.Text = 'TODOS')
          then //Todos los pisos juntos
            begin
              //En dependencia del filtrado por capacidad escogido
              if (ComboBoxFiltroPorCapacidad.Text = 'TODOS')
                then
                  begin
                    //Actualizo las camas existentes para la habitacion que esté seleccionada
                    if (HostalWare.CantidadDeHabitaciones <> 0)
                      then
                        begin
                          //Recojo el ID_Habitacion
                          ID_Habitacion:= StrToInt(DBTextID_Habitacion.Field.Text);

                          //Muestro las camas para la habitacion seleccionada
                          HostalWare.MostrarCamasPorID_Habitacion(ID_Habitacion);

                          if (HostalWare.CantidadDeCamas = 1)
                            then
                              begin
                                //Actualizo la cantidad de camas para la habitacion seleccionada
                                lblCantidadCamas.Caption:= 'TOTAL = 1 Lecho';
                              end
                                else
                                  begin
                                    //Actualizo la cantidad de camas para la habitacion seleccionada
                                    lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDeCamas) + ' Lechos';
                                  end;
                        end
                          else //No tiene habitaciones
                            begin
                              //Le paso un ID_Habitacion que no existe (me daba explote)
                              ID_Habitacion:= StrToInt('0');

                              //Muestro las camas para la habitacion seleccionada
                              HostalWare.MostrarCamasPorID_Habitacion(ID_Habitacion);

                              //Actualizo la cantidad de camas para la habitacion seleccionada
                              lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDeCamas) + ' Lechos';
                            end;
                  end
                    else
                      begin
                        if (ComboBoxFiltroPorCapacidad.Text = 'Con Vacantes')
                          then
                            begin
                              //Actualizo las camas existentes para la habitacion que esté seleccionada
                              if (HostalWare.CantidadDeHabitacionesTotalesYConVacantes <> 0)
                                then
                                  begin
                                    //Recojo el ID_Habitacion
                                    ID_Habitacion:= StrToInt(DBTextID_Habitacion.Field.Text);

                                    //Muestro las camas para la habitacion seleccionada
                                    HostalWare.MostrarCamasPorID_Habitacion(ID_Habitacion);

                                    if (HostalWare.CantidadDeCamas = 1)
                                      then
                                        begin
                                          //Actualizo la cantidad de camas para la habitacion seleccionada
                                          lblCantidadCamas.Caption:= 'TOTAL = 1 Lecho';
                                        end
                                          else
                                            begin
                                              //Actualizo la cantidad de camas para la habitacion seleccionada
                                              lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDeCamas) + ' Lechos';
                                            end;
                                  end
                              else //No tiene habitaciones
                                begin
                                  //Le paso un ID_Habitacion que no existe (me daba explote)
                                  ID_Habitacion:= StrToInt('0');

                                  //Muestro las camas para la habitacion seleccionada
                                  HostalWare.MostrarCamasPorID_Habitacion(ID_Habitacion);

                                  //Actualizo la cantidad de camas para la habitacion seleccionada
                                  lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDeCamas) + ' Lechos';
                                end;
                            end
                              else
                                begin
                                  if (ComboBoxFiltroPorCapacidad.Text = 'Sin Vacantes')
                                    then
                                      begin
                                        //Actualizo las camas existentes para la habitacion que esté seleccionada
                                        if (HostalWare.CantidadDeHabitacionesTotalesYSinVacantes <> 0)
                                          then
                                            begin
                                              //Recojo el ID_Habitacion
                                              ID_Habitacion:= StrToInt(DBTextID_Habitacion.Field.Text);

                                              //Muestro las camas para la habitacion seleccionada
                                              HostalWare.MostrarCamasPorID_Habitacion(ID_Habitacion);

                                              if (HostalWare.CantidadDeCamas = 1)
                                                then
                                                  begin
                                                    //Actualizo la cantidad de camas para la habitacion seleccionada
                                                    lblCantidadCamas.Caption:= 'TOTAL = 1 Lecho';
                                                  end
                                                    else
                                                      begin
                                                        //Actualizo la cantidad de camas para la habitacion seleccionada
                                                        lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDeCamas) + ' Lechos';
                                                      end;
                                            end
                                              else //No tiene habitaciones
                                                begin
                                                  //Le paso un ID_Habitacion que no existe (me daba explote)
                                                  ID_Habitacion:= StrToInt('0');

                                                  //Muestro las camas para la habitacion seleccionada
                                                  HostalWare.MostrarCamasPorID_Habitacion(ID_Habitacion);

                                                  //Actualizo la cantidad de camas para la habitacion seleccionada
                                                  lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDeCamas) + ' Lechos';
                                                end;
                                      end;
                                end;
                      end;
            end
              else //Específico, por pisos
                begin 
                  //En dependencia del filtrado por capacidad escogido
                  if (ComboBoxFiltroPorCapacidad.Text = 'TODOS')
                    then
                      begin
                        //Actualizo las camas existentes para la habitacion que esté seleccionada
                        if (HostalWare.CantidadDeHabitacionesPorPiso <> 0)
                          then
                            begin
                              //Recojo el ID_Habitacion
                              ID_Habitacion:= StrToInt(DBTextID_Habitacion.Field.Text);

                              //Muestro las camas para la habitacion seleccionada
                              HostalWare.MostrarCamasPorID_Habitacion(ID_Habitacion);

                              if (HostalWare.CantidadDeCamas = 1)
                                then
                                  begin
                                    //Actualizo la cantidad de camas para la habitacion seleccionada
                                    lblCantidadCamas.Caption:= 'TOTAL = 1 Lecho';
                                  end
                                    else
                                      begin
                                        //Actualizo la cantidad de camas para la habitacion seleccionada
                                        lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDeCamas) + ' Lechos';
                                      end;
                            end
                              else //No tiene habitaciones
                                begin
                                  //Le paso un ID_Habitacion que no existe (me daba explote)
                                  ID_Habitacion:= StrToInt('0');

                                  //Muestro las camas para la habitacion seleccionada
                                  HostalWare.MostrarCamasPorID_Habitacion(ID_Habitacion);

                                  //Actualizo la cantidad de camas para la habitacion seleccionada
                                  lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDeCamas) + ' Lechos';
                                end;
                      end
                        else
                          begin
                            if (ComboBoxFiltroPorCapacidad.Text = 'Con Vacantes')
                              then
                                begin
                                  //Actualizo las camas existentes para la habitacion que esté seleccionada
                                  if (HostalWare.CantidadDeHabitacionesPorPisoYConVacantes <> 0)
                                    then
                                      begin
                                        //Recojo el ID_Habitacion
                                        ID_Habitacion:= StrToInt(DBTextID_Habitacion.Field.Text);

                                        //Muestro las camas para la habitacion seleccionada
                                        HostalWare.MostrarCamasPorID_Habitacion(ID_Habitacion);

                                        if (HostalWare.CantidadDeCamas = 1)
                                          then
                                            begin
                                              //Actualizo la cantidad de camas para la habitacion seleccionada
                                              lblCantidadCamas.Caption:= 'TOTAL = 1 Lecho';
                                            end
                                              else
                                                begin
                                                  //Actualizo la cantidad de camas para la habitacion seleccionada
                                                  lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDeCamas) + ' Lechos';
                                                end;
                                      end
                                        else //No tiene habitaciones
                                          begin
                                            //Le paso un ID_Habitacion que no existe (me daba explote)
                                            ID_Habitacion:= StrToInt('0');

                                            //Muestro las camas para la habitacion seleccionada
                                            HostalWare.MostrarCamasPorID_Habitacion(ID_Habitacion);

                                            //Actualizo la cantidad de camas para la habitacion seleccionada
                                            lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDeCamas) + ' Lechos';
                                          end;
                                end
                                  else
                                    begin
                                      if (ComboBoxFiltroPorCapacidad.Text = 'Sin Vacantes')
                                        then
                                          begin
                                            //Actualizo las camas existentes para la habitacion que esté seleccionada
                                            if (HostalWare.CantidadDeHabitacionesPorPisoYSinVacantes <> 0)
                                              then
                                                begin
                                                  //Recojo el ID_Habitacion
                                                  ID_Habitacion:= StrToInt(DBTextID_Habitacion.Field.Text);

                                                  //Muestro las camas para la habitacion seleccionada
                                                  HostalWare.MostrarCamasPorID_Habitacion(ID_Habitacion);

                                                  if (HostalWare.CantidadDeCamas = 1)
                                                    then
                                                      begin
                                                        //Actualizo la cantidad de camas para la habitacion seleccionada
                                                        lblCantidadCamas.Caption:= 'TOTAL = 1 Lecho';
                                                      end
                                                        else
                                                          begin
                                                            //Actualizo la cantidad de camas para la habitacion seleccionada
                                                            lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDeCamas) + ' Lechos';
                                                          end;
                                                end
                                                  else //No tiene habitaciones
                                                    begin
                                                      //Le paso un ID_Habitacion que no existe (me daba explote)
                                                      ID_Habitacion:= StrToInt('0');

                                                      //Muestro las camas para la habitacion seleccionada
                                                      HostalWare.MostrarCamasPorID_Habitacion(ID_Habitacion);

                                                      //Actualizo la cantidad de camas para la habitacion seleccionada
                                                      lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDeCamas) + ' Lechos';
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



procedure TfrmPrincipal.lblbtnNuevoRegistroClick(Sender: TObject);
begin
  //Primero verifico que exista aun conexion a la base de datos
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Agrego un nuevo Registro de Huesped
        AgregarRegistroDeHuesped;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.lblbtnEliminarRegistroClick(Sender: TObject);
begin
  //Primero verifico que exista aun conexion a la base de datos
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Elimino el Registro de Huesped seleccionado
        EliminarRegistroDeHuesped;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;

procedure TfrmPrincipal.lblbtnModificarRegistroClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Modifico el Registro de Huesped seleccionado
        ModificarRegistroDeHuesped;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.ActualizarRegistros;
var
  ID_Habitacion: Integer;
  Motivo, Piso: AnsiString;
begin
  //Plantilla
{
        //En dependencia del filtrado por capacidad escogido
        if (ComboBoxFiltroPorCapacidad.Text = 'TODOS')
          then
            begin

            end
              else
                begin
                  if (ComboBoxFiltroPorCapacidad.Text = 'Con Vacantes')
                    then
                      begin

                      end
                        else
                          begin
                            if (ComboBoxFiltroPorCapacidad.Text = 'Sin Vacantes')
                              then
                                begin

                                end;
                          end;
                end;
}

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
                    DBGridHuespedesRegistrados.DataSource:= DataModuleRegistroDeHuespedes.DataSourceMostrarHuespedesTotales;

                    //Le cambio el DataSource al DBTExt de ID_Huesped
                    DBTextID_Huesped.DataSource:= DataModuleRegistroDeHuespedes.DataSourceMostrarHuespedesTotales;

                    //Le cambio el DataSource al DBTExt de ID_CamaDeHuesped
                    DBTextID_CamaDeHuesped.DataSource:= DataModuleRegistroDeHuespedes.DataSourceMostrarHuespedesTotales;

                    //Le cambio el DataSource al DBTExt de Apellidos
                    DBTextApellidos.DataSource:= DataModuleRegistroDeHuespedes.DataSourceMostrarHuespedesTotales;

                    //Le cambio el DataSource al DBAdvGlowNavigator de los huespedes registrados
                    DBAdvGlowNavigatorHuespedesRegistrados.DataSource:= DataModuleRegistroDeHuespedes.DataSourceMostrarHuespedesTotales;

                    //Actualizo el DBGrid y los DBText (forma principal) con todos los huespedes
                    HostalWare.MostrarHuespedesTotales;

                    //Valido la habilitación de los botones de 'Modificar' y 'Eliminar'
                    if (HostalWare.CantidadDeHuespedesTotales > 0)
                      then
                        begin
                          lblbtnModificarRegistro.Enabled:= True;
                          lblbtnEliminarRegistro.Enabled:= True;
                          lblbtnHacerTraslado.Enabled:= True;
                          lblbtnRealizarPermuta.Enabled:= True;
                          
                          SubMenuModificarRegistroDeHuesped.Enabled:= True;
                          SubMenuEliminarRegistroDeHuesped.Enabled:= True;
                          SubMenuTrasladarRegistroDeHuesped.Enabled:= True;
                          SubMenuPermutarRegistroDeHuesped.Enabled:= True;
                        end
                          else
                            begin
                              lblbtnModificarRegistro.Enabled:= False;
                              lblbtnEliminarRegistro.Enabled:= False;
                              lblbtnHacerTraslado.Enabled:= False;
                              lblbtnRealizarPermuta.Enabled:= False;

                              SubMenuModificarRegistroDeHuesped.Enabled:= False;
                              SubMenuEliminarRegistroDeHuesped.Enabled:= False;
                              SubMenuTrasladarRegistroDeHuesped.Enabled:= False;
                              SubMenuPermutarRegistroDeHuesped.Enabled:= False;
                            end;

                    if (HostalWare.CantidadDeHuespedesTotales = 1)
                      then
                        begin
                          //Actualizo la cantidad de huespedes (totales)
                          lblEtiquetaTotalHuespedes.Caption:= 'TOTAL = 1 huésped';
                        end
                          else
                            begin
                              //Actualizo la cantidad de huespedes (totales)
                              lblEtiquetaTotalHuespedes.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDeHuespedesTotales) + ' huéspedes';
                            end;
                  end
                    else
                      begin //Un motivo en específico, para todos los pisos
                        //Recojo el motivo
                        Motivo:= cmbxFiltrarRegistrosPorMotivo.Text;

                        //Le cambio el DataSource al DBGrid de huespedes registrados
                        DBGridHuespedesRegistrados.DataSource:= DataModuleRegistroDeHuespedes.dsSelecHuespedesPorMotivo;

                        //Le cambio el DataSource al DBText de ID_Huesped
                        DBTextID_Huesped.DataSource:= DataModuleRegistroDeHuespedes.dsSelecHuespedesPorMotivo;

                        //Le cambio el DataSource al DBTExt de ID_CamaDeHuesped
                        DBTextID_CamaDeHuesped.DataSource:= DataModuleRegistroDeHuespedes.dsSelecHuespedesPorMotivo;

                        //Le cambio el DataSource al DBTExt de Apellidos
                        DBTextApellidos.DataSource:= DataModuleRegistroDeHuespedes.dsSelecHuespedesPorMotivo;

                        //Le cambio el DataSource al DBAdvGlowNavigator de los huespedes registrados
                        DBAdvGlowNavigatorHuespedesRegistrados.DataSource:= DataModuleRegistroDeHuespedes.dsSelecHuespedesPorMotivo;

                        //Actualizo el DBGrid y los DBText (forma principal) con los huespedes que tienen el motivo escogido
                        HostalWare.MostrarHuespedesPorMotivo(Motivo);

                        //Valido la habilitación de los botones de 'Modificar' y 'Eliminar'
                        if (HostalWare.CantidadDeHuespedesPorMotivo > 0)
                          then
                            begin
                              lblbtnModificarRegistro.Enabled:= True;
                              lblbtnEliminarRegistro.Enabled:= True;
                              lblbtnHacerTraslado.Enabled:= True;
                              lblbtnRealizarPermuta.Enabled:= True;
                          
                              SubMenuModificarRegistroDeHuesped.Enabled:= True;
                              SubMenuEliminarRegistroDeHuesped.Enabled:= True;
                              SubMenuTrasladarRegistroDeHuesped.Enabled:= True;
                              SubMenuPermutarRegistroDeHuesped.Enabled:= True;
                            end
                              else
                                begin
                                  lblbtnModificarRegistro.Enabled:= False;
                                  lblbtnEliminarRegistro.Enabled:= False;
                                  lblbtnHacerTraslado.Enabled:= False;
                                  lblbtnRealizarPermuta.Enabled:= False;

                                  SubMenuModificarRegistroDeHuesped.Enabled:= False;
                                  SubMenuEliminarRegistroDeHuesped.Enabled:= False;
                                  SubMenuTrasladarRegistroDeHuesped.Enabled:= False;
                                  SubMenuPermutarRegistroDeHuesped.Enabled:= False;
                                end;

                        if (HostalWare.CantidadDeHuespedesPorMotivo = 1)
                          then
                            begin
                              //Actualizo la cantidad de huespedes (totales)
                              lblEtiquetaTotalHuespedes.Caption:= 'TOTAL = 1 huésped';
                            end
                              else
                                begin
                                  //Actualizo la cantidad de huespedes (totales)
                                  lblEtiquetaTotalHuespedes.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDeHuespedesPorMotivo) + ' huéspedes';
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
                        DBGridHuespedesRegistrados.DataSource:= DataModuleRegistroDeHuespedes.dsSelecHuespedesPorPiso;

                        //Le cambio el DataSource al DBTExt de ID_Huesped
                        DBTextID_Huesped.DataSource:= DataModuleRegistroDeHuespedes.dsSelecHuespedesPorPiso;

                        //Le cambio el DataSource al DBTExt de ID_CamaDeHuesped
                        DBTextID_CamaDeHuesped.DataSource:= DataModuleRegistroDeHuespedes.dsSelecHuespedesPorPiso;

                        //Le cambio el DataSource al DBTExt de Apellidos
                        DBTextApellidos.DataSource:= DataModuleRegistroDeHuespedes.dsSelecHuespedesPorPiso;

                        //Le cambio el DataSource al DBAdvGlowNavigator de los huespedes registrados
                        DBAdvGlowNavigatorHuespedesRegistrados.DataSource:= DataModuleRegistroDeHuespedes.dsSelecHuespedesPorPiso;

                        //Actualizo el DBGrid y los DBText (forma principal) con los huespedes del piso escogido
                        HostalWare.MostrarHuespedesPorPiso(Piso);

                        //Valido la habilitación de los botones de 'Modificar' y 'Eliminar'
                        if (HostalWare.CantidadDeHuespedesPorPiso > 0)
                          then
                            begin
                              lblbtnModificarRegistro.Enabled:= True;
                              lblbtnEliminarRegistro.Enabled:= True;
                              lblbtnHacerTraslado.Enabled:= True;
                              lblbtnRealizarPermuta.Enabled:= True;
                          
                              SubMenuModificarRegistroDeHuesped.Enabled:= True;
                              SubMenuEliminarRegistroDeHuesped.Enabled:= True;
                              SubMenuTrasladarRegistroDeHuesped.Enabled:= True;
                              SubMenuPermutarRegistroDeHuesped.Enabled:= True;
                            end
                              else
                                begin
                                  lblbtnModificarRegistro.Enabled:= False;
                                  lblbtnEliminarRegistro.Enabled:= False;
                                  lblbtnHacerTraslado.Enabled:= False;
                                  lblbtnRealizarPermuta.Enabled:= False;

                                  SubMenuModificarRegistroDeHuesped.Enabled:= False;
                                  SubMenuEliminarRegistroDeHuesped.Enabled:= False;
                                  SubMenuTrasladarRegistroDeHuesped.Enabled:= False;
                                  SubMenuPermutarRegistroDeHuesped.Enabled:= False;
                                end;

                        if (HostalWare.CantidadDeHuespedesPorPiso = 1)
                          then
                            begin
                              //Actualizo la cantidad de huespedes (totales)
                              lblEtiquetaTotalHuespedes.Caption:= 'TOTAL = 1 huésped';
                            end
                              else
                                begin
                                  //Actualizo la cantidad de huespedes (totales)
                                  lblEtiquetaTotalHuespedes.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDeHuespedesPorPiso) + ' huéspedes';
                                end;
                      end
                        else
                          begin //Un motivo en específico, por pisos en especifico
                            //Recojo el piso
                            Piso:= LeftStr(cmbxFiltrarRegistrosPorPiso.Text, 3);

                            //Recojo el motivo
                            Motivo:= cmbxFiltrarRegistrosPorMotivo.Text;

                            //Le cambio el DataSource al DBGrid de huespedes registrados
                            DBGridHuespedesRegistrados.DataSource:= DataModuleRegistroDeHuespedes.dsSelecHuespedesPorMotivoYPorPiso;

                            //Le cambio el DataSource al DBTExt de ID_Huesped
                            DBTextID_Huesped.DataSource:= DataModuleRegistroDeHuespedes.dsSelecHuespedesPorMotivoYPorPiso;

                            //Le cambio el DataSource al DBTExt de ID_CamaDeHuesped
                            DBTextID_CamaDeHuesped.DataSource:= DataModuleRegistroDeHuespedes.dsSelecHuespedesPorMotivoYPorPiso;

                            //Le cambio el DataSource al DBTExt de Apellidos
                            DBTextApellidos.DataSource:= DataModuleRegistroDeHuespedes.dsSelecHuespedesPorMotivoYPorPiso;

                            //Le cambio el DataSource al DBAdvGlowNavigator de los huespedes registrados
                            DBAdvGlowNavigatorHuespedesRegistrados.DataSource:= DataModuleRegistroDeHuespedes.dsSelecHuespedesPorMotivoYPorPiso;

                            //Actualizo el DBGrid y los DBText (forma principal) con los huespedes del piso escogido
                            HostalWare.MostrarHuespedesPorMotivoYPorPiso(Motivo, Piso);

                            //Valido la habilitación de los botones de 'Modificar' y 'Eliminar'
                            if (HostalWare.CantidadDeHuespedesPorMotivoYPorPiso > 0)
                              then
                                begin
                                  lblbtnModificarRegistro.Enabled:= True;
                                  lblbtnEliminarRegistro.Enabled:= True;
                                  lblbtnHacerTraslado.Enabled:= True;
                                  lblbtnRealizarPermuta.Enabled:= True;
                          
                                  SubMenuModificarRegistroDeHuesped.Enabled:= True;
                                  SubMenuEliminarRegistroDeHuesped.Enabled:= True;
                                  SubMenuTrasladarRegistroDeHuesped.Enabled:= True;
                                  SubMenuPermutarRegistroDeHuesped.Enabled:= True;
                                end
                                  else
                                    begin
                                      lblbtnModificarRegistro.Enabled:= False;
                                      lblbtnEliminarRegistro.Enabled:= False;
                                      lblbtnHacerTraslado.Enabled:= False;
                                      lblbtnRealizarPermuta.Enabled:= False;

                                      SubMenuModificarRegistroDeHuesped.Enabled:= False;
                                      SubMenuEliminarRegistroDeHuesped.Enabled:= False;
                                      SubMenuTrasladarRegistroDeHuesped.Enabled:= False;
                                      SubMenuPermutarRegistroDeHuesped.Enabled:= False;
                                    end;

                            if (HostalWare.CantidadDeHuespedesPorMotivoYPorPiso = 1)
                              then
                                begin
                                  //Actualizo la cantidad de huespedes (totales)
                                  lblEtiquetaTotalHuespedes.Caption:= 'TOTAL = 1 huésped';
                                end
                                  else
                                    begin
                                      //Actualizo la cantidad de huespedes (totales)
                                      lblEtiquetaTotalHuespedes.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDeHuespedesPorMotivoYPorPiso) + ' huéspedes';
                                    end;
                          end;
                end;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.cmbxFiltrarRegistrosPorPisoChange(Sender: TObject);
begin
  //Mando a actualizar los Registros de Huespedes
  ActualizarRegistros;
end;



procedure TfrmPrincipal.cmbxFiltrarRegistrosPorMotivoChange(Sender: TObject);
begin
  //Mando a actualizar los Registros de Huespedes
  ActualizarRegistros;
end;



procedure TfrmPrincipal.cmbxFiltrarRegistrosPorPisoDblClick(
  Sender: TObject);
begin
  //Pongo el ComboBox en TODOS
  cmbxFiltrarRegistrosPorPiso.ItemIndex:= 6;
end;



procedure TfrmPrincipal.cmbxFiltrarRegistrosPorMotivoDblClick(Sender: TObject);
begin
  //Pongo el ComboBox en TODOS
  cmbxFiltrarRegistrosPorMotivo.ItemIndex:= 0;
end;



procedure TfrmPrincipal.DBGridHuespedesRegistradosDblClick(
  Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Modifico el Registro de Huesped seleccionado
        ModificarRegistroDeHuesped;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.lblbtnExportarHaciaPDFReporteHuespedesRegistradosClick(
  Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Exporto hacia PDf el Reporte de Registros de Huéspedes
        ExportarHaciaPDFReporteRegistrosDeHuespedes;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.lblbtnPrevisualizarReporteHuespedesRegistradosClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Previsualizo el Reporte de Registro de Huespedes
        PrevisualizarReporteRegistrosDeHuespedes;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.lblbtnHacerTrasladoClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Hago un Traslado
        Trasladar;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;

procedure TfrmPrincipal.lblbtnRealizarPermutaClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Hago una Permuta
        Permutar;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.lblbtnExportarHaciaPDFReporteTrazasDelSistemaClick(
  Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Exporto hacia PDF el Reporte de Trazas del Sistema
        ExportarHaciaPDFReporteTrazasDelSistema;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.lblbtnPrevisualizarReporteTrazasDelSistemaClick(
  Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Previsualizo el Reporte de Trazas del Sistema
        PrevisualizarReporteTrazasDelSistema;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;

procedure TfrmPrincipal.lblbtnExportarHaciaPDFReporteCuentasDeUsuarioClick(
  Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Exporto hacia PDF el Reporte de Cuentas de Usuarios
        ExportarHaciaPDFReporteCuentasDeUsuario;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.lblbtnPrevisualizarReporteCuentasDeUsuarioClick(
  Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Previsualizo el Reporte de Cuentas de Usuarios
        PrevisualizarReporteCuentasDeUsuario;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.RvSystemHabitacionesExistentesBeforePrint(
  Sender: TObject);
begin
  with Sender as TBaseReport do
  begin
    SetPaperSize(1, 215.9, 279.4);
  end;
end;



procedure TfrmPrincipal.RvSystemHabitacionesExistentesPrint(
  Sender: TObject);
var
  Bitmap, BitmapCopyright : TBitmap;
  i: Integer;
  Altura, Ancho : Integer;
  
begin
{

  with Sender as TBaseReport do
  begin


    Bold := True;
    GotoXY(31.7, 25.4);
    //Creamos un objeto BitMap (mapa de bits, o BMP)
    Bitmap := TBitmap.Create;

    //Cargamos la imagen del Logo del CENAPET de esta forma, para que permita exportar a PDF sin alterar el directorio
    Bitmap.LoadFromFile(ExtractFilePath(Application.ExeName) + 'images\LogoCENAPET.bmp');

    //Imprimirla en el centro
    //PrintBitmap(96, 25.4, 0.85, 0.85, Bitmap);

    //Imprimirla a la izquierda
    PrintBitmap(31.7, 25.4, 0.85, 0.85, Bitmap);

    Bitmap.Free;
    //NewLine;

    ClearTabs;
    Bold := True;
    SetTab(92, pjLeft, 100, 0, 0, 0);
    NewLine;

    Bold := True;
    SetFont('Arial', 8);
    PrintTab('Calle 100 entre Perla y E, Altahabana');
    NewLine;
    PrintTab('Municipio Boyeros, La Habana, Cuba  C.P. 10 800');
    NewLine;
    PrintTab('Teléfonos 643-8782  y  643-8783   643-7489 (Dirección)');
    NewLine;
    PrintTab('Fax (537)333511  E. Mail: zaida@cenapet.sld.cu');
    NewLine;
    NewLine;

    SetFont('Arial', 11);
    Bold := True;
    PrintCenter('Centro Nacional de Perfeccionamiento Técnico y Profesional de la Salud', 105.95);
    NewLine;
    PrintCenter('"Dr. Fermín Valdés Domínguez"', 105.95);
    NewLine;
    ClearTabs;


    //Cargamos la imagen de la barrita
    Bitmap := TBitmap.Create;
    Bitmap.LoadFromFile(ExtractFilePath(Application.ExeName) + 'images\barrita.bmp');
    //Imprimirla
    //PrintBitmap(31.7, 48, 0.80, 0.80, Bitmap);    //Salía demasiado pegada a las letras
    //PrintBitmap(31.7, 50.5, 0.80, 0.80, Bitmap);    //De nuevo salía demasiado pegada a las letras
    PrintBitmap(31.7, 53, 0.80, 0.80, Bitmap);
    Bitmap.Free;

    //Configurando los titulares de la 1ra página
    SetFont('Arial', 14);
    Bold:= True;

    GotoXY(31.7, 70);
    PrintCenter('Información  sobre la capacitación y el  perfeccionamiento de', 105.95);
    NewLine;
    PrintCenter('los recursos humanos del sistema nacional de salud.', 105.95);
    NewLine;
    NewLine;

    //Ponemos el título identificador del reporte
    Bold:= True;
    PrintLeft('Provincia: ' + TempPlanilla.Provincia, 31.7);
    PrintRight('Año: ' + IntToStr(DBGridAnnoParte1PlanillasProvinciales.SelectedField.Value), 180.2);
    SetFont('Arial', 12);
    NewLine;
    NewLine;




    

    Bold:= False;
    SetFont('Arial', 12);
    PrintLeft('4.1 - Información que se solicita sobre el trabajo de las Escuelas Ramales. ', 38);
    NewLine;
    NewLine;


    ClearTabs;
    SetTab(31.7, pjLeft, 31.7, 0, 0, 0);
    SetTab(42, pjLeft, 100, 0, 0, 0);
    SetTab(105, pjCenter, 85.75, 0, 0, 0);
    SetTab(115, pjCenter, 110.25, 0, 0, 0);
    NewLine;

    Bold := True;
    PrintTab('No');
    PrintTab('Tipo de acciones de Capacitación impartidas.');
    PrintTab('Matrícula');
    PrintTab('Graduados.');
    NewLine;

    Bold := False;
    PrintTab('1');
    PrintTab('Maestrías.');
    PrintTab(IntToStr(TempPlanilla.MaestriasXMatric));
    PrintTab(IntToStr(TempPlanilla.MaestriasXGrad));
    NewLine;

    Bold := False;
    PrintTab('2');
    PrintTab('Diplomados.');
    PrintTab(IntToStr(TempPlanilla.DiplomadosXMatric));
    PrintTab(IntToStr(TempPlanilla.DiplomadosXGrad));
    NewLine;

    Bold := False;
    PrintTab('3');
    PrintTab('Cursos de Postgrados.');
    PrintTab(IntToStr(TempPlanilla.CurPostgradosXMatric));
    PrintTab(IntToStr(TempPlanilla.CurPostgradosXGrad));
    NewLine;

    Bold := False;
    PrintTab('4');
    PrintTab('Cursos de Idiomas.');
    PrintTab(IntToStr(TempPlanilla.CurIdiomasXMatric));
    PrintTab(IntToStr(TempPlanilla.CurIdiomasXGrad));
    NewLine;

    Bold := False;
    PrintTab('5');
    PrintTab('Cursos de Computación.');
    PrintTab(IntToStr(TempPlanilla.CurCompXMatric));
    PrintTab(IntToStr(TempPlanilla.CurCompXGrad));
    NewLine;

    Bold := False;
    PrintTab('6');
    PrintTab('Habilitación.');
    PrintTab(IntToStr(TempPlanilla.HabilitacionXMatric));
    PrintTab(IntToStr(TempPlanilla.HabilitacionXGrad));
    NewLine;

    Bold := False;
    PrintTab('7');
    PrintTab('Perfeccionamiento.');
    PrintTab(IntToStr(TempPlanilla.PerfecXMatric));
    PrintTab(IntToStr(TempPlanilla.PerfecXGrad));
    NewLine;

    Bold := False;
    PrintTab('8');
    PrintTab('Talleres, Seminarios y Conferencias.');
    PrintTab(IntToStr(TempPlanilla.TallSemConfXMatric));
    PrintTab(IntToStr(TempPlanilla.TallSemConfXGrad));
    NewLine;

    Bold := False;
    PrintTab(' ');
    Bold := True;
    PrintTab('TOTAL');
    PrintTab(IntToStr(TempPlanilla.TotalXMatric));
    PrintTab(IntToStr(TempPlanilla.TotalXGrad));
    NewLine;
    NewLine;
    NewLine;
    
    ClearTabs;

    Bold:= False;
    SetFont('Arial', 12);
    PrintLeft('4.2 - Valoración del trabajo desarrollado por las Escuelas Ramales: ', 38);
    NewLine;
    NewLine;

    //Debo justificar una valoración
    Bold:= False;

    //Limpio el Memo de muela de reportes
    MemoMuelaReportes.Clear;

    //Paso la info del DBMemo al Memo de muela de reportes
    MemoMuelaReportes.Text:= DBMemoValTrabDesPorEscRamalesCMG.Text;

    for i:=0 to MemoMuelaReportes.Lines.Count do
      begin
        PrintJustify(MemoMuelaReportes.Lines[i], 1.27, pjBlock, 0, 3.0);
        NewLine;
        if YPos>SectionBottom then NewPage;
      end;

      
    // ------ Aquí cambio hacia la quinta página --------
    NewPage;


    //----------------------------------------------------
    //                    Página 5
    //----------------------------------------------------
    //Configurando la 5ta página
    Bold:= True;
    GotoXY(31.7, 25.4);


    Underline:= False;
    Bold:= True;
    PrintLeft('V.	Información sobre el personal declarado no idóneo en el', 31.7);
    NewLine;
    PrintLeft('proceso de la resolución 28/06.', 36);
    Bold:= False;
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.1 - Total de trabajadores no idóneos al cierre de diciembre: ', 38);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.TotalTrabNoIdoneos), 48.5);
    NewLine;
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.2 - De ellos: ', 38);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.2.1 - Por no tener calificación formal: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoIdoneosSinCalificFormal), 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.2.2 - Por no realizar el trabajo con eficiencia, calidad y productividad: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoIdoneosSinEficiencia), 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.2.3 - Por no cumplir las normas de conducta exigidas: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoIdoneosSinBConducta), 62);
    NewLine;
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.3 - Del total de los declarados no idóneos por no tener el nivel de calificación formal', 38);
    NewLine;
    PrintLeft('exigido para el cargo que ocupan.', 48.5);
    NewLine;

    ClearTabs;
    SetTab(31.7, pjLeft, 50, 0, 0, 0);
    SetTab(44, pjLeft, 40, 0, 0, 0);
    SetTab(82, pjCenter, 40, 0, 0, 0);
    SetTab(116, pjCenter, 40, 0, 0, 0);
    SetTab(150, pjCenter, 40, 0, 0, 0);
        
    NewLine;

}


{
    Bold := True;
    PrintTab(' ');
    PrintTab(' ');
    PrintTab('Total de');
    PrintTab(' ');
    PrintTab(' ');
    NewLine;

    Bold := True;
    PrintTab(' ');
    PrintTab(' ');
    PrintTab('trabajadores');
    PrintTab(' ');
    PrintTab(' ');
    NewLine;

    Bold := True;
    PrintTab('No');
    PrintTab('Nivel a alcanzar');
    PrintTab('Total No Idóneos');
    PrintTab('Matriculados');
    PrintTab('No Matriculados');
    NewLine;
}


{
    Bold := True;
    PrintTab(' ');
    PrintTab(' ');
    PrintTab('Idóneos');
    PrintTab(' ');
    PrintTab(' ');
    NewLine;            
}

{


    Bold := False;
    PrintTab(' ');
    PrintTab(' ');
    PrintTab('I');
    PrintTab('II');
    PrintTab('III');
    NewLine;

    Bold := False;
    PrintTab('1');
    PrintTab('6to Grado');
    PrintTab(IntToStr(TempPlanilla.Grado6XTotalNoIdoneos));
    PrintTab(IntToStr(TempPlanilla.Grado6XMatric));
    PrintTab(IntToStr(TempPlanilla.Grado6XNoMatric));
    NewLine;

    Bold := False;
    PrintTab('2');
    PrintTab('9no Grado');
    PrintTab(IntToStr(TempPlanilla.Grado9XTotalNoIdoneos));
    PrintTab(IntToStr(TempPlanilla.Grado9XMatric));
    PrintTab(IntToStr(TempPlanilla.Grado9XNoMatric));
    NewLine;

    Bold := False;
    PrintTab('3');
    PrintTab('12 Grado');
    PrintTab(IntToStr(TempPlanilla.Grado12XTotalNoIdoneos));
    PrintTab(IntToStr(TempPlanilla.Grado12XMatric));
    PrintTab(IntToStr(TempPlanilla.Grado12XNoMatric));
    NewLine;

    Bold := False;
    PrintTab('4');
    PrintTab('Técnico Medio');
    PrintTab(IntToStr(TempPlanilla.TecMedioXTotalNoIdoneos));
    PrintTab(IntToStr(TempPlanilla.TecMedioXMatric));
    PrintTab(IntToStr(TempPlanilla.TecMedioXNoMatric));
    NewLine;

    Bold := False;
    PrintTab('5');
    PrintTab('Nivel Superior');
    PrintTab(IntToStr(TempPlanilla.NivSupXTotalNoIdoneos));
    PrintTab(IntToStr(TempPlanilla.NivSupXMatric));
    PrintTab(IntToStr(TempPlanilla.NivSupXNoMatric));
    NewLine;

    Bold := False;
    PrintTab('6');
    PrintTab('TOTAL');
    PrintTab(IntToStr(TempPlanilla.TotalNivelXTotalNoIdoneos));
    PrintTab(IntToStr(TempPlanilla.TotalNivelXMatric));
    PrintTab(IntToStr(TempPlanilla.TotalNivelXNoMatric));
    NewLine;
    NewLine;
    NewLine;
    
    ClearTabs;


    Underline:= False;
    Bold:= False;
    PrintLeft('5.4 - En el caso de los trabajadores declarados no idóneos por no tener la calificación', 38);
    NewLine;
    PrintLeft('formal exigida para el cago, y que no están matriculados, precisar las causas y las', 48.5);
    NewLine;
    PrintLeft('cifras, según las siguientes situaciones:', 48.5);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.4.1 - Trabajadores próximos a la edad de jubilación: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoFormalTrabProxEdadJub), 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.4.2 - Trabajadores con  problemas de salud en el momento de concretar las', 48.5);
    NewLine;
    PrintLeft('matrículas: ', 62);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoFormalTrabProblemasSalud), 62);
    NewLine;
    NewLine;

    // ------ Aquí cambio hacia la sexta página --------
    NewPage;


    //----------------------------------------------------
    //                    Página 6
    //----------------------------------------------------
    //Configurando la 6ta página
    Bold:= True;
    GotoXY(31.7, 25.4);


    Underline:= False;
    Bold:= False;
    PrintLeft('5.4.3 - Licencias por enfermedad y de maternidad: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoFormalLicEnfermedadYMaternidad), 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.4.4 - Trabajadores con problemas familiares: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoFormalTrabProblemasFamiliares), 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.4.5 - No disponibilidad de matrícula por el MINED de las especialidades', 48.5);
    NewLine;
    PrintLeft('requeridas: ', 62);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoFormalNoDisponibMatricXMINED), 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.4.6 - No disponibilidad de matrícula por el MES (SUM) de las especialidades', 48.5);
    NewLine;
    PrintLeft('requeridas: ', 62);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoFormalNoDisponibMatricXMES), 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.4.7 - Limitaciones de matrículas para el nivel superior, debido a que existen', 48.5);
    NewLine;
    PrintLeft('organismos que no están priorizados en las Sedes Universitarias', 62);
    NewLine;
    PrintLeft('Municipales (SUM): ', 62);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoFormalLimMatricNivSup), 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.4.8 - Imposibilidad de las entidades para abrir aulas propias por limitaciones', 48.5);
    NewLine;
    PrintLeft('materiales y de personal docente: ', 62);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoFormalImposibEntidAbrirAulas), 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.4.9 - Trabajadores que no han logrado acreditar aún el nivel de calificación', 48.5);
    NewLine;
    PrintLeft('formal que poseen: ', 62);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoFormalTrabNoAcredit), 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.4.10 - Trabajadores que laboran en turnos rotativos o jornadas irregulares: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoFormalTrabTurnosRotativos), 65);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.4.11 - Trabajadores que se niegan a incorporarse al estudio a pesar de', 48.5);
    NewLine;
    PrintLeft('haber firmado el acta de compromiso: ', 65);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoFormalTrabNieganIncorp), 65);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.4.12 - Movilizados en la construcción de viviendas por medios propios: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoFormalMovilConstruc), 65);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.4.13 - Otras causas: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoFormalOtrasCausas), 65);
    NewLine;
    NewLine;
    NewLine;


    // ------ Aquí cambio hacia la séptima página --------
    NewPage;


    //----------------------------------------------------
    //                    Página 7
    //----------------------------------------------------
    //Configurando la 7ma página
    Bold:= True;
    GotoXY(31.7, 25.4);


    Underline:= False;
    Bold:= False;
    PrintLeft('5.5 - Explicar de los no matriculados para alcanzar el requisito de calificación formal', 38);
    NewLine;
    PrintLeft('requerido los cargos con cifras más significativas así como aquellos donde se', 48.5);
    NewLine;
    PrintLeft('considera que no existe correspondencia entre el nivel de calificación formal', 48.5);
    NewLine;
    PrintLeft('exigido y las funciones que se realizan en el cargo y que producto de ello son declarados', 48.5);
    NewLine;
    PrintLeft('No Idóneos.', 48.5);        
    NewLine;
    NewLine;    

    //Debo justificar una explicación
    Bold:= False;

    //Limpio el Memo de muela de reportes
    MemoMuelaReportes.Clear;

    //Paso la info del DBMemo al Memo de muela de reportes
    MemoMuelaReportes.Text:= DBMemoExplicNoMatric.Text;

    for i:=0 to MemoMuelaReportes.Lines.Count do
      begin
        PrintJustify(MemoMuelaReportes.Lines[i], 1.27, pjBlock, 0, 3.0);
        NewLine;
        if YPos>SectionBottom then NewPage;
      end;
    NewLine;


    Underline:= False;
    Bold:= False;
    PrintLeft('5.6 - De los declarados no idóneos por no realizar el trabajo con eficiencia, calidad', 38);
    NewLine;
    PrintLeft('y productividad para el cargo que ocupan: ', 48.5);
    NewLine;
    NewLine;

    Bold:= True;
    ClearTabs;
    SetTab(31.7, pjLeft, 50, 0, 0, 0);
    SetTab(44, pjLeft, 45, 0, 0, 0);
    SetTab(86, pjCenter, 40, 0, 0, 0);
    SetTab(118, pjCenter, 40, 0, 0, 0);
    SetTab(150, pjCenter, 40, 0, 0, 0);

    Bold := True;
    PrintTab(' ');
    PrintTab('Acciones a');
    PrintTab('Total de');
    PrintTab(' ');
    PrintTab('No');
    NewLine;

    Bold := True;
    PrintTab('No.');
    PrintTab('desarrollar');
    PrintTab('No Idóneos');
    PrintTab('Matriculados');
    PrintTab('Matriculados');
    NewLine;

    Bold := False;
    PrintTab(' ');
    PrintTab(' ');
    PrintTab('I');
    PrintTab('II');
    PrintTab('III');
    NewLine;

    Bold := False;
    PrintTab('1');
    PrintTab('Cursos de habilitación');
    PrintTab(IntToStr(TempPlanilla.CurHabilXTotalNoIdoneos));
    PrintTab(IntToStr(TempPlanilla.CurHabilXMatric));
    PrintTab(IntToStr(TempPlanilla.CurHabilXNoMatric));
    NewLine;

    Bold := False;
    PrintTab('2');
    PrintTab('Entrenamiento');
    PrintTab(IntToStr(TempPlanilla.EntrenamientoXTotalNoIdoneos));
    PrintTab(IntToStr(TempPlanilla.EntrenamientoXMatric));
    PrintTab(IntToStr(TempPlanilla.EntrenamientoXNoMatric));
    NewLine;

    Bold := False;
    PrintTab('3');
    PrintTab('TOTAL');
    PrintTab(IntToStr(TempPlanilla.TotalNoIdoneosXTotalNoIdoneos));
    PrintTab(IntToStr(TempPlanilla.TotalNoIdoneosXMatric));
    PrintTab(IntToStr(TempPlanilla.TotalNoIdoneosXNoMatric));
    NewLine;
    NewLine;
    NewLine;

    ClearTabs;



    Underline:= False;
    Bold:= False;
    PrintLeft('5.7 - En el caso de los trabajadores declarados no idóneos por no realizar el trabajo', 38);
    NewLine;
    PrintLeft('con eficiencia, calidad y productividad, y que no se encuentran matriculados para', 48.5);
    NewLine;
    PrintLeft('alcanzar el requisito, precisar las causas y las cifras según las siguientes', 48.5);
    NewLine;
    PrintLeft('situaciones:', 48.5);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.7.1 - Trabajadores próximos a la edad de jubilación: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoEficTrabProxEdadJub), 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.7.2 - Trabajadores con  problemas de salud en el momento de concretar las', 48.5);
    NewLine;
    PrintLeft('matrículas: ', 62);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoEficTrabProblemasSalud), 62);
    NewLine;
    NewLine;


    // ------ Aquí cambio hacia la octava página --------
    NewPage;

    //----------------------------------------------------
    //                    Página 8
    //----------------------------------------------------
    //Configurando la 8va página
    Bold:= True;
    GotoXY(31.7, 25.4);


    Underline:= False;
    Bold:= False;
    PrintLeft('5.7.3 - Licencias por enfermedad y de maternidad: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoEficLicEnfermedadYMaternidad), 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.7.4 - Trabajadores con problemas familiares: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoEficTrabProblemasFamiliares), 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.7.5 - Trabajadores que laboran en turnos rotativos o jornadas irregulares: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoEficTrabTurnosRotativos), 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.7.6 - Trabajadores que se niegan a incorporarse al estudio a pesar de haber: ', 48.5);
    NewLine;
    PrintLeft('firmado el acta de compromiso: ', 62);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoEficTrabNieganIncorp), 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.7.7 - Movilizados en la construcción de viviendas por medios propios: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoEficMovilConstruc), 62);
    NewLine;
    NewLine;

    Underline:= False;
    Bold:= False;
    PrintLeft('5.7.8 - Otras causas: ', 48.5);
    NewLine;

    Underline:= True;
    Bold:= True;
    PrintLeft(IntToStr(TempPlanilla.NoEficOtrasCausas), 62);
    NewLine;
    NewLine;
    NewLine;


    Underline:= False;
    Bold:= False;
    PrintLeft('5.8 -	De los declarados no idóneos por no cumplir las normas de conducta y', 38);
    NewLine;
    PrintLeft('disciplina exigidas exigidos: ', 48.5);
    NewLine;
    NewLine;


    Bold:= True;
    ClearTabs;
    SetTab(40, pjLeft, 50, 0, 0, 0);
    SetTab(65, pjCenter, 45, 0, 0, 0);
    SetTab(140, pjCenter, 40, 0, 0, 0);

    Bold := True;
    PrintTab(' ');
    PrintTab('Pendiente de');
    PrintTab(' ');
    NewLine;

    Bold := True;
    PrintTab('No.');
    PrintTab('alcanzar el requisito');
    PrintTab('Causas');
    NewLine;

    Bold := False;
    PrintTab('1');
    PrintTab(IntToStr(TempPlanilla.Casilla1XPendiente));
    PrintTab(TempPlanilla.Casilla1XCausas);
    NewLine;

    Bold := False;
    PrintTab('2');
    PrintTab(IntToStr(TempPlanilla.Casilla2XPendiente));
    PrintTab(TempPlanilla.Casilla2XCausas);
    NewLine;

    Bold := False;
    PrintTab('TOTAL');
    PrintTab(IntToStr(TempPlanilla.TotalXPendiente));
    PrintTab(TempPlanilla.TotalXCausas);
    NewLine;
    NewLine;
    NewLine;

    ClearTabs;

    

    // ------ Aquí cambio hacia la novena página --------
    NewPage;

    //----------------------------------------------------
    //                    Página 9
    //----------------------------------------------------
    //Configurando la 9na página
    Bold:= True;
    GotoXY(31.7, 25.4);

    Underline:= False;
    Bold:= True;
    PrintLeft('VI.	Valoración cualitativa del proceso de capacitación y desarrollo en el ', 31.7);
    NewLine;
    PrintLeft('organismo, entidades nacionales y consejos de la administración ', 38);
    NewLine;
    PrintLeft('provincial (logros, deficiencias y resultados relevantes).', 38);
    NewLine;
    NewLine;

    //Debo justificar una valoración
    Bold:= False;

    //Limpio el Memo de muela de reportes
    MemoMuelaReportes.Clear;

    //Paso la info del DBMemo al Memo de muela de reportes
    MemoMuelaReportes.Text:= DBMemoValoracionCualitativaDelProcesoCapacCMG.Text;

    for i:=0 to MemoMuelaReportes.Lines.Count do
      begin
        PrintJustify(MemoMuelaReportes.Lines[i], 1.27, pjBlock, 0, 3.0);
        NewLine;
        if YPos>SectionBottom then NewPage;
      end;
      
    //Fin del reporte.
  end;























    Bold := True;
    GotoXY(31.7, 25.4);
    //Creamos un objeto BitMap (mapa de bits, o BMP)
    Bitmap := TBitmap.Create;

    //Cargamos la imagen del Logo del CENAPET de esta forma, para que permita exportar a PDF sin alterar el directorio
    Bitmap.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Images\LogoCENAPET.bmp');

    //Imprimirla en el centro
    //PrintBitmap(96, 25.4, 0.85, 0.85, Bitmap);

    //Imprimirla a la izquierda
    //PrintBitmap(31.7, 25.4, 0.30, 0.30, Bitmap);  //Quise moverlo a la derecha un poco
    PrintBitmap(45, 25.4, 0.30, 0.30, Bitmap);

    Bitmap.Free;
    //NewLine;

    ClearTabs;
    Bold := True;
    SetTab(75, pjLeft, 100, 0, 0, 0);
    NewLine;
    
    Bold := True;
    SetFont('Arial', 8);
    PrintTab('Calle 100 entre Perla y E Altahabana');
    NewLine;
    PrintTab('Municipio Boyeros, La Habana, Cuba, C.P. 10 800');
    NewLine;
    PrintTab('Teléfonos 643-8782, 643-8783 y 644-7489 (Dirección)');
    NewLine;
    PrintTab('Fax: (537) 333511 Email: zaida@cenapet.sld.cu');
    NewLine;
    NewLine;

    SetFont('Arial', 12);
    Bold := True;
    PrintCenter('Sistema de Hospedaje Automatizado', 105.95);
    NewLine;
    PrintCenter('HostalWare ©', 105.95);
    NewLine;
    NewLine;
    ClearTabs;


    //Cargamos la imagen de la barrita
    Bitmap := TBitmap.Create;
    Bitmap.LoadFromFile(ExtractFilePath(Application.ExeName) + 'Images\barrita.bmp');
    //Imprimirla
    PrintBitmap(31.7, 58, 0.80, 0.80, Bitmap);
    Bitmap.Free;

    //Configurando los titulares de la 1ra página
    SetFont('Arial', 14);
    Bold:= True;

    GotoXY(31.7, 70);
    //Ponemos el título identificador del reporte
    SetFont('Arial', 12);
    Bold:= True;




    if (ComboBoxFiltroParaHabitaciones.Text = 'TODOS')
      then
        begin 
          if (ComboBoxFiltroPorCapacidad.Text = 'TODOS')
            then
              begin //Todos los cuartos, de cualquier capacidad
                //Defino el encabezamiento
                PrintLeft('Reporte de todas las habitaciones existentes en el centro.', 31.7);
                PrintRight('Emitido el: ' + ObtenerFechaDelSistema, 190);
                NewLine;
                NewLine;
                NewLine;
                NewLine;


                //Especifico los DataSet de los componentes DB del QuickReport
                QuickReportHabitacionesExistentes.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones;

                QuickReportHabitacionesExistentes.QRDBtxtNumeroHabitacion.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones;
                QuickReportHabitacionesExistentes.QRDBtxtVentiladores.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones;
                QuickReportHabitacionesExistentes.QRDBtxtArmario.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones;
                QuickReportHabitacionesExistentes.QRDBtxtCloset.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones;
                QuickReportHabitacionesExistentes.QRDBtxtEspejo.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones;
                QuickReportHabitacionesExistentes.QRDBtxtMesitasNoche.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones;
                QuickReportHabitacionesExistentes.QRDBtxtAireAcondicionado.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones;
                QuickReportHabitacionesExistentes.QRDBtxtAguaCaliente.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones;
                QuickReportHabitacionesExistentes.QRDBtxtTelefonoInterno.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones;
                QuickReportHabitacionesExistentes.QRDBtxtTelefonoDirecto.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones;

                //Conformo los captions del QuickReport
                QuickReportHabitacionesExistentes.QRlblReferente.Caption:= 'Reporte de todas las habitaciones existentes en el centro.';
                QuickReportHabitacionesExistentes.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                //Actualizo y muestro las capacidades

              end
                else
                  begin  //Todos los cuartos, de una capacidad especifica
                    if (ComboBoxFiltroPorCapacidad.Text = 'Con Vacantes')
                      then
                        begin //Todos los cuartos, con vacantes
                          //Especifico los DataSet de los componentes DB del QuickReport
                          QuickReportHabitacionesExistentes.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes;

                          QuickReportHabitacionesExistentes.QRDBtxtNumeroHabitacion.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes;
                          QuickReportHabitacionesExistentes.QRDBtxtVentiladores.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes;
                          QuickReportHabitacionesExistentes.QRDBtxtArmario.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes;
                          QuickReportHabitacionesExistentes.QRDBtxtCloset.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes;
                          QuickReportHabitacionesExistentes.QRDBtxtEspejo.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes;
                          QuickReportHabitacionesExistentes.QRDBtxtMesitasNoche.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes;
                          QuickReportHabitacionesExistentes.QRDBtxtAireAcondicionado.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes;
                          QuickReportHabitacionesExistentes.QRDBtxtAguaCaliente.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes;
                          QuickReportHabitacionesExistentes.QRDBtxtTelefonoInterno.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes;
                          QuickReportHabitacionesExistentes.QRDBtxtTelefonoDirecto.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes;

                          //Conformo los captions del QuickReport
                          QuickReportHabitacionesExistentes.QRlblReferente.Caption:= 'Reporte de todas las habitaciones con vacantes.';
                          QuickReportHabitacionesExistentes.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                          //Actualizo y muestro las capacidades
                          //ActualizarCapacidades;
                        end
                          else
                            begin
                              if (ComboBoxFiltroPorCapacidad.Text = 'Sin Vacantes')
                                then
                                  begin //Todos los cuartos, sin vacantes
                                    //Especifico los DataSet de los componentes DB del QuickReport
                                    QuickReportHabitacionesExistentes.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes;

                                    QuickReportHabitacionesExistentes.QRDBtxtNumeroHabitacion.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes;
                                    QuickReportHabitacionesExistentes.QRDBtxtVentiladores.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes;
                                    QuickReportHabitacionesExistentes.QRDBtxtArmario.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes;
                                    QuickReportHabitacionesExistentes.QRDBtxtCloset.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes;
                                    QuickReportHabitacionesExistentes.QRDBtxtEspejo.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes;
                                    QuickReportHabitacionesExistentes.QRDBtxtMesitasNoche.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes;
                                    QuickReportHabitacionesExistentes.QRDBtxtAireAcondicionado.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes;
                                    QuickReportHabitacionesExistentes.QRDBtxtAguaCaliente.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes;
                                    QuickReportHabitacionesExistentes.QRDBtxtTelefonoInterno.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes;
                                    QuickReportHabitacionesExistentes.QRDBtxtTelefonoDirecto.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes;

                                    //Conformo los captions del QuickReport
                                    QuickReportHabitacionesExistentes.QRlblReferente.Caption:= 'Reporte de todas las habitaciones sin vacantes.';
                                    QuickReportHabitacionesExistentes.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                                    //Actualizo y muestro las capacidades
                                    //ActualizarCapacidades;
                                  end;
                            end;
                  end;
        end
          else
            begin
              if (ComboBoxFiltroPorCapacidad.Text = 'TODOS')
                then
                  begin  //Un piso en especifico, de cualquier capacidad
                    //Especifico los DataSet de los componentes DB del QuickReport
                    QuickReportHabitacionesExistentes.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;

                    QuickReportHabitacionesExistentes.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;
                    QuickReportHabitacionesExistentes.QRDBtxtNumeroHabitacion.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;
                    QuickReportHabitacionesExistentes.QRDBtxtVentiladores.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;
                    QuickReportHabitacionesExistentes.QRDBtxtArmario.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;
                    QuickReportHabitacionesExistentes.QRDBtxtCloset.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;
                    QuickReportHabitacionesExistentes.QRDBtxtEspejo.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;
                    QuickReportHabitacionesExistentes.QRDBtxtMesitasNoche.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;
                    QuickReportHabitacionesExistentes.QRDBtxtAireAcondicionado.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;
                    QuickReportHabitacionesExistentes.QRDBtxtAguaCaliente.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;
                    QuickReportHabitacionesExistentes.QRDBtxtTelefonoInterno.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;
                    QuickReportHabitacionesExistentes.QRDBtxtTelefonoDirecto.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;

                    //Conformo los captions del QuickReport
                    QuickReportHabitacionesExistentes.QRlblReferente.Caption:= 'Reporte de las habitaciones del ' + ComboBoxFiltroParaHabitaciones.Text + '.';
                    QuickReportHabitacionesExistentes.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                    //Actualizo y muestro las capacidades
                    //ActualizarCapacidades;
                  end
                    else
                      begin  //Un piso en especifico de una capacidad especifica
                        if (ComboBoxFiltroPorCapacidad.Text = 'Con Vacantes')
                          then
                            begin //Un piso en especifico, con vacantes
                              //Especifico los DataSet de los componentes DB del QuickReport
                              QuickReportHabitacionesExistentes.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes;

                              QuickReportHabitacionesExistentes.QRDBtxtNumeroHabitacion.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes;
                              QuickReportHabitacionesExistentes.QRDBtxtVentiladores.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes;
                              QuickReportHabitacionesExistentes.QRDBtxtArmario.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes;
                              QuickReportHabitacionesExistentes.QRDBtxtCloset.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes;
                              QuickReportHabitacionesExistentes.QRDBtxtEspejo.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes;
                              QuickReportHabitacionesExistentes.QRDBtxtMesitasNoche.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes;
                              QuickReportHabitacionesExistentes.QRDBtxtAireAcondicionado.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes;
                              QuickReportHabitacionesExistentes.QRDBtxtAguaCaliente.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes;
                              QuickReportHabitacionesExistentes.QRDBtxtTelefonoInterno.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes;
                              QuickReportHabitacionesExistentes.QRDBtxtTelefonoDirecto.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes;

                              //Conformo los captions del QuickReport
                              QuickReportHabitacionesExistentes.QRlblReferente.Caption:= 'Reporte de las habitaciones con vacantes en el ' + ComboBoxFiltroParaHabitaciones.Text + '.';
                              QuickReportHabitacionesExistentes.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                              //Actualizo y muestro las capacidades
                              //ActualizarCapacidades;
                            end
                              else
                                begin
                                  if (ComboBoxFiltroPorCapacidad.Text = 'Sin Vacantes')
                                    then
                                      begin //Un piso en especifico, sin vacantes
                                        //Especifico los DataSet de los componentes DB del QuickReport
                                        QuickReportHabitacionesExistentes.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes;

                                        QuickReportHabitacionesExistentes.QRDBtxtNumeroHabitacion.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes;
                                        QuickReportHabitacionesExistentes.QRDBtxtVentiladores.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes;
                                        QuickReportHabitacionesExistentes.QRDBtxtArmario.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes;
                                        QuickReportHabitacionesExistentes.QRDBtxtCloset.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes;
                                        QuickReportHabitacionesExistentes.QRDBtxtEspejo.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes;
                                        QuickReportHabitacionesExistentes.QRDBtxtMesitasNoche.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes;
                                        QuickReportHabitacionesExistentes.QRDBtxtAireAcondicionado.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes;
                                        QuickReportHabitacionesExistentes.QRDBtxtAguaCaliente.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes;
                                        QuickReportHabitacionesExistentes.QRDBtxtTelefonoInterno.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes;
                                        QuickReportHabitacionesExistentes.QRDBtxtTelefonoDirecto.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes;

                                        //Conformo los captions del QuickReport
                                        QuickReportHabitacionesExistentes.QRlblReferente.Caption:= 'Reporte de las habitaciones sin vacantes en el ' + ComboBoxFiltroParaHabitaciones.Text + '.';
                                        QuickReportHabitacionesExistentes.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                                        //Actualizo y muestro las capacidades
                                        //ActualizarCapacidades;
                                      end;
                                end;
                      end;
            end;









    


    //Borro la imagen temporal del reporte (no encriptada)
    DeleteFile(ExtractFilePath(Application.ExeName) + 'TempFiles\ReportTempFiles\ReportBMP.bmp');



    //** Ahora debo trasladarme a una posicion posterior a la del bitmap cargado **
    //Primero calculo las dimensiones de la imagen
    //Altura:= ATImageBoxOriginalColorRealSimulacionImagenes.Image.Height;
    //Ancho:= ATImageBoxOriginalColorRealSimulacionImagenes.Image.Width;


    //Debo justificar los comentarios
    Bold:= False;
}

    
{
    //Verifico el tamaño de los comentarios
    if (MemoMuelaSimulacionImagenes.Lines.Count > 6)
      then
        begin
          //Voy a la pagina siguiente
          NewPage;

          GotoXY(31.7, 25.4);

          //Ahora debo cargar los comentarios
          Underline:= False;
          SetFont('Arial', 12);
          Bold:= True;
          PrintLeft('Comentarios :', 31.7);
          SetFont('Arial', 12);
          Bold:= False;
          NewLine;
          NewLine;

          //Muestro los comentarios
          for i:=0 to MemoMuelaSimulacionImagenes.Lines.Count do
            begin
              PrintJustify(MemoMuelaSimulacionImagenes.Lines[i], 1.27, pjBlock, 0, 3.0);
              NewLine;
              if YPos>SectionBottom
                then
                  NewPage;
            end;
        end
          else
            begin
              GotoXY(31.7, 220);

              //Ahora debo cargar los comentarios
              Underline:= False;
              SetFont('Arial', 12);
              Bold:= True;
              PrintLeft('Comentarios :', 31.7);
              SetFont('Arial', 12);
              Bold:= False;
              NewLine;
              NewLine;
              
              //Muestro los comentarios
              for i:=0 to MemoMuelaSimulacionImagenes.Lines.Count do
                begin
                  PrintJustify(MemoMuelaSimulacionImagenes.Lines[i], 1.27, pjBlock, 0, 3.0);
                  NewLine;
                  if YPos>SectionBottom
                    then
                      NewPage;
                end;
            end;

    //Fin del reporte.
  end;
}
end;



procedure TfrmPrincipal.barbtnAcercaDeClick(Sender: TObject);
begin
  frmAcercaDe.Position:= poDesktopCenter;
  PlaySound(pChar('SYSTEMEXCLAMATION'), 0, SND_ASYNC);
  frmAcercaDe.ShowModal;
end;



procedure TfrmPrincipal.SubMenuAcercaDeHostalWareClick(Sender: TObject);
begin
  //Ejecuto el BarButton de 'Acerca de HostalWare'
  barbtnAcercaDe.Click;
end;



procedure TfrmPrincipal.barbtnTemasDeAyudaClick(Sender: TObject);
begin
  //Muestro la ayuda general del sistema HostalWare
  MostrarAyudaGeneralDelSistema;
end;



procedure TfrmPrincipal.barbtnSalvarBaseDeDatosClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Ejecuto el procedimiento de Salvar Base de Datos
        SalvarBaseDeDatosHostalWare;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SubMenuSalvarBaseDeDatosClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Ejecuto el procedimiento de Salvar Base de Datos
        SalvarBaseDeDatosHostalWare;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.barbtnDesconectarClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Ejecuto el procedimiento de Desconectar el Sistema
        DesconectarElSistema;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SubMenuDesconectarClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Ejecuto el procedimiento de Desconectar el Sistema
        DesconectarElSistema;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SubMenuVerReporteCuentasDeUsuarioClick(
  Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Previsualizo el Reporte de Cuentas de Usuarios
        PrevisualizarReporteCuentasDeUsuario;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SubMenuReporteTrazasDelSistemaClick(
  Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Previsualizo el Reporte de Trazas del Sistema
        PrevisualizarReporteTrazasDelSistema;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SubMenuVerDetallesDeTrazaClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Detallo la Traza del Sistema
        DetallarTrazaDelSistema;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SubMenuVerReporteRegistroDeHuespedClick(
  Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Previsualizo el Reporte de Registro de Huespedes
        PrevisualizarReporteRegistrosDeHuespedes;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SubMenuVerReporteHabitacionesClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Previsualizo el Reporte de Habitaciones
        PrevisualizarReporteHabitaciones;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SubMenuVerReporteCamasClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Previsualizo el Reporte de Camas Existentes
        PrevisualizarReporteCamasExistentes;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SubMenuVerReporteReservacionesClick(
  Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Previsualizo el Reporte de Reservaciones
        PrevisualizarReporteReservaciones;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SubMenuAgregarCuentaDeUsuarioClick(
  Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Agrego una nueva Cuenta de Usuario
        AgregarCuentaDeUsuario;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SubMenuModificarCuentaDeUsuarioClick(
  Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Modifico la Cuenta de Usuario seleccionada
        ModificarCuentaDeUsuario;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SubMenuEliminarCuentaDeUsuarioClick(
  Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Elimino la Cuenta de Usuario seleccionada
        EliminarCuentaDeUsuario;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SubMenuAgregarRegistroDeHuespedClick(
  Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Agrego un nuevo Registro de Huesped
        AgregarRegistroDeHuesped;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SubMenuModificarRegistroDeHuespedClick(
  Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Modifico el Registro de Huesped seleccionado
        ModificarRegistroDeHuesped;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SubMenuEliminarRegistroDeHuespedClick(
  Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Elimino el Registro de Huesped seleccionado
        EliminarRegistroDeHuesped;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SubMenuTrasladarRegistroDeHuespedClick(
  Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Hago un Traslado
        Trasladar;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SubMenuPermutarRegistroDeHuespedClick(
  Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Hago una Permuta
        Permutar;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SubMenuAgregarHabitacionClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Agrego una Habitacion
        AgregarHabitacion;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SubMenuModificarHabitacionClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Modifico la Habitacion seleccionada
        ModificarHabitacion;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SubMenuEliminarHabitacionClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Elimino la Habitacion seleccionada
        EliminarHabitacion;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SubMenuAgregarReservacionClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Agrego una nueva Reservacion
        AgregarReservacion;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SubMenuModificarReservacionClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Modifico la Reservacion seleccionada
        ModificarReservacion;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SubMenuEliminarReservacionClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Elimino la Reservacion seleccionada
        EliminarReservacion;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SubMenuExportarReporteCuentasDeUsuarioClick(
  Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Exporto hacia PDF el Reporte de Cuentas de Usuarios
        ExportarHaciaPDFReporteCuentasDeUsuario;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SubMenuExportarReporteTrazasDelSistemaClick(
  Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Exporto hacia PDF el Reporte de Trazas del Sistema
        ExportarHaciaPDFReporteTrazasDelSistema;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SubMenuExportarReporteRegistroDeHuespedesClick(
  Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Exporto hacia PDF el Reporte de Registros de Huéspedes
        ExportarHaciaPDFReporteRegistrosDeHuespedes;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SubMenuExportarReporteHabitacionesClick(
  Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Exporto hacia PDF el Reporte de Habitaciones
        ExportarHaciaPDFReporteHabitaciones;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SubMenuExportarReporteCamasExistentesClick(
  Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Exporto hacia PDF el Reporte de Camas Existentes
        ExportarHaciaPDFReporteCamasExistentes;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SubMenuExportarReporteReservacionesClick(
  Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Exporto hacia PDF el Reporte de Reservaciones
        ExportarHaciaPDFReporteReservaciones;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SubMenuImprimirReporteCuentasDeUsuarioClick(
  Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Imprimo el Reporte de Cuentas de Usuarios
        ImprimirReporteCuentasDeUsuario;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SubMenuImprimirReporteTrazasDelSistemaClick(
  Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Imprimo el Reporte de Trazas del Sistema
        ImprimirReporteTrazasDelSistema;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SubMenuImprimirReporteRegistroDeHuespedesClick(
  Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Imprimo el Reporte de Registros de Huéspedes
        ImprimirReporteRegistrosDeHuespedes;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SubMenuImprimirReporteHabitacionesClick(
  Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Imprimo el Reporte de Habitaciones
        ImprimirReporteHabitaciones;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SubMenuImprimirReporteCamasExistentesClick(
  Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Imprimo el Reporte de Camas Existentes
        ImprimirReporteCamasExistentes;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SubMenuImprimirReporteReservacionesClick(
  Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Imprimo el Reporte de Reservaciones
        ImprimirReporteReservaciones;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SubMenuRestaurarBaseDeDatosClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Ejecuto el procedimiento de Restaurar Base de Datos
        RestaurarBaseDeDatosHostalWare;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.barbtnRestaurarBaseDeDatosClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Ejecuto el procedimiento de Restaurar Base de Datos
        RestaurarBaseDeDatosHostalWare;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SalvarBaseDeDatosHostalWare;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        if (SaveDialogHostalWare.Execute)
          then
            begin
              //Guardo la traza
              HostalWare.GuardarTrazaDelSistema('Realizó una salva de la DB, hacia un fichero de nombre ' + ExtractFileName(SaveDialogHostalWare.FileName));

              //Actualizo las Trazas del Sistema
              HostalWare.MostrarTodasLasTrazas;
              
              //Salvo la base de datos en forma de fichero
              //HostalWare.SalvarBaseDeDatosHostalWare(QuotedStr(   SaveDialogHostalWare.FileName + '.BAK'   ));
              HostalWare.SalvarBaseDeDatosHostalWare(SaveDialogHostalWare.FileName + '.HBK'   );
            end;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.RestaurarBaseDeDatosHostalWare;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        if (OpenDialogHostalWare.Execute)
          then
            begin
              //Restauro la base de datos, desde un fichero *.HBK (EXPERIMENTAL!!!!)
              HostalWare.RestaurarBaseDeDatosHostalWare(OpenDialogHostalWare.FileName);

              //Guardo la traza
              HostalWare.GuardarTrazaDelSistema('Realizó una restauración de la DB, desde un fichero de nombre ' + ExtractFileName(OpenDialogHostalWare.FileName) + '.HBK');

              //Actualizo las Trazas del Sistema
              HostalWare.MostrarTodasLasTrazas;              
            end;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.DesconectarElSistema;
begin
  //Inserto la Traza
  HostalWare.GuardarTrazaDelSistema('Salió del sistema HostalWare');

  //Desloggeo al usuario
  HostalWare.DesloggearAlUsuario;

  //Me desconecto de la BD
  HostalWare.EliminarConexionConLaBD;

  //Material agregado
  if (HostalWare.ExisteConexionConLaBD = False)
    then
      begin
        //Desabilito las opciones de Desconectar el Sistema
        //barbtnDesconectar.Enabled:= False;
        //SubMenuDesconectar.Enabled:= False;

        //Cambio hacia la forma de loggin inicial
        frmPrincipal.Hide;
        frmValidacionPuestoDeTrabajo.ShowModal;



        //Material agregado, cuando se vuelve a entrar al sistema desde la forma de loggin inicial
        if (HostalWare.ExisteConexionConLaBD = True)
          then
            begin
              //Verifico de nuevo la conexión, por si se canceló el Loggeo
              if (HostalWare.ExisteConexionConLaBD)
                then
                  begin
                    //Especifico que ya no es la primera vez que se entra
                    VecesEntrando:= VecesEntrando + 1;
              
                    //Muestro la forma principal
                    frmPrincipal.Show;
              
                    //Inserto la Traza
                    HostalWare.GuardarTrazaDelSistema('Entró al sistema HostalWare');

                    //Muestro los datos en el DBGrid del Módulo de Puestos de Trabajo
                    HostalWare.MostrarPuestosDeTrabajo;

                    //Actualizo todas las trazas
                    HostalWare.MostrarTodasLasTrazas;

                    //Mando a actualizar los Registros de Huespedes
                    ActualizarRegistros;

                    //Mando a mostrar y actualizar las Capacidades
                    ActualizarCapacidades;

                    //Mando a mostrar y actualizar las alertas

                    //Mando a mostrar y actualizar las Reservaciones


                    //Decido qué componentes mostrar en dependencia de los privilegios del Loggeado
                    if ( HostalWare.ElTrabajadorEsAdministrador = False)
                      then
                        begin //Se trata de un Operador
                          //Oculto la pestaña de Control del Sistema
                          AdvTabSheetControlDelSistema.TabVisible:= False;
                        end
                          else
                            begin //Se trata de un Administrador
                              //Muestro la pestaña de Control del Sistema
                              AdvTabSheetControlDelSistema.TabVisible:= True;
                            end;

                  end;//Fin de la segunda verificación de conexión, por posible cancelación de Loggeo
            end
              else
                begin
                  MessageDlg('No se pudo establecer conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión, o cierre el sistema.', mtError, [mbOk], 0);
                end;
      end;
end;



procedure TfrmPrincipal.PrevisualizarReporteAlertas;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //*** Usando QuickReport ***
        //Relleno los valores adicionales en el reporte
        //Especifico los DataSet de los componentes DB del QuickReport
        QuickReportAlertasDelSistema.DataSet:= DataModuleAlertasDelSistema.spSelecTodasLasAlertasDelSistema;

        QuickReportAlertasDelSistema.QRDBtxtMotivoDeAlerta.DataSet:= DataModuleAlertasDelSistema.spSelecTodasLasAlertasDelSistema;
        QuickReportAlertasDelSistema.QRDBtxtDescripcionDeAlerta.DataSet:= DataModuleAlertasDelSistema.spSelecTodasLasAlertasDelSistema;

        //Conformo los captions del QuickReport
        QuickReportAlertasDelSistema.QRlblReferente.Caption:= 'Reporte de las Alertas del Sistema.';
        QuickReportAlertasDelSistema.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

        //Actualizo y muestro las alertas
        ActualizarAlertasDelSistema;

        //Envio datos adicionales para el Preview
        frmPreviewReporteAlertasDelSistema.IdiomaImperante:= IdiomaImperante;
        frmPreviewReporteAlertasDelSistema.FechaDelSistema:= ObtenerFechaDelSistema;

        //Muestro el reporte (Quick Report, vista previa)
        QuickReportAlertasDelSistema.PreviewModal;

        QuickReportAlertasDelSistema.QRImageLogo.Refresh;

        //Actualizo y muestro las alertas
        ActualizarAlertasDelSistema;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.PrevisualizarReporteCamasExistentes;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //*** Usando QuickReport ***
        //Relleno los valores adicionales en el reporte
        //Especifico los DataSet de los componentes DB del QuickReport
        QuickReportCamasExistentes.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecCamasPorID_Habitacion;

        QuickReportCamasExistentes.QRDBtxtNumeroSerie.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecCamasPorID_Habitacion;
        QuickReportCamasExistentes.QRDBtxtTipoCama.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecCamasPorID_Habitacion;
        QuickReportCamasExistentes.QRDBtxtEstadoOcupacional.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecCamasPorID_Habitacion;

        //Conformo los captions del QuickReport
        QuickReportCamasExistentes.QRlblReferente.Caption:= 'Reporte de las camas existentes en la habitación ' + DBGridHabitacionesExistentes.SelectedField.Text + '.';
        QuickReportCamasExistentes.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

        //Actualizo y muestro las camas
        ActualizarSoloCamas;

        //Envio datos adicionales para el Preview
        frmPreviewReporteCamasExistentes.IdiomaImperante:= IdiomaImperante;
        frmPreviewReporteCamasExistentes.FechaDelSistema:= ObtenerFechaDelSistema;

        //Muestro el reporte (Quick Report, vista previa)
        QuickReportCamasExistentes.PreviewModal;

        QuickReportCamasExistentes.QRImageLogo.Refresh;

        //Actualizo y muestro las camas
        ActualizarSoloCamas;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.PrevisualizarReporteCuentasDeUsuario;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //*** Usando QuickReport ***
        //Relleno los valores adicionales en el reporte
        //Especifico los DataSet de los componentes DB del QuickReport
        QuickReportCuentasDeUsuarios.DataSet:= DataModuleControlDelSistema.ADOStoredProcSelecPuestosDeTrabajo;

        QuickReportCuentasDeUsuarios.QRDBtxtUsuario.DataSet:= DataModuleControlDelSistema.ADOStoredProcSelecPuestosDeTrabajo;
        QuickReportCuentasDeUsuarios.QRDBtxtPrivilegio.DataSet:= DataModuleControlDelSistema.ADOStoredProcSelecPuestosDeTrabajo;
        QuickReportCuentasDeUsuarios.QRDBtxtNombre.DataSet:= DataModuleControlDelSistema.ADOStoredProcSelecPuestosDeTrabajo;
        QuickReportCuentasDeUsuarios.QRDBtxtPrimerApellido.DataSet:= DataModuleControlDelSistema.ADOStoredProcSelecPuestosDeTrabajo;
        QuickReportCuentasDeUsuarios.QRDBtxtSegundoApellido.DataSet:= DataModuleControlDelSistema.ADOStoredProcSelecPuestosDeTrabajo;        

        //Conformo los captions del QuickReport
        QuickReportCuentasDeUsuarios.QRlblReferente.Caption:= 'Reporte de las Cuentas de Usuarios.';
        QuickReportCuentasDeUsuarios.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

        //Actualizo y muestro as Cuentas de Usuarios
        HostalWare.MostrarPuestosDeTrabajo;

        //Envio datos adicionales para el Preview
        frmPreviewReporteCuentasDeUsuarios.IdiomaImperante:= IdiomaImperante;
        frmPreviewReporteCuentasDeUsuarios.FechaDelSistema:= ObtenerFechaDelSistema;

        //Muestro el reporte (Quick Report, vista previa)
        QuickReportCuentasDeUsuarios.PreviewModal;

        QuickReportCuentasDeUsuarios.QRImageLogo.Refresh;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.PrevisualizarReporteHabitaciones;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //*** Usando QuickReport ***
        //Relleno los valores adicionales en el reporte
        //En dependencia de los filtros empleados
        if (ComboBoxFiltroParaHabitaciones.Text = 'TODOS')
          then
            begin 
              if (ComboBoxFiltroPorCapacidad.Text = 'TODOS')
                then
                  begin //Todos los cuartos, de cualquier capacidad
                    //Especifico los DataSet de los componentes DB del QuickReport
                    QuickReportHabitacionesExistentes.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones;

                    QuickReportHabitacionesExistentes.QRDBtxtNumeroHabitacion.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones;
                    QuickReportHabitacionesExistentes.QRDBtxtVentiladores.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones;
                    QuickReportHabitacionesExistentes.QRDBtxtArmario.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones;
                    QuickReportHabitacionesExistentes.QRDBtxtCloset.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones;
                    QuickReportHabitacionesExistentes.QRDBtxtEspejo.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones;
                    QuickReportHabitacionesExistentes.QRDBtxtMesitasNoche.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones;
                    QuickReportHabitacionesExistentes.QRDBtxtAireAcondicionado.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones;
                    QuickReportHabitacionesExistentes.QRDBtxtAguaCaliente.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones;
                    QuickReportHabitacionesExistentes.QRDBtxtTelefonoInterno.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones;
                    QuickReportHabitacionesExistentes.QRDBtxtTelefonoDirecto.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones;

                    //Conformo los captions del QuickReport
                    QuickReportHabitacionesExistentes.QRlblReferente.Caption:= 'Reporte de todas las habitaciones existentes en el centro.';
                    QuickReportHabitacionesExistentes.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                    //Actualizo y muestro las capacidades

                  end
                    else
                      begin  //Todos los cuartos, de una capacidad especifica
                        if (ComboBoxFiltroPorCapacidad.Text = 'Con Vacantes')
                          then
                            begin //Todos los cuartos, con vacantes
                              //Especifico los DataSet de los componentes DB del QuickReport
                              QuickReportHabitacionesExistentes.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes;

                              QuickReportHabitacionesExistentes.QRDBtxtNumeroHabitacion.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes;
                              QuickReportHabitacionesExistentes.QRDBtxtVentiladores.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes;
                              QuickReportHabitacionesExistentes.QRDBtxtArmario.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes;
                              QuickReportHabitacionesExistentes.QRDBtxtCloset.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes;
                              QuickReportHabitacionesExistentes.QRDBtxtEspejo.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes;
                              QuickReportHabitacionesExistentes.QRDBtxtMesitasNoche.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes;
                              QuickReportHabitacionesExistentes.QRDBtxtAireAcondicionado.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes;
                              QuickReportHabitacionesExistentes.QRDBtxtAguaCaliente.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes;
                              QuickReportHabitacionesExistentes.QRDBtxtTelefonoInterno.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes;
                              QuickReportHabitacionesExistentes.QRDBtxtTelefonoDirecto.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes;

                              //Conformo los captions del QuickReport
                              QuickReportHabitacionesExistentes.QRlblReferente.Caption:= 'Reporte de todas las habitaciones con vacantes.';
                              QuickReportHabitacionesExistentes.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                              //Actualizo y muestro las capacidades
                              //ActualizarCapacidades;
                            end
                              else
                                begin
                                  if (ComboBoxFiltroPorCapacidad.Text = 'Sin Vacantes')
                                    then
                                      begin //Todos los cuartos, sin vacantes
                                        //Especifico los DataSet de los componentes DB del QuickReport
                                        QuickReportHabitacionesExistentes.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes;

                                        QuickReportHabitacionesExistentes.QRDBtxtNumeroHabitacion.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes;
                                        QuickReportHabitacionesExistentes.QRDBtxtVentiladores.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes;
                                        QuickReportHabitacionesExistentes.QRDBtxtArmario.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes;
                                        QuickReportHabitacionesExistentes.QRDBtxtCloset.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes;
                                        QuickReportHabitacionesExistentes.QRDBtxtEspejo.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes;
                                        QuickReportHabitacionesExistentes.QRDBtxtMesitasNoche.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes;
                                        QuickReportHabitacionesExistentes.QRDBtxtAireAcondicionado.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes;
                                        QuickReportHabitacionesExistentes.QRDBtxtAguaCaliente.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes;
                                        QuickReportHabitacionesExistentes.QRDBtxtTelefonoInterno.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes;
                                        QuickReportHabitacionesExistentes.QRDBtxtTelefonoDirecto.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes;

                                        //Conformo los captions del QuickReport
                                        QuickReportHabitacionesExistentes.QRlblReferente.Caption:= 'Reporte de todas las habitaciones sin vacantes.';
                                        QuickReportHabitacionesExistentes.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                                        //Actualizo y muestro las capacidades
                                        //ActualizarCapacidades;
                                      end;
                                end;
                      end;
            end
              else
                begin
                  if (ComboBoxFiltroPorCapacidad.Text = 'TODOS')
                    then
                      begin  //Un piso en especifico, de cualquier capacidad
                        //Especifico los DataSet de los componentes DB del QuickReport
                        QuickReportHabitacionesExistentes.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;

                        QuickReportHabitacionesExistentes.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;
                        QuickReportHabitacionesExistentes.QRDBtxtNumeroHabitacion.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;
                        QuickReportHabitacionesExistentes.QRDBtxtVentiladores.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;
                        QuickReportHabitacionesExistentes.QRDBtxtArmario.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;
                        QuickReportHabitacionesExistentes.QRDBtxtCloset.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;
                        QuickReportHabitacionesExistentes.QRDBtxtEspejo.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;
                        QuickReportHabitacionesExistentes.QRDBtxtMesitasNoche.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;
                        QuickReportHabitacionesExistentes.QRDBtxtAireAcondicionado.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;
                        QuickReportHabitacionesExistentes.QRDBtxtAguaCaliente.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;
                        QuickReportHabitacionesExistentes.QRDBtxtTelefonoInterno.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;
                        QuickReportHabitacionesExistentes.QRDBtxtTelefonoDirecto.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;

                        //Conformo los captions del QuickReport
                        QuickReportHabitacionesExistentes.QRlblReferente.Caption:= 'Reporte de las habitaciones del ' + ComboBoxFiltroParaHabitaciones.Text + '.';
                        QuickReportHabitacionesExistentes.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                        //Actualizo y muestro las capacidades
                        //ActualizarCapacidades;
                      end
                        else
                          begin  //Un piso en especifico de una capacidad especifica
                            if (ComboBoxFiltroPorCapacidad.Text = 'Con Vacantes')
                              then
                                begin //Un piso en especifico, con vacantes
                                  //Especifico los DataSet de los componentes DB del QuickReport
                                  QuickReportHabitacionesExistentes.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes;

                                  QuickReportHabitacionesExistentes.QRDBtxtNumeroHabitacion.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes;
                                  QuickReportHabitacionesExistentes.QRDBtxtVentiladores.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes;
                                  QuickReportHabitacionesExistentes.QRDBtxtArmario.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes;
                                  QuickReportHabitacionesExistentes.QRDBtxtCloset.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes;
                                  QuickReportHabitacionesExistentes.QRDBtxtEspejo.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes;
                                  QuickReportHabitacionesExistentes.QRDBtxtMesitasNoche.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes;
                                  QuickReportHabitacionesExistentes.QRDBtxtAireAcondicionado.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes;
                                  QuickReportHabitacionesExistentes.QRDBtxtAguaCaliente.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes;
                                  QuickReportHabitacionesExistentes.QRDBtxtTelefonoInterno.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes;
                                  QuickReportHabitacionesExistentes.QRDBtxtTelefonoDirecto.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes;

                                  //Conformo los captions del QuickReport
                                  QuickReportHabitacionesExistentes.QRlblReferente.Caption:= 'Reporte de las habitaciones con vacantes en el ' + ComboBoxFiltroParaHabitaciones.Text + '.';
                                  QuickReportHabitacionesExistentes.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                                  //Actualizo y muestro las capacidades
                                  //ActualizarCapacidades;
                                end
                                  else
                                    begin
                                      if (ComboBoxFiltroPorCapacidad.Text = 'Sin Vacantes')
                                        then
                                          begin //Un piso en especifico, sin vacantes
                                            //Especifico los DataSet de los componentes DB del QuickReport
                                            QuickReportHabitacionesExistentes.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes;

                                            QuickReportHabitacionesExistentes.QRDBtxtNumeroHabitacion.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes;
                                            QuickReportHabitacionesExistentes.QRDBtxtVentiladores.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes;
                                            QuickReportHabitacionesExistentes.QRDBtxtArmario.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes;
                                            QuickReportHabitacionesExistentes.QRDBtxtCloset.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes;
                                            QuickReportHabitacionesExistentes.QRDBtxtEspejo.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes;
                                            QuickReportHabitacionesExistentes.QRDBtxtMesitasNoche.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes;
                                            QuickReportHabitacionesExistentes.QRDBtxtAireAcondicionado.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes;
                                            QuickReportHabitacionesExistentes.QRDBtxtAguaCaliente.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes;
                                            QuickReportHabitacionesExistentes.QRDBtxtTelefonoInterno.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes;
                                            QuickReportHabitacionesExistentes.QRDBtxtTelefonoDirecto.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes;

                                            //Conformo los captions del QuickReport
                                            QuickReportHabitacionesExistentes.QRlblReferente.Caption:= 'Reporte de las habitaciones sin vacantes en el ' + ComboBoxFiltroParaHabitaciones.Text + '.';
                                            QuickReportHabitacionesExistentes.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                                            //Actualizo y muestro las capacidades
                                            //ActualizarCapacidades;
                                          end;
                                    end;
                          end;
                end;


        //Envio datos adicionales para el Preview
        frmPreviewReporteHabitacionesExistentes.IdiomaImperante:= IdiomaImperante;
        frmPreviewReporteHabitacionesExistentes.FechaDelSistema:= ObtenerFechaDelSistema;

        //Muestro el reporte (Quick Report, vista previa)
        QuickReportHabitacionesExistentes.PreviewModal;

        QuickReportHabitacionesExistentes.QRImageLogo.Refresh;

        //Actualizo y muestro las capacidades
        ActualizarCapacidades;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.PrevisualizarReporteRegistrosDeHuespedes;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //*** Usando QuickReport ***
        //Relleno los valores adicionales en el reporte
        //En dependencia de los filtros empleados
        if (cmbxFiltrarRegistrosPorPiso.Text = 'TODOS')
          then
            begin //Los registros de cualquier piso
              if (cmbxFiltrarRegistrosPorMotivo.Text = 'TODOS')
                then
                  begin //De todos los pisos, con cualquier motivo
                    //Especifico los DataSet de los componentes DB del QuickReport
                    QuickReportRegistroDeHuespedes.DataSet:= DataModuleRegistroDeHuespedes.ADOStoredProcMostrarHuespedesTotales;

                    QuickReportRegistroDeHuespedes.QRDBtxtNombre.DataSet:= DataModuleRegistroDeHuespedes.ADOStoredProcMostrarHuespedesTotales;
                    QuickReportRegistroDeHuespedes.QRDBtxtApellidos.DataSet:= DataModuleRegistroDeHuespedes.ADOStoredProcMostrarHuespedesTotales;
                    QuickReportRegistroDeHuespedes.QRDBtxtCarneIdentidad.DataSet:= DataModuleRegistroDeHuespedes.ADOStoredProcMostrarHuespedesTotales;
                    QuickReportRegistroDeHuespedes.QRDBtxtNumeroHabitacion.DataSet:= DataModuleRegistroDeHuespedes.ADOStoredProcMostrarHuespedesTotales;
                    QuickReportRegistroDeHuespedes.QRDBtxtTipoCama.DataSet:= DataModuleRegistroDeHuespedes.ADOStoredProcMostrarHuespedesTotales;
                    QuickReportRegistroDeHuespedes.QRDBtxtMotivoHospedaje.DataSet:= DataModuleRegistroDeHuespedes.ADOStoredProcMostrarHuespedesTotales;
                    QuickReportRegistroDeHuespedes.QRDBtxtPais.DataSet:= DataModuleRegistroDeHuespedes.ADOStoredProcMostrarHuespedesTotales;

                    //Conformo los captions del QuickReport
                    QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de todos las Huéspedes Registrados en el centro.';
                    QuickReportRegistroDeHuespedes.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                    //Actualizo y muestro los registros

                  end
                    else
                      begin  //No todos los motivos
                        if (cmbxFiltrarRegistrosPorMotivo.Text <> 'TODOS')
                          then
                            begin //De todos los pisos, con un motivo en especifico
                              //Especifico los DataSet de los componentes DB del QuickReport
                              QuickReportRegistroDeHuespedes.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivo;

                              QuickReportRegistroDeHuespedes.QRDBtxtNombre.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivo;
                              QuickReportRegistroDeHuespedes.QRDBtxtApellidos.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivo;
                              QuickReportRegistroDeHuespedes.QRDBtxtCarneIdentidad.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivo;
                              QuickReportRegistroDeHuespedes.QRDBtxtNumeroHabitacion.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivo;
                              QuickReportRegistroDeHuespedes.QRDBtxtTipoCama.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivo;
                              QuickReportRegistroDeHuespedes.QRDBtxtMotivoHospedaje.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivo;
                              QuickReportRegistroDeHuespedes.QRDBtxtPais.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivo;

                              //Conformo los captions del QuickReport
                              //En dependencia del Motivo de Hospedaje, redacto el titular
                              if (cmbxFiltrarRegistrosPorMotivo.Text = 'Curso')
                                then
                                  begin
                                    QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados que estudian un curso.';
                                  end
                                    else
                                      begin
                                        if (cmbxFiltrarRegistrosPorMotivo.Text = 'Entrenamiento')
                                          then
                                            begin
                                              QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados que se encuentran en Entrenamiento.';
                                            end
                                              else
                                                begin
                                                  if (cmbxFiltrarRegistrosPorMotivo.Text = 'Diplomado')
                                                    then
                                                      begin
                                                        QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados que estudian un Diplomado.';
                                                      end
                                                        else
                                                          begin
                                                            if (cmbxFiltrarRegistrosPorMotivo.Text = 'Especialidad')
                                                              then
                                                                begin
                                                                  QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados que estudian una Especialidad.';
                                                                end
                                                                  else
                                                                    begin
                                                                      if (cmbxFiltrarRegistrosPorMotivo.Text = 'Maestría')
                                                                        then
                                                                          begin
                                                                            QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados que estudian una Maestría.';
                                                                          end
                                                                            else
                                                                              begin
                                                                                if (cmbxFiltrarRegistrosPorMotivo.Text = 'Doctorado')
                                                                                  then
                                                                                    begin
                                                                                      QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados que estudian un Doctorado.';
                                                                                    end
                                                                                      else
                                                                                        begin
                                                                                          if (cmbxFiltrarRegistrosPorMotivo.Text = 'Trabajador Interno')
                                                                                            then
                                                                                              begin
                                                                                                QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados que son Trabajadores Internos';
                                                                                              end
                                                                                                else
                                                                                                  begin
                                                                                                    if (cmbxFiltrarRegistrosPorMotivo.Text = 'Interés del Centro')
                                                                                                      then
                                                                                                        begin
                                                                                                          QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados que responden a un Interés del Centro.';
                                                                                                        end
                                                                                                          else
                                                                                                            begin
                                                                                                              if (cmbxFiltrarRegistrosPorMotivo.Text = 'Taller')
                                                                                                                then
                                                                                                                  begin
                                                                                                                    QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados que participan en un Taller.';
                                                                                                                  end
                                                                                                                    else
                                                                                                                      begin
                                                                                                                        if (cmbxFiltrarRegistrosPorMotivo.Text = 'Reunión Nacional')
                                                                                                                          then
                                                                                                                            begin
                                                                                                                              QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados que participan en una Reunión Nacional.';
                                                                                                                            end
                                                                                                                              else
                                                                                                                                begin
                                                                                                                                  if (cmbxFiltrarRegistrosPorMotivo.Text = 'Evento Científico')
                                                                                                                                    then
                                                                                                                                      begin
                                                                                                                                        QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados que participan en un Evento Científico';
                                                                                                                                      end
                                                                                                                                        else
                                                                                                                                          begin
                                                                                                                                            if (cmbxFiltrarRegistrosPorMotivo.Text = 'Otros')
                                                                                                                                              then
                                                                                                                                                begin
                                                                                                                                                  QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados por otros motivos diversos.';
                                                                                                                                                end;
                                                                                                                                          end;
                                                                                                                                end;
                                                                                                                      end;
                                                                                                            end;
                                                                                                  end;
                                                                                        end;
                                                                              end;
                                                                    end;
                                                          end;
                                                end;
                                      end;

                              //QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados por: ' + cmbxFiltrarRegistrosPorMotivo.Text + '.';
                              QuickReportRegistroDeHuespedes.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                              //Actualizo y muestro los registros

                            end;
                      end;
            end
              else
                begin //No de todos los pisos
                  if (cmbxFiltrarRegistrosPorMotivo.Text = 'TODOS')
                    then
                      begin //De un piso en especifico, con cualquier motivo
                        //Especifico los DataSet de los componentes DB del QuickReport
                        QuickReportRegistroDeHuespedes.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorPiso;

                        QuickReportRegistroDeHuespedes.QRDBtxtNombre.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorPiso;
                        QuickReportRegistroDeHuespedes.QRDBtxtApellidos.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorPiso;
                        QuickReportRegistroDeHuespedes.QRDBtxtCarneIdentidad.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorPiso;
                        QuickReportRegistroDeHuespedes.QRDBtxtNumeroHabitacion.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorPiso;
                        QuickReportRegistroDeHuespedes.QRDBtxtTipoCama.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorPiso;
                        QuickReportRegistroDeHuespedes.QRDBtxtMotivoHospedaje.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorPiso;
                        QuickReportRegistroDeHuespedes.QRDBtxtPais.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorPiso;

                        //Conformo los captions del QuickReport
                        QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados en el ' + cmbxFiltrarRegistrosPorPiso.Text + '.';
                        QuickReportRegistroDeHuespedes.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                        //Actualizo y muestro los registros

                      end
                        else
                          begin  //No todos los motivos
                            if (cmbxFiltrarRegistrosPorMotivo.Text <> 'TODOS')
                              then
                                begin //De un piso en especifico, con un motivo en especifico
                                  //Especifico los DataSet de los componentes DB del QuickReport
                                  QuickReportRegistroDeHuespedes.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivoYPorPiso;

                                  QuickReportRegistroDeHuespedes.QRDBtxtNombre.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivoYPorPiso;
                                  QuickReportRegistroDeHuespedes.QRDBtxtApellidos.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivoYPorPiso;
                                  QuickReportRegistroDeHuespedes.QRDBtxtCarneIdentidad.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivoYPorPiso;
                                  QuickReportRegistroDeHuespedes.QRDBtxtNumeroHabitacion.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivoYPorPiso;
                                  QuickReportRegistroDeHuespedes.QRDBtxtTipoCama.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivoYPorPiso;
                                  QuickReportRegistroDeHuespedes.QRDBtxtMotivoHospedaje.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivoYPorPiso;
                                  QuickReportRegistroDeHuespedes.QRDBtxtPais.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivoYPorPiso;

                                  //Conformo los captions del QuickReport
                                  //En dependencia del Motivo de Hospedaje, redacto el titular
                                  if (cmbxFiltrarRegistrosPorMotivo.Text = 'Curso')
                                    then
                                      begin
                                        QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados en el ' + cmbxFiltrarRegistrosPorPiso.Text + ' y que estudian un curso.';
                                      end
                                        else
                                          begin
                                            if (cmbxFiltrarRegistrosPorMotivo.Text = 'Entrenamiento')
                                              then
                                                begin
                                                  QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados en el ' + cmbxFiltrarRegistrosPorPiso.Text + ' y que se encuentran en Entrenamiento.';
                                                end
                                                  else
                                                    begin
                                                      if (cmbxFiltrarRegistrosPorMotivo.Text = 'Diplomado')
                                                        then
                                                          begin
                                                            QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados en el ' + cmbxFiltrarRegistrosPorPiso.Text + ' y que estudian un Diplomado.';
                                                          end
                                                            else
                                                              begin
                                                                if (cmbxFiltrarRegistrosPorMotivo.Text = 'Especialidad')
                                                                  then
                                                                    begin
                                                                      QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados en el ' + cmbxFiltrarRegistrosPorPiso.Text + ' y que estudian una Especialidad.';
                                                                    end
                                                                      else
                                                                        begin
                                                                          if (cmbxFiltrarRegistrosPorMotivo.Text = 'Maestría')
                                                                            then
                                                                              begin
                                                                                QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados en el ' + cmbxFiltrarRegistrosPorPiso.Text + ' y que estudian una Maestría.';
                                                                              end
                                                                                else
                                                                                  begin
                                                                                    if (cmbxFiltrarRegistrosPorMotivo.Text = 'Doctorado')
                                                                                      then
                                                                                        begin
                                                                                          QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados en el ' + cmbxFiltrarRegistrosPorPiso.Text + ' y que estudian un Doctorado.';
                                                                                        end
                                                                                          else
                                                                                            begin
                                                                                              if (cmbxFiltrarRegistrosPorMotivo.Text = 'Trabajador Interno')
                                                                                                then
                                                                                                  begin
                                                                                                    QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados en el ' + cmbxFiltrarRegistrosPorPiso.Text + ' y que son Trabajadores Internos';
                                                                                                  end
                                                                                                    else
                                                                                                      begin
                                                                                                        if (cmbxFiltrarRegistrosPorMotivo.Text = 'Interés del Centro')
                                                                                                          then
                                                                                                            begin
                                                                                                              QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados en el ' + cmbxFiltrarRegistrosPorPiso.Text + ' y que responden a un Interés del Centro.';
                                                                                                            end
                                                                                                              else
                                                                                                                begin
                                                                                                                  if (cmbxFiltrarRegistrosPorMotivo.Text = 'Taller')
                                                                                                                    then
                                                                                                                      begin
                                                                                                                        QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados en el ' + cmbxFiltrarRegistrosPorPiso.Text + ' y que participan en un Taller.';
                                                                                                                      end
                                                                                                                        else
                                                                                                                          begin
                                                                                                                            if (cmbxFiltrarRegistrosPorMotivo.Text = 'Reunión Nacional')
                                                                                                                              then
                                                                                                                                begin
                                                                                                                                  QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados en el ' + cmbxFiltrarRegistrosPorPiso.Text + ' y que participan en una Reunión Nacional.';
                                                                                                                                end
                                                                                                                                  else
                                                                                                                                    begin
                                                                                                                                      if (cmbxFiltrarRegistrosPorMotivo.Text = 'Evento Científico')
                                                                                                                                        then
                                                                                                                                          begin
                                                                                                                                            QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados en el ' + cmbxFiltrarRegistrosPorPiso.Text + ' y que participan en un Evento Científico.';
                                                                                                                                          end
                                                                                                                                            else
                                                                                                                                              begin
                                                                                                                                                if (cmbxFiltrarRegistrosPorMotivo.Text = 'Otros')
                                                                                                                                                  then
                                                                                                                                                    begin
                                                                                                                                                      QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados en el ' + cmbxFiltrarRegistrosPorPiso.Text + ' y por motivos diversos.';
                                                                                                                                                    end;
                                                                                                                                              end;
                                                                                                                                    end;
                                                                                                                          end;
                                                                                                                end;
                                                                                                      end;
                                                                                            end;
                                                                                  end;
                                                                        end;
                                                              end;
                                                    end;
                                          end;

                                  //QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados en el ' + cmbxFiltrarRegistrosPorPiso.Text + ' y por: ' + cmbxFiltrarRegistrosPorMotivo.Text + '.';
                                  QuickReportRegistroDeHuespedes.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                                  //Actualizo y muestro los registros

                                end;
                          end;
                end;


        //Envio datos adicionales para el Preview
        frmPreviewReporteRegistroDeHuespedes.IdiomaImperante:= IdiomaImperante;
        frmPreviewReporteRegistroDeHuespedes.FechaDelSistema:= ObtenerFechaDelSistema;

        //Muestro el reporte (Quick Report, vista previa)
        QuickReportRegistroDeHuespedes.PreviewModal;

        QuickReportRegistroDeHuespedes.QRImageLogo.Refresh;

        //Actualizo y muestro los registros
        ActualizarRegistros;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.PrevisualizarReporteReservaciones;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
      
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.PrevisualizarReporteTrazasDelSistema;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //*** Usando QuickReport ***
        //Relleno los valores adicionales en el reporte
        //Especifico los DataSet de los componentes DB del QuickReport
        QuickReportTrazasDelSistema.DataSet:= DataModuleControlDelSistema.ADOStoredProcSelecTodasLasTrazas;

        QuickReportTrazasDelSistema.QRDBtxtFecha.DataSet:= DataModuleControlDelSistema.ADOStoredProcSelecTodasLasTrazas;
        QuickReportTrazasDelSistema.QRDBtxtUsuario.DataSet:= DataModuleControlDelSistema.ADOStoredProcSelecTodasLasTrazas;
        QuickReportTrazasDelSistema.QRDBtxtAccionRealizada.DataSet:= DataModuleControlDelSistema.ADOStoredProcSelecTodasLasTrazas;

        //Conformo los captions del QuickReport
        QuickReportTrazasDelSistema.QRlblReferente.Caption:= 'Reporte de las Trazas del Sistema.';
        QuickReportTrazasDelSistema.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

        //Actualizo y muestro las Trazas
        HostalWare.MostrarTodasLasTrazas;

        //Envio datos adicionales para el Preview
        frmPreviewReporteTrazasDelSistema.IdiomaImperante:= IdiomaImperante;
        frmPreviewReporteTrazasDelSistema.FechaDelSistema:= ObtenerFechaDelSistema;

        //Muestro el reporte (Quick Report, vista previa)
        QuickReportTrazasDelSistema.PreviewModal;

        QuickReportTrazasDelSistema.QRImageLogo.Refresh;

        //Actualizo y muestro las Trazas
        //HostalWare.MostrarTodasLasTrazas;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.ExportarHaciaPDFReporteAlertas;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
        //En dependencia del idioma imperante
        if (IdiomaImperante = 'Espannol')
          then
            begin
              frmPrincipal.Caption:= 'HostalWare. Exportando el Reporte de Alertas del Sistema a PDF';
            end
              else
                begin
                  if (IdiomaImperante = 'Ingles')
                    then
                      begin
                        frmPrincipal.Caption:= 'HostalWare. Exportando el Reporte de Alertas del Sistema a PDF';
                      end;
                end;

        //*** Usando QuickReport ***
        //Relleno los valores adicionales en el reporte
        //Especifico los DataSet de los componentes DB del QuickReport
        QuickReportAlertasDelSistema.DataSet:= DataModuleAlertasDelSistema.spSelecTodasLasAlertasDelSistema;

        QuickReportAlertasDelSistema.QRDBtxtMotivoDeAlerta.DataSet:= DataModuleAlertasDelSistema.spSelecTodasLasAlertasDelSistema;
        QuickReportAlertasDelSistema.QRDBtxtDescripcionDeAlerta.DataSet:= DataModuleAlertasDelSistema.spSelecTodasLasAlertasDelSistema;

        //Conformo los captions del QuickReport
        QuickReportAlertasDelSistema.QRlblReferente.Caption:= 'Reporte de las Alertas del Sistema.';
        QuickReportAlertasDelSistema.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

        //Actualizo y muestro las alertas
        ActualizarAlertasDelSistema;


        //---- *** A partir de aquí exporto el reporte hacia PDF *** ----

        //Le envio el reporte hacia el ExportQR
        //QuickReportHabitacionesExistentes.Prepare;
        EXQR.Report := QuickReportAlertasDelSistema;

        //Mando a que el ExportQR exporte el reporte ya almacenado
        EXQR.ExportQR;

        //Probé exportando directamente hacia PDF pero salva en la raiz directamente, no saca la bandeja de diálogo
        //EXQR.ExportQRPDF('Resumen P. de Excelencia (' + ComboBoxSemestreResumenesDeExcelencia.Text + ' del año ' + anno + ') ' + DptoCapacitacion.ObtenerFechaDelSistema, False, True);
        //EXQR.ExportQRPDF('Hola', True); esta debería servir, pero no

        QuickReportAlertasDelSistema.QRPrinter.Free;
        QuickReportAlertasDelSistema.QRPrinter := nil;

        //---- *** A partir de aquí restituyo el estado de los componentes *** ----

        //Actualizo y muestro las alertas
        ActualizarAlertasDelSistema;

        //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
        //En dependencia del idioma imperante
        if (IdiomaImperante = 'Espannol')
          then
            begin
              frmPrincipal.Caption:= 'HostalWare - Sistema de Hospedaje Automatizado';
            end
              else
                begin
                  if (IdiomaImperante = 'Ingles')
                    then
                      begin
                        frmPrincipal.Caption:= 'HostalWare - Sistema de Hospedaje Automatizado';
                      end;
                end;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.ExportarHaciaPDFReporteCamasExistentes;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
        //En dependencia del idioma imperante
        if (IdiomaImperante = 'Espannol')
          then
            begin
              frmPrincipal.Caption:= 'HostalWare. Exportando las Camas Existentes a PDF';
            end
              else
                begin
                  if (IdiomaImperante = 'Ingles')
                    then
                      begin
                        frmPrincipal.Caption:= 'HostalWare. Exportando las Camas Existentes a PDF';
                      end;
                end;


  
        //Oculto los botones de "Generar Reporte" de las Planillas Provinciales

        //Oculto el SpeedButton de "Generar Reporte"

        //Oculto la opción de "Generar Reporte" en el MainMenu



        //---------- *** Esta es la parte donde debo implementar la generación de Reportes *** ----------







  
        //---- *** A partir de aquí exporto el reporte hacia PDF *** ----

        //*** Usando QuickReport ***
        //Relleno los valores adicionales en el reporte
        //Especifico los DataSet de los componentes DB del QuickReport
        QuickReportCamasExistentes.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecCamasPorID_Habitacion;

        QuickReportCamasExistentes.QRDBtxtNumeroSerie.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecCamasPorID_Habitacion;
        QuickReportCamasExistentes.QRDBtxtTipoCama.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecCamasPorID_Habitacion;
        QuickReportCamasExistentes.QRDBtxtEstadoOcupacional.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecCamasPorID_Habitacion;

        //Conformo los captions del QuickReport
        QuickReportCamasExistentes.QRlblReferente.Caption:= 'Reporte de las camas existentes en la habitación ' + DBGridHabitacionesExistentes.SelectedField.Text + '.';
        QuickReportCamasExistentes.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

        //Actualizo y muestro las camas
        ActualizarSoloCamas;

                
        //Le envio el reporte hacia el ExportQR
        //QuickReportHabitacionesExistentes.Prepare;
        EXQR.Report := QuickReportCamasExistentes;

        //Mando a que el ExportQR exporte el reporte ya almacenado
        EXQR.ExportQR;

        //Probé exportando directamente hacia PDF pero salva en la raiz directamente, no saca la bandeja de diálogo
        //EXQR.ExportQRPDF('Resumen P. de Excelencia (' + ComboBoxSemestreResumenesDeExcelencia.Text + ' del año ' + anno + ') ' + DptoCapacitacion.ObtenerFechaDelSistema, False, True);
        //EXQR.ExportQRPDF('Hola', True); esta debería servir, pero no

        QuickReportCamasExistentes.QRPrinter.Free;
        QuickReportCamasExistentes.QRPrinter := nil;





        //---- *** A partir de aquí restituyo el estado de los componentes *** ----

        //Actualizo las camas
        ActualizarSoloCamas;

        //Muestro los botones de "Generar Reporte" de las Planillas Provinciales

        //Muestro el SpeedButton de "Generar Reporte"

        //Muestro la opción de "Generar Reporte" en el MainMenu






        //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
        //En dependencia del idioma imperante
        if (IdiomaImperante = 'Espannol')
          then
            begin
              frmPrincipal.Caption:= 'HostalWare - Sistema de Hospedaje Automatizado';
            end
              else
                begin
                  if (IdiomaImperante = 'Ingles')
                    then
                      begin
                        frmPrincipal.Caption:= 'HostalWare - Sistema de Hospedaje Automatizado';
                      end;
                end;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.ExportarHaciaPDFReporteCuentasDeUsuario;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
        //En dependencia del idioma imperante
        if (IdiomaImperante = 'Espannol')
          then
            begin
              frmPrincipal.Caption:= 'HostalWare. Exportando el Reporte de Cuentas de Usuarios a PDF';
            end
              else
                begin
                  if (IdiomaImperante = 'Ingles')
                    then
                      begin
                        frmPrincipal.Caption:= 'HostalWare. Exportando el Reporte de Cuentas de Usuarios a PDF';
                      end;
                end;

        //*** Usando QuickReport ***
        //Relleno los valores adicionales en el reporte
        //Especifico los DataSet de los componentes DB del QuickReport
        QuickReportTrazasDelSistema.DataSet:= DataModuleControlDelSistema.ADOStoredProcSelecTodasLasTrazas;

        QuickReportTrazasDelSistema.QRDBtxtFecha.DataSet:= DataModuleControlDelSistema.ADOStoredProcSelecTodasLasTrazas;
        QuickReportTrazasDelSistema.QRDBtxtUsuario.DataSet:= DataModuleControlDelSistema.ADOStoredProcSelecTodasLasTrazas;
        QuickReportTrazasDelSistema.QRDBtxtAccionRealizada.DataSet:= DataModuleControlDelSistema.ADOStoredProcSelecTodasLasTrazas;

        //Conformo los captions del QuickReport
        QuickReportTrazasDelSistema.QRlblReferente.Caption:= 'Reporte de las Trazas del Sistema.';
        QuickReportTrazasDelSistema.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

        //Actualizo y muestro las Trazas
        HostalWare.MostrarTodasLasTrazas;

        //Envio datos adicionales para el Preview
        frmPreviewReporteTrazasDelSistema.IdiomaImperante:= IdiomaImperante;
        frmPreviewReporteTrazasDelSistema.FechaDelSistema:= ObtenerFechaDelSistema;

        
        //Le envio el reporte hacia el ExportQR
        //QuickReportHabitacionesExistentes.Prepare;
        EXQR.Report := QuickReportCuentasDeUsuarios;

        //Mando a que el ExportQR exporte el reporte ya almacenado
        EXQR.ExportQR;

        //Probé exportando directamente hacia PDF pero salva en la raiz directamente, no saca la bandeja de diálogo
        //EXQR.ExportQRPDF('Resumen P. de Excelencia (' + ComboBoxSemestreResumenesDeExcelencia.Text + ' del año ' + anno + ') ' + DptoCapacitacion.ObtenerFechaDelSistema, False, True);
        //EXQR.ExportQRPDF('Hola', True); esta debería servir, pero no

        QuickReportCuentasDeUsuarios.QRPrinter.Free;
        QuickReportCuentasDeUsuarios.QRPrinter := nil;

        //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
        //En dependencia del idioma imperante
        if (IdiomaImperante = 'Espannol')
          then
            begin
              frmPrincipal.Caption:= 'HostalWare - Sistema de Hospedaje Automatizado';
            end
              else
                begin
                  if (IdiomaImperante = 'Ingles')
                    then
                      begin
                        frmPrincipal.Caption:= 'HostalWare - Sistema de Hospedaje Automatizado';
                      end;
                end;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.ExportarHaciaPDFReporteHabitaciones;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
        //En dependencia del idioma imperante
        if (IdiomaImperante = 'Espannol')
          then
            begin
              frmPrincipal.Caption:= 'HostalWare. Exportando el Reporte de Capacidades a PDF';
            end
              else
                begin
                  if (IdiomaImperante = 'Ingles')
                    then
                      begin
                        frmPrincipal.Caption:= 'HostalWare. Exportando el Reporte de Capacidades a PDF';
                      end;
                end;


  
        //Oculto los botones de "Generar Reporte" de las Planillas Provinciales

        //Oculto el SpeedButton de "Generar Reporte"

        //Oculto la opción de "Generar Reporte" en el MainMenu



        //---------- *** Esta es la parte donde debo implementar la generación de Reportes *** ----------







  
        //---- *** A partir de aquí exporto el reporte hacia PDF *** ----

{
        //Usando Rave Report
        //Especifico que el destino sea como fichero
        RvSystemHabitacionesExistentes.DefaultDest    := rdFile;

        //Especifico que la salida nativa sea falsa (¿?)
        RvSystemHabitacionesExistentes.DoNativeOutput := False;

        //Le quito a la especificación del rvSystem el que salga el cartelito de Setup
        RvSystemHabitacionesExistentes.SystemSetups   :=   RvSystemHabitacionesExistentes.SystemSetups - [ssAllowSetup];

        //Le paso el rvRender como objeto renderizador del rvSystem 
        RvSystemHabitacionesExistentes.RenderObject   := RvRenderPDFHostalWare;

        //Epecifico las características del SaveDialog
        SaveDialogSimulacionImagenes.Filter       := 'Acrobat Reader|*.PDF';
        SaveDialogSimulacionImagenes.DefaultExt   := 'PDF';

        if SaveDialogHostalWare.Execute then
          begin
            //Limpio el SaveDialog
            //SaveDialogPlanillasProvinciales.Free;

            //La salida del rvSystem será la del SaveDialog
            RvSystemHabitacionesExistentes.OutputFileName  := SaveDialogHostalWare.FileName;

            //Ejecuto el rvSystem
            RvSystemHabitacionesExistentes.Execute;
          end;

}






        //*** Usando QuickReport ***
        //Relleno los valores adicionales en el reporte
        //En dependencia de los filtros empleados
        if (ComboBoxFiltroParaHabitaciones.Text = 'TODOS')
          then
            begin 
              if (ComboBoxFiltroPorCapacidad.Text = 'TODOS')
                then
                  begin //Todos los cuartos, de cualquier capacidad
                    //Especifico los DataSet de los componentes DB del QuickReport
                    QuickReportHabitacionesExistentes.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones;

                    QuickReportHabitacionesExistentes.QRDBtxtNumeroHabitacion.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones;
                    QuickReportHabitacionesExistentes.QRDBtxtVentiladores.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones;
                    QuickReportHabitacionesExistentes.QRDBtxtArmario.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones;
                    QuickReportHabitacionesExistentes.QRDBtxtCloset.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones;
                    QuickReportHabitacionesExistentes.QRDBtxtEspejo.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones;
                    QuickReportHabitacionesExistentes.QRDBtxtMesitasNoche.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones;
                    QuickReportHabitacionesExistentes.QRDBtxtAireAcondicionado.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones;
                    QuickReportHabitacionesExistentes.QRDBtxtAguaCaliente.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones;
                    QuickReportHabitacionesExistentes.QRDBtxtTelefonoInterno.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones;
                    QuickReportHabitacionesExistentes.QRDBtxtTelefonoDirecto.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones;

                    //Conformo los captions del QuickReport
                    QuickReportHabitacionesExistentes.QRlblReferente.Caption:= 'Reporte de todas las habitaciones existentes en el centro.';
                    QuickReportHabitacionesExistentes.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                    //Actualizo y muestro las capacidades

                  end
                    else
                      begin  //Todos los cuartos, de una capacidad especifica
                        if (ComboBoxFiltroPorCapacidad.Text = 'Con Vacantes')
                          then
                            begin //Todos los cuartos, con vacantes
                              //Especifico los DataSet de los componentes DB del QuickReport
                              QuickReportHabitacionesExistentes.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes;

                              QuickReportHabitacionesExistentes.QRDBtxtNumeroHabitacion.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes;
                              QuickReportHabitacionesExistentes.QRDBtxtVentiladores.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes;
                              QuickReportHabitacionesExistentes.QRDBtxtArmario.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes;
                              QuickReportHabitacionesExistentes.QRDBtxtCloset.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes;
                              QuickReportHabitacionesExistentes.QRDBtxtEspejo.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes;
                              QuickReportHabitacionesExistentes.QRDBtxtMesitasNoche.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes;
                              QuickReportHabitacionesExistentes.QRDBtxtAireAcondicionado.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes;
                              QuickReportHabitacionesExistentes.QRDBtxtAguaCaliente.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes;
                              QuickReportHabitacionesExistentes.QRDBtxtTelefonoInterno.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes;
                              QuickReportHabitacionesExistentes.QRDBtxtTelefonoDirecto.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes;

                              //Conformo los captions del QuickReport
                              QuickReportHabitacionesExistentes.QRlblReferente.Caption:= 'Reporte de todas las habitaciones con vacantes.';
                              QuickReportHabitacionesExistentes.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                              //Actualizo y muestro las capacidades
                              //ActualizarCapacidades;
                            end
                              else
                                begin
                                  if (ComboBoxFiltroPorCapacidad.Text = 'Sin Vacantes')
                                    then
                                      begin //Todos los cuartos, sin vacantes
                                        //Especifico los DataSet de los componentes DB del QuickReport
                                        QuickReportHabitacionesExistentes.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes;

                                        QuickReportHabitacionesExistentes.QRDBtxtNumeroHabitacion.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes;
                                        QuickReportHabitacionesExistentes.QRDBtxtVentiladores.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes;
                                        QuickReportHabitacionesExistentes.QRDBtxtArmario.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes;
                                        QuickReportHabitacionesExistentes.QRDBtxtCloset.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes;
                                        QuickReportHabitacionesExistentes.QRDBtxtEspejo.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes;
                                        QuickReportHabitacionesExistentes.QRDBtxtMesitasNoche.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes;
                                        QuickReportHabitacionesExistentes.QRDBtxtAireAcondicionado.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes;
                                        QuickReportHabitacionesExistentes.QRDBtxtAguaCaliente.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes;
                                        QuickReportHabitacionesExistentes.QRDBtxtTelefonoInterno.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes;
                                        QuickReportHabitacionesExistentes.QRDBtxtTelefonoDirecto.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes;

                                        //Conformo los captions del QuickReport
                                        QuickReportHabitacionesExistentes.QRlblReferente.Caption:= 'Reporte de todas las habitaciones sin vacantes.';
                                        QuickReportHabitacionesExistentes.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                                        //Actualizo y muestro las capacidades
                                        //ActualizarCapacidades;
                                      end;
                                end;
                      end;
            end
              else
                begin
                  if (ComboBoxFiltroPorCapacidad.Text = 'TODOS')
                    then
                      begin  //Un piso en especifico, de cualquier capacidad
                        //Especifico los DataSet de los componentes DB del QuickReport
                        QuickReportHabitacionesExistentes.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;

                        QuickReportHabitacionesExistentes.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;
                        QuickReportHabitacionesExistentes.QRDBtxtNumeroHabitacion.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;
                        QuickReportHabitacionesExistentes.QRDBtxtVentiladores.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;
                        QuickReportHabitacionesExistentes.QRDBtxtArmario.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;
                        QuickReportHabitacionesExistentes.QRDBtxtCloset.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;
                        QuickReportHabitacionesExistentes.QRDBtxtEspejo.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;
                        QuickReportHabitacionesExistentes.QRDBtxtMesitasNoche.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;
                        QuickReportHabitacionesExistentes.QRDBtxtAireAcondicionado.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;
                        QuickReportHabitacionesExistentes.QRDBtxtAguaCaliente.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;
                        QuickReportHabitacionesExistentes.QRDBtxtTelefonoInterno.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;
                        QuickReportHabitacionesExistentes.QRDBtxtTelefonoDirecto.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;

                        //Conformo los captions del QuickReport
                        QuickReportHabitacionesExistentes.QRlblReferente.Caption:= 'Reporte de las habitaciones del ' + ComboBoxFiltroParaHabitaciones.Text + '.';
                        QuickReportHabitacionesExistentes.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                        //Actualizo y muestro las capacidades
                        //ActualizarCapacidades;
                      end
                        else
                          begin  //Un piso en especifico de una capacidad especifica
                            if (ComboBoxFiltroPorCapacidad.Text = 'Con Vacantes')
                              then
                                begin //Un piso en especifico, con vacantes
                                  //Especifico los DataSet de los componentes DB del QuickReport
                                  QuickReportHabitacionesExistentes.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes;

                                  QuickReportHabitacionesExistentes.QRDBtxtNumeroHabitacion.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes;
                                  QuickReportHabitacionesExistentes.QRDBtxtVentiladores.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes;
                                  QuickReportHabitacionesExistentes.QRDBtxtArmario.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes;
                                  QuickReportHabitacionesExistentes.QRDBtxtCloset.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes;
                                  QuickReportHabitacionesExistentes.QRDBtxtEspejo.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes;
                                  QuickReportHabitacionesExistentes.QRDBtxtMesitasNoche.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes;
                                  QuickReportHabitacionesExistentes.QRDBtxtAireAcondicionado.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes;
                                  QuickReportHabitacionesExistentes.QRDBtxtAguaCaliente.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes;
                                  QuickReportHabitacionesExistentes.QRDBtxtTelefonoInterno.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes;
                                  QuickReportHabitacionesExistentes.QRDBtxtTelefonoDirecto.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes;

                                  //Conformo los captions del QuickReport
                                  QuickReportHabitacionesExistentes.QRlblReferente.Caption:= 'Reporte de las habitaciones con vacantes en el ' + ComboBoxFiltroParaHabitaciones.Text + '.';
                                  QuickReportHabitacionesExistentes.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                                  //Actualizo y muestro las capacidades
                                  //ActualizarCapacidades;
                                end
                                  else
                                    begin
                                      if (ComboBoxFiltroPorCapacidad.Text = 'Sin Vacantes')
                                        then
                                          begin //Un piso en especifico, sin vacantes
                                            //Especifico los DataSet de los componentes DB del QuickReport
                                            QuickReportHabitacionesExistentes.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes;

                                            QuickReportHabitacionesExistentes.QRDBtxtNumeroHabitacion.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes;
                                            QuickReportHabitacionesExistentes.QRDBtxtVentiladores.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes;
                                            QuickReportHabitacionesExistentes.QRDBtxtArmario.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes;
                                            QuickReportHabitacionesExistentes.QRDBtxtCloset.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes;
                                            QuickReportHabitacionesExistentes.QRDBtxtEspejo.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes;
                                            QuickReportHabitacionesExistentes.QRDBtxtMesitasNoche.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes;
                                            QuickReportHabitacionesExistentes.QRDBtxtAireAcondicionado.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes;
                                            QuickReportHabitacionesExistentes.QRDBtxtAguaCaliente.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes;
                                            QuickReportHabitacionesExistentes.QRDBtxtTelefonoInterno.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes;
                                            QuickReportHabitacionesExistentes.QRDBtxtTelefonoDirecto.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes;

                                            //Conformo los captions del QuickReport
                                            QuickReportHabitacionesExistentes.QRlblReferente.Caption:= 'Reporte de las habitaciones sin vacantes en el ' + ComboBoxFiltroParaHabitaciones.Text + '.';
                                            QuickReportHabitacionesExistentes.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                                            //Actualizo y muestro las capacidades
                                            //ActualizarCapacidades;
                                          end;
                                    end;
                          end;
                end;
                
        //Le envio el reporte hacia el ExportQR
        //QuickReportHabitacionesExistentes.Prepare;
        EXQR.Report := QuickReportHabitacionesExistentes;

        //Mando a que el ExportQR exporte el reporte ya almacenado
        EXQR.ExportQR;

        //Probé exportando directamente hacia PDF pero salva en la raiz directamente, no saca la bandeja de diálogo
        //EXQR.ExportQRPDF('Resumen P. de Excelencia (' + ComboBoxSemestreResumenesDeExcelencia.Text + ' del año ' + anno + ') ' + DptoCapacitacion.ObtenerFechaDelSistema, False, True);
        //EXQR.ExportQRPDF('Hola', True); esta debería servir, pero no

        QuickReportHabitacionesExistentes.QRPrinter.Free;
        QuickReportHabitacionesExistentes.QRPrinter := nil;





        //---- *** A partir de aquí restituyo el estado de los componentes *** ----

        //Actualizo las capacidades
        ActualizarCapacidades;

        //Muestro los botones de "Generar Reporte" de las Planillas Provinciales

        //Muestro el SpeedButton de "Generar Reporte"

        //Muestro la opción de "Generar Reporte" en el MainMenu






        //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
        //En dependencia del idioma imperante
        if (IdiomaImperante = 'Espannol')
          then
            begin
              frmPrincipal.Caption:= 'HostalWare - Sistema de Hospedaje Automatizado';
            end
              else
                begin
                  if (IdiomaImperante = 'Ingles')
                    then
                      begin
                        frmPrincipal.Caption:= 'HostalWare - Sistema de Hospedaje Automatizado';
                      end;
                end;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.ExportarHaciaPDFReporteRegistrosDeHuespedes;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
        //En dependencia del idioma imperante
        if (IdiomaImperante = 'Espannol')
          then
            begin
              frmPrincipal.Caption:= 'HostalWare. Exportando el Reporte de Registros a PDF';
            end
              else
                begin
                  if (IdiomaImperante = 'Ingles')
                    then
                      begin
                        frmPrincipal.Caption:= 'HostalWare. Exportando el Reporte de Registros a PDF';
                      end;
                end;

        //*** Usando QuickReport ***
        //Relleno los valores adicionales en el reporte
        //En dependencia de los filtros empleados
        if (cmbxFiltrarRegistrosPorPiso.Text = 'TODOS')
          then
            begin //Los registros de cualquier piso
              if (cmbxFiltrarRegistrosPorMotivo.Text = 'TODOS')
                then
                  begin //De todos los pisos, con cualquier motivo
                    //Especifico los DataSet de los componentes DB del QuickReport
                    QuickReportRegistroDeHuespedes.DataSet:= DataModuleRegistroDeHuespedes.ADOStoredProcMostrarHuespedesTotales;

                    QuickReportRegistroDeHuespedes.QRDBtxtNombre.DataSet:= DataModuleRegistroDeHuespedes.ADOStoredProcMostrarHuespedesTotales;
                    QuickReportRegistroDeHuespedes.QRDBtxtApellidos.DataSet:= DataModuleRegistroDeHuespedes.ADOStoredProcMostrarHuespedesTotales;
                    QuickReportRegistroDeHuespedes.QRDBtxtCarneIdentidad.DataSet:= DataModuleRegistroDeHuespedes.ADOStoredProcMostrarHuespedesTotales;
                    QuickReportRegistroDeHuespedes.QRDBtxtNumeroHabitacion.DataSet:= DataModuleRegistroDeHuespedes.ADOStoredProcMostrarHuespedesTotales;
                    QuickReportRegistroDeHuespedes.QRDBtxtTipoCama.DataSet:= DataModuleRegistroDeHuespedes.ADOStoredProcMostrarHuespedesTotales;
                    QuickReportRegistroDeHuespedes.QRDBtxtMotivoHospedaje.DataSet:= DataModuleRegistroDeHuespedes.ADOStoredProcMostrarHuespedesTotales;
                    QuickReportRegistroDeHuespedes.QRDBtxtPais.DataSet:= DataModuleRegistroDeHuespedes.ADOStoredProcMostrarHuespedesTotales;

                    //Conformo los captions del QuickReport
                    QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de todos las Huéspedes Registrados en el centro.';
                    QuickReportRegistroDeHuespedes.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                    //Actualizo y muestro los registros

                  end
                    else
                      begin  //No todos los motivos
                        if (cmbxFiltrarRegistrosPorMotivo.Text <> 'TODOS')
                          then
                            begin //De todos los pisos, con un motivo en especifico
                              //Especifico los DataSet de los componentes DB del QuickReport
                              QuickReportRegistroDeHuespedes.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivo;

                              QuickReportRegistroDeHuespedes.QRDBtxtNombre.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivo;
                              QuickReportRegistroDeHuespedes.QRDBtxtApellidos.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivo;
                              QuickReportRegistroDeHuespedes.QRDBtxtCarneIdentidad.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivo;
                              QuickReportRegistroDeHuespedes.QRDBtxtNumeroHabitacion.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivo;
                              QuickReportRegistroDeHuespedes.QRDBtxtTipoCama.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivo;
                              QuickReportRegistroDeHuespedes.QRDBtxtMotivoHospedaje.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivo;
                              QuickReportRegistroDeHuespedes.QRDBtxtPais.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivo;

                              //Conformo los captions del QuickReport
                              //En dependencia del Motivo de Hospedaje, redacto el titular
                              if (cmbxFiltrarRegistrosPorMotivo.Text = 'Curso')
                                then
                                  begin
                                    QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados que estudian un curso.';
                                  end
                                    else
                                      begin
                                        if (cmbxFiltrarRegistrosPorMotivo.Text = 'Entrenamiento')
                                          then
                                            begin
                                              QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados que se encuentran en Entrenamiento.';
                                            end
                                              else
                                                begin
                                                  if (cmbxFiltrarRegistrosPorMotivo.Text = 'Diplomado')
                                                    then
                                                      begin
                                                        QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados que estudian un Diplomado.';
                                                      end
                                                        else
                                                          begin
                                                            if (cmbxFiltrarRegistrosPorMotivo.Text = 'Especialidad')
                                                              then
                                                                begin
                                                                  QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados que estudian una Especialidad.';
                                                                end
                                                                  else
                                                                    begin
                                                                      if (cmbxFiltrarRegistrosPorMotivo.Text = 'Maestría')
                                                                        then
                                                                          begin
                                                                            QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados que estudian una Maestría.';
                                                                          end
                                                                            else
                                                                              begin
                                                                                if (cmbxFiltrarRegistrosPorMotivo.Text = 'Doctorado')
                                                                                  then
                                                                                    begin
                                                                                      QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados que estudian un Doctorado.';
                                                                                    end
                                                                                      else
                                                                                        begin
                                                                                          if (cmbxFiltrarRegistrosPorMotivo.Text = 'Trabajador Interno')
                                                                                            then
                                                                                              begin
                                                                                                QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados que son Trabajadores Internos';
                                                                                              end
                                                                                                else
                                                                                                  begin
                                                                                                    if (cmbxFiltrarRegistrosPorMotivo.Text = 'Interés del Centro')
                                                                                                      then
                                                                                                        begin
                                                                                                          QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados que responden a un Interés del Centro.';
                                                                                                        end
                                                                                                          else
                                                                                                            begin
                                                                                                              if (cmbxFiltrarRegistrosPorMotivo.Text = 'Taller')
                                                                                                                then
                                                                                                                  begin
                                                                                                                    QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados que participan en un Taller.';
                                                                                                                  end
                                                                                                                    else
                                                                                                                      begin
                                                                                                                        if (cmbxFiltrarRegistrosPorMotivo.Text = 'Reunión Nacional')
                                                                                                                          then
                                                                                                                            begin
                                                                                                                              QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados que participan en una Reunión Nacional.';
                                                                                                                            end
                                                                                                                              else
                                                                                                                                begin
                                                                                                                                  if (cmbxFiltrarRegistrosPorMotivo.Text = 'Evento Científico')
                                                                                                                                    then
                                                                                                                                      begin
                                                                                                                                        QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados que participan en un Evento Científico.';
                                                                                                                                      end
                                                                                                                                        else
                                                                                                                                          begin
                                                                                                                                            if (cmbxFiltrarRegistrosPorMotivo.Text = 'Otros')
                                                                                                                                              then
                                                                                                                                                begin
                                                                                                                                                  QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados por otros motivos diversos.';
                                                                                                                                                end;
                                                                                                                                          end;
                                                                                                                                end;
                                                                                                                      end;
                                                                                                            end;
                                                                                                  end;
                                                                                        end;
                                                                              end;
                                                                    end;
                                                          end;
                                                end;
                                      end;
                              //QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados por: ' + cmbxFiltrarRegistrosPorMotivo.Text + '.';
                              QuickReportRegistroDeHuespedes.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                              //Actualizo y muestro los registros

                            end;
                      end;
            end
              else
                begin //No de todos los pisos
                  if (cmbxFiltrarRegistrosPorMotivo.Text = 'TODOS')
                    then
                      begin //De un piso en especifico, con cualquier motivo
                        //Especifico los DataSet de los componentes DB del QuickReport
                        QuickReportRegistroDeHuespedes.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorPiso;

                        QuickReportRegistroDeHuespedes.QRDBtxtNombre.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorPiso;
                        QuickReportRegistroDeHuespedes.QRDBtxtApellidos.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorPiso;
                        QuickReportRegistroDeHuespedes.QRDBtxtCarneIdentidad.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorPiso;
                        QuickReportRegistroDeHuespedes.QRDBtxtNumeroHabitacion.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorPiso;
                        QuickReportRegistroDeHuespedes.QRDBtxtTipoCama.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorPiso;
                        QuickReportRegistroDeHuespedes.QRDBtxtMotivoHospedaje.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorPiso;
                        QuickReportRegistroDeHuespedes.QRDBtxtPais.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorPiso;

                        //Conformo los captions del QuickReport
                        QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados en el ' + cmbxFiltrarRegistrosPorPiso.Text + '.';
                        QuickReportRegistroDeHuespedes.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                        //Actualizo y muestro los registros

                      end
                        else
                          begin  //No todos los motivos
                            if (cmbxFiltrarRegistrosPorMotivo.Text <> 'TODOS')
                              then
                                begin //De un piso en especifico, con un motivo en especifico
                                  //Especifico los DataSet de los componentes DB del QuickReport
                                  QuickReportRegistroDeHuespedes.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivoYPorPiso;

                                  QuickReportRegistroDeHuespedes.QRDBtxtNombre.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivoYPorPiso;
                                  QuickReportRegistroDeHuespedes.QRDBtxtApellidos.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivoYPorPiso;
                                  QuickReportRegistroDeHuespedes.QRDBtxtCarneIdentidad.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivoYPorPiso;
                                  QuickReportRegistroDeHuespedes.QRDBtxtNumeroHabitacion.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivoYPorPiso;
                                  QuickReportRegistroDeHuespedes.QRDBtxtTipoCama.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivoYPorPiso;
                                  QuickReportRegistroDeHuespedes.QRDBtxtMotivoHospedaje.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivoYPorPiso;
                                  QuickReportRegistroDeHuespedes.QRDBtxtPais.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivoYPorPiso;

                                  //Conformo los captions del QuickReport
                                  //En dependencia del Motivo de Hospedaje, redacto el titular
                                  if (cmbxFiltrarRegistrosPorMotivo.Text = 'Curso')
                                    then
                                      begin
                                        QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados en el ' + cmbxFiltrarRegistrosPorPiso.Text + ' y que estudian un curso.';
                                      end
                                        else
                                          begin
                                            if (cmbxFiltrarRegistrosPorMotivo.Text = 'Entrenamiento')
                                              then
                                                begin
                                                  QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados en el ' + cmbxFiltrarRegistrosPorPiso.Text + ' y que se encuentran en Entrenamiento.';
                                                end
                                                  else
                                                    begin
                                                      if (cmbxFiltrarRegistrosPorMotivo.Text = 'Diplomado')
                                                        then
                                                          begin
                                                            QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados en el ' + cmbxFiltrarRegistrosPorPiso.Text + ' y que estudian un Diplomado.';
                                                          end
                                                            else
                                                              begin
                                                                if (cmbxFiltrarRegistrosPorMotivo.Text = 'Especialidad')
                                                                  then
                                                                    begin
                                                                      QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados en el ' + cmbxFiltrarRegistrosPorPiso.Text + ' y que estudian una Especialidad.';
                                                                    end
                                                                      else
                                                                        begin
                                                                          if (cmbxFiltrarRegistrosPorMotivo.Text = 'Maestría')
                                                                            then
                                                                              begin
                                                                                QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados en el ' + cmbxFiltrarRegistrosPorPiso.Text + ' y que estudian una Maestría.';
                                                                              end
                                                                                else
                                                                                  begin
                                                                                    if (cmbxFiltrarRegistrosPorMotivo.Text = 'Doctorado')
                                                                                      then
                                                                                        begin
                                                                                          QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados en el ' + cmbxFiltrarRegistrosPorPiso.Text + ' y que estudian un Doctorado.';
                                                                                        end
                                                                                          else
                                                                                            begin
                                                                                              if (cmbxFiltrarRegistrosPorMotivo.Text = 'Trabajador Interno')
                                                                                                then
                                                                                                  begin
                                                                                                    QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados en el ' + cmbxFiltrarRegistrosPorPiso.Text + ' y que son Trabajadores Internos';
                                                                                                  end
                                                                                                    else
                                                                                                      begin
                                                                                                        if (cmbxFiltrarRegistrosPorMotivo.Text = 'Interés del Centro')
                                                                                                          then
                                                                                                            begin
                                                                                                              QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados en el ' + cmbxFiltrarRegistrosPorPiso.Text + ' y que responden a un Interés del Centro.';
                                                                                                            end
                                                                                                              else
                                                                                                                begin
                                                                                                                  if (cmbxFiltrarRegistrosPorMotivo.Text = 'Otros')
                                                                                                                    then
                                                                                                                      begin
                                                                                                                        QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados en el ' + cmbxFiltrarRegistrosPorPiso.Text + ' y por motivos diversos.';
                                                                                                                      end;
                                                                                                                end;
                                                                                                      end;
                                                                                            end;
                                                                                  end;
                                                                        end;
                                                              end;
                                                    end;
                                          end;
                                  //QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados en el ' + cmbxFiltrarRegistrosPorPiso.Text + ' y por: ' + cmbxFiltrarRegistrosPorMotivo.Text + '.';
                                  QuickReportRegistroDeHuespedes.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                                  //Actualizo y muestro los registros

                                end;
                          end;
                end;

        //Le envio el reporte hacia el ExportQR
        //QuickReportHabitacionesExistentes.Prepare;
        EXQR.Report := QuickReportRegistroDeHuespedes;

        //Mando a que el ExportQR exporte el reporte ya almacenado
        EXQR.ExportQR;

        //Probé exportando directamente hacia PDF pero salva en la raiz directamente, no saca la bandeja de diálogo
        //EXQR.ExportQRPDF('Resumen P. de Excelencia (' + ComboBoxSemestreResumenesDeExcelencia.Text + ' del año ' + anno + ') ' + DptoCapacitacion.ObtenerFechaDelSistema, False, True);
        //EXQR.ExportQRPDF('Hola', True); esta debería servir, pero no

        QuickReportRegistroDeHuespedes.QRPrinter.Free;
        QuickReportRegistroDeHuespedes.QRPrinter := nil;


        //---- *** A partir de aquí restituyo el estado de los componentes *** ----

        //Actualizo los Registros
        ActualizarRegistros;

        //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
        //En dependencia del idioma imperante
        if (IdiomaImperante = 'Espannol')
          then
            begin
              frmPrincipal.Caption:= 'HostalWare - Sistema de Hospedaje Automatizado';
            end
              else
                begin
                  if (IdiomaImperante = 'Ingles')
                    then
                      begin
                        frmPrincipal.Caption:= 'HostalWare - Sistema de Hospedaje Automatizado';
                      end;
                end;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.ExportarHaciaPDFReporteReservaciones;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
      
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.ExportarHaciaPDFReporteTrazasDelSistema;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
        //En dependencia del idioma imperante
        if (IdiomaImperante = 'Espannol')
          then
            begin
              frmPrincipal.Caption:= 'HostalWare. Exportando el Reporte de Trazas del Sistema a PDF';
            end
              else
                begin
                  if (IdiomaImperante = 'Ingles')
                    then
                      begin
                        frmPrincipal.Caption:= 'HostalWare. Exportando el Reporte de Trazas del Sistema a PDF';
                      end;
                end;
                      
        //*** Usando QuickReport ***
        //Relleno los valores adicionales en el reporte
        //Especifico los DataSet de los componentes DB del QuickReport
        QuickReportTrazasDelSistema.DataSet:= DataModuleControlDelSistema.ADOStoredProcSelecTodasLasTrazas;

        QuickReportTrazasDelSistema.QRDBtxtFecha.DataSet:= DataModuleControlDelSistema.ADOStoredProcSelecTodasLasTrazas;
        QuickReportTrazasDelSistema.QRDBtxtUsuario.DataSet:= DataModuleControlDelSistema.ADOStoredProcSelecTodasLasTrazas;
        QuickReportTrazasDelSistema.QRDBtxtAccionRealizada.DataSet:= DataModuleControlDelSistema.ADOStoredProcSelecTodasLasTrazas;

        //Conformo los captions del QuickReport
        QuickReportTrazasDelSistema.QRlblReferente.Caption:= 'Reporte de las Trazas del Sistema.';
        QuickReportTrazasDelSistema.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

        //Actualizo y muestro las Trazas
        HostalWare.MostrarTodasLasTrazas;

        //Le envio el reporte hacia el ExportQR
        //QuickReportHabitacionesExistentes.Prepare;
        EXQR.Report := QuickReportTrazasDelSistema;

        //Mando a que el ExportQR exporte el reporte ya almacenado
        EXQR.ExportQR;

        //Probé exportando directamente hacia PDF pero salva en la raiz directamente, no saca la bandeja de diálogo
        //EXQR.ExportQRPDF('Resumen P. de Excelencia (' + ComboBoxSemestreResumenesDeExcelencia.Text + ' del año ' + anno + ') ' + DptoCapacitacion.ObtenerFechaDelSistema, False, True);
        //EXQR.ExportQRPDF('Hola', True); esta debería servir, pero no

        QuickReportTrazasDelSistema.QRPrinter.Free;
        QuickReportTrazasDelSistema.QRPrinter := nil;


        //---- *** A partir de aquí restituyo el estado de los componentes *** ----

        //Actualizo y muestro las Trazas
        HostalWare.MostrarTodasLasTrazas;

        //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
        //En dependencia del idioma imperante
        if (IdiomaImperante = 'Espannol')
          then
            begin
              frmPrincipal.Caption:= 'HostalWare - Sistema de Hospedaje Automatizado';
            end
              else
                begin
                  if (IdiomaImperante = 'Ingles')
                    then
                      begin
                        frmPrincipal.Caption:= 'HostalWare - Sistema de Hospedaje Automatizado';
                      end;
                end;
              
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.DetallarTrazaDelSistema;
label Ejecutar, Salida;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Verifico si existe al menos una Traza
        if (HostalWare.CantidadDeTrazas <> 0)
          then
            begin // Ejecuto el procedimiento
              goto Ejecutar;
            end
              else
                begin
                  //Salgo del procedimiento
                  goto Salida;
                end;
                
        //Label de ejecucion, cuando todo esta OK
        Ejecutar:

        //Muestro la forma de detalles de la Traza seleccionada
        frmDetallesDeTrazasDelSistema.Position:= poScreenCenter;
        frmDetallesDeTrazasDelSistema.ShowModal;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
          
  //Salida, cuando algo esta mal
  Salida:
end;



procedure TfrmPrincipal.Permutar;
label Ejecutar, Salida;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Debo verificar primero si existe al menos un huesped en el DBGrid
        //En dependencia del filtrado por pisos escogido
        if (cmbxFiltrarRegistrosPorPiso.Text = 'TODOS')
          then
            begin //** Todos los pisos
              if (cmbxFiltrarRegistrosPorMotivo.Text = 'TODOS')
                then
                  begin //Todos los motivos, para todos los pisos
                    if (HostalWare.CantidadDeHuespedesTotales <> 0)
                      then
                        begin //Ejecuto el procedimiento
                          goto Ejecutar;
                        end
                          else
                            begin
                              //Salgo del procedimiento
                              goto Salida;
                            end;
                  end
                    else
                      begin //Un motivo en específico, para todos los pisos
                        if (HostalWare.CantidadDeHuespedesPorMotivo <> 0)
                          then
                            begin //Ejecuto el procedimiento
                              goto Ejecutar;
                            end
                              else
                                begin
                                  //Salgo del procedimiento
                                  goto Salida;
                                end;
                      end;
            end
              else
                begin //** Un piso en especifico
                  if (cmbxFiltrarRegistrosPorMotivo.Text = 'TODOS')
                    then
                      begin //Todos los motivos, para un piso en especifico
                        if (HostalWare.CantidadDeHuespedesPorPiso <> 0)
                          then
                            begin //Ejecuto el procedimiento
                              goto Ejecutar;
                            end
                              else
                                begin
                                  //Salgo del procedimiento
                                  goto Salida;
                                end;
                      end
                        else
                          begin  //Un motivo en específico, para un piso en especifico
                            if (HostalWare.CantidadDeHuespedesPorMotivoYPorPiso <> 0)
                              then
                                begin //Ejecuto el procedimiento
                                  goto Ejecutar;
                                end
                                  else
                                    begin
                                      //Salgo del procedimiento
                                      goto Salida;
                                    end;
                          end;
                end;


        //Label de Ejecución cuando todo está OK
        Ejecutar:

        //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
        frmPrincipal.Caption:= 'HostalWare, Registro de Huéspedes. Permutando un Registro.';

        //Le envio el ID del Huesped (A), hacia la forma de Permuta de Registro
        frmPermutarRegistro.FID_Huesped_A:= StrToInt(DBTextID_Huesped.Field.Text);

        //Le envio el ID de la cama del Huesped (A), hacia la forma de Permuta de Registro
        frmPermutarRegistro.FID_Cama_A:= StrToInt(DBTextID_CamaDeHuesped.Field.Text);

        //Muestro la forma de Permuta de Registro
        frmPermutarRegistro.Position:= poDesktopCenter;
        frmPermutarRegistro.ShowModal;

        //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
        frmPrincipal.Caption:= 'HostalWare - Sistema de Hospedaje Automatizado';
                
        //Mando a actualizar los Registros de Huespedes
        ActualizarRegistros;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;

  //Salida del procedimiento
  Salida:
end;



procedure TfrmPrincipal.Trasladar;
label Ejecutar, Salida;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Debo verificar primero si existe al menos un huesped en el DBGrid
        //En dependencia del filtrado por pisos escogido
        if (cmbxFiltrarRegistrosPorPiso.Text = 'TODOS')
          then
            begin //** Todos los pisos
              if (cmbxFiltrarRegistrosPorMotivo.Text = 'TODOS')
                then
                  begin //Todos los motivos, para todos los pisos
                    if (HostalWare.CantidadDeHuespedesTotales <> 0)
                      then
                        begin //Ejecuto el procedimiento
                          goto Ejecutar;
                        end
                          else
                            begin
                              //Salgo del procedimiento
                              goto Salida;
                            end;
                  end
                    else
                      begin //Un motivo en específico, para todos los pisos
                        if (HostalWare.CantidadDeHuespedesPorMotivo <> 0)
                          then
                            begin //Ejecuto el procedimiento
                              goto Ejecutar;
                            end
                              else
                                begin
                                  //Salgo del procedimiento
                                  goto Salida;
                                end;
                      end;
            end
              else
                begin //** Un piso en especifico
                  if (cmbxFiltrarRegistrosPorMotivo.Text = 'TODOS')
                    then
                      begin //Todos los motivos, para un piso en especifico
                        if (HostalWare.CantidadDeHuespedesPorPiso <> 0)
                          then
                            begin //Ejecuto el procedimiento
                              goto Ejecutar;
                            end
                              else
                                begin
                                  //Salgo del procedimiento
                                  goto Salida;
                                end;
                      end
                        else
                          begin  //Un motivo en específico, para un piso en especifico
                            if (HostalWare.CantidadDeHuespedesPorMotivoYPorPiso <> 0)
                              then
                                begin //Ejecuto el procedimiento
                                  goto Ejecutar;
                                end
                                  else
                                    begin
                                      //Salgo del procedimiento
                                      goto Salida;
                                    end;
                          end;
                end;


        //Label de Ejecución cuando todo está OK
        Ejecutar:

        //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
        frmPrincipal.Caption:= 'HostalWare, Registro de Huéspedes. Trasladando un Registro.';

        //Le envio el ID del Huesped, hacia la forma de Traslado de datos de Registro
        frmTrasladarRegistro.FID_Huesped:= StrToInt(DBTextID_Huesped.Field.Text);

        //Le envio el ID de la cama del Huesped (la inicial), hacia la forma de Traslado de datos de Registro
        frmTrasladarRegistro.FID_Cama:= StrToInt(DBTextID_CamaDeHuesped.Field.Text);

        //Muestro la forma de Modificación de datos de Registro
        frmTrasladarRegistro.Position:= poDesktopCenter;
        frmTrasladarRegistro.ShowModal;

        //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
        frmPrincipal.Caption:= 'HostalWare - Sistema de Hospedaje Automatizado';
                
        //Mando a actualizar los Registros de Huespedes
        ActualizarRegistros;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
          
  //Salida, cuando algo está mal
  Salida:
end;



procedure TfrmPrincipal.ImprimirReporteAlertas;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //*** Usando QuickReport ***
        //Relleno los valores adicionales en el reporte
        //Especifico los DataSet de los componentes DB del QuickReport
        QuickReportAlertasDelSistema.DataSet:= DataModuleAlertasDelSistema.spSelecTodasLasAlertasDelSistema;

        QuickReportAlertasDelSistema.QRDBtxtMotivoDeAlerta.DataSet:= DataModuleAlertasDelSistema.spSelecTodasLasAlertasDelSistema;
        QuickReportAlertasDelSistema.QRDBtxtDescripcionDeAlerta.DataSet:= DataModuleAlertasDelSistema.spSelecTodasLasAlertasDelSistema;

        //Conformo los captions del QuickReport
        QuickReportAlertasDelSistema.QRlblReferente.Caption:= 'Reporte de las Alertas del Sistema.';
        QuickReportAlertasDelSistema.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

        //Actualizo y muestro las alertas
        ActualizarAlertasDelSistema;

        //Imprimo el reporte
        QuickReportAlertasDelSistema.Print;

        //Actualizo y muestro las alertas
        ActualizarAlertasDelSistema;      
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.ImprimirReporteCamasExistentes;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //*** Usando QuickReport ***
        //Relleno los valores adicionales en el reporte
        //Especifico los DataSet de los componentes DB del QuickReport
        QuickReportCamasExistentes.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecCamasPorID_Habitacion;

        QuickReportCamasExistentes.QRDBtxtNumeroSerie.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecCamasPorID_Habitacion;
        QuickReportCamasExistentes.QRDBtxtTipoCama.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecCamasPorID_Habitacion;
        QuickReportCamasExistentes.QRDBtxtEstadoOcupacional.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecCamasPorID_Habitacion;

        //Conformo los captions del QuickReport
        QuickReportCamasExistentes.QRlblReferente.Caption:= 'Reporte de las camas existentes en la habitación ' + DBGridHabitacionesExistentes.SelectedField.Text + '.';
        QuickReportCamasExistentes.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

        //Actualizo y muestro las camas
        ActualizarSoloCamas;

        //Envio datos adicionales para el Preview
        frmPreviewReporteCamasExistentes.IdiomaImperante:= IdiomaImperante;
        frmPreviewReporteCamasExistentes.FechaDelSistema:= ObtenerFechaDelSistema;

        //Imprimo el reporte (Quick Report, vista previa)
        QuickReportCamasExistentes.Print;

        //Actualizo y muestro las camas
        ActualizarSoloCamas;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.ImprimirReporteCuentasDeUsuario;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //*** Usando QuickReport ***
        //Relleno los valores adicionales en el reporte
        //Especifico los DataSet de los componentes DB del QuickReport
        QuickReportCuentasDeUsuarios.DataSet:= DataModuleControlDelSistema.ADOStoredProcSelecPuestosDeTrabajo;

        QuickReportCuentasDeUsuarios.QRDBtxtUsuario.DataSet:= DataModuleControlDelSistema.ADOStoredProcSelecPuestosDeTrabajo;
        QuickReportCuentasDeUsuarios.QRDBtxtPrivilegio.DataSet:= DataModuleControlDelSistema.ADOStoredProcSelecPuestosDeTrabajo;
        QuickReportCuentasDeUsuarios.QRDBtxtNombre.DataSet:= DataModuleControlDelSistema.ADOStoredProcSelecPuestosDeTrabajo;
        QuickReportCuentasDeUsuarios.QRDBtxtPrimerApellido.DataSet:= DataModuleControlDelSistema.ADOStoredProcSelecPuestosDeTrabajo;
        QuickReportCuentasDeUsuarios.QRDBtxtSegundoApellido.DataSet:= DataModuleControlDelSistema.ADOStoredProcSelecPuestosDeTrabajo;        

        //Conformo los captions del QuickReport
        QuickReportCuentasDeUsuarios.QRlblReferente.Caption:= 'Reporte de las Cuentas de Usuarios.';
        QuickReportCuentasDeUsuarios.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

        //Actualizo y muestro as Cuentas de Usuarios
        HostalWare.MostrarPuestosDeTrabajo;

        //Envio datos adicionales para el Preview
        frmPreviewReporteCuentasDeUsuarios.IdiomaImperante:= IdiomaImperante;
        frmPreviewReporteCuentasDeUsuarios.FechaDelSistema:= ObtenerFechaDelSistema;

        //Imprimo el reporte
        QuickReportCuentasDeUsuarios.Print;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.ImprimirReporteHabitaciones;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //*** Usando QuickReport ***
        //Relleno los valores adicionales en el reporte
        //En dependencia de los filtros empleados
        if (ComboBoxFiltroParaHabitaciones.Text = 'TODOS')
          then
            begin 
              if (ComboBoxFiltroPorCapacidad.Text = 'TODOS')
                then
                  begin //Todos los cuartos, de cualquier capacidad
                    //Especifico los DataSet de los componentes DB del QuickReport
                    QuickReportHabitacionesExistentes.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones;

                    QuickReportHabitacionesExistentes.QRDBtxtNumeroHabitacion.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones;
                    QuickReportHabitacionesExistentes.QRDBtxtVentiladores.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones;
                    QuickReportHabitacionesExistentes.QRDBtxtArmario.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones;
                    QuickReportHabitacionesExistentes.QRDBtxtCloset.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones;
                    QuickReportHabitacionesExistentes.QRDBtxtEspejo.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones;
                    QuickReportHabitacionesExistentes.QRDBtxtMesitasNoche.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones;
                    QuickReportHabitacionesExistentes.QRDBtxtAireAcondicionado.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones;
                    QuickReportHabitacionesExistentes.QRDBtxtAguaCaliente.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones;
                    QuickReportHabitacionesExistentes.QRDBtxtTelefonoInterno.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones;
                    QuickReportHabitacionesExistentes.QRDBtxtTelefonoDirecto.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones;

                    //Conformo los captions del QuickReport
                    QuickReportHabitacionesExistentes.QRlblReferente.Caption:= 'Reporte de todas las habitaciones existentes en el centro.';
                    QuickReportHabitacionesExistentes.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                    //Actualizo y muestro las capacidades

                  end
                    else
                      begin  //Todos los cuartos, de una capacidad especifica
                        if (ComboBoxFiltroPorCapacidad.Text = 'Con Vacantes')
                          then
                            begin //Todos los cuartos, con vacantes
                              //Especifico los DataSet de los componentes DB del QuickReport
                              QuickReportHabitacionesExistentes.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes;

                              QuickReportHabitacionesExistentes.QRDBtxtNumeroHabitacion.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes;
                              QuickReportHabitacionesExistentes.QRDBtxtVentiladores.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes;
                              QuickReportHabitacionesExistentes.QRDBtxtArmario.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes;
                              QuickReportHabitacionesExistentes.QRDBtxtCloset.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes;
                              QuickReportHabitacionesExistentes.QRDBtxtEspejo.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes;
                              QuickReportHabitacionesExistentes.QRDBtxtMesitasNoche.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes;
                              QuickReportHabitacionesExistentes.QRDBtxtAireAcondicionado.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes;
                              QuickReportHabitacionesExistentes.QRDBtxtAguaCaliente.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes;
                              QuickReportHabitacionesExistentes.QRDBtxtTelefonoInterno.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes;
                              QuickReportHabitacionesExistentes.QRDBtxtTelefonoDirecto.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes;

                              //Conformo los captions del QuickReport
                              QuickReportHabitacionesExistentes.QRlblReferente.Caption:= 'Reporte de todas las habitaciones con vacantes.';
                              QuickReportHabitacionesExistentes.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                              //Actualizo y muestro las capacidades
                              //ActualizarCapacidades;
                            end
                              else
                                begin
                                  if (ComboBoxFiltroPorCapacidad.Text = 'Sin Vacantes')
                                    then
                                      begin //Todos los cuartos, sin vacantes
                                        //Especifico los DataSet de los componentes DB del QuickReport
                                        QuickReportHabitacionesExistentes.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes;

                                        QuickReportHabitacionesExistentes.QRDBtxtNumeroHabitacion.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes;
                                        QuickReportHabitacionesExistentes.QRDBtxtVentiladores.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes;
                                        QuickReportHabitacionesExistentes.QRDBtxtArmario.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes;
                                        QuickReportHabitacionesExistentes.QRDBtxtCloset.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes;
                                        QuickReportHabitacionesExistentes.QRDBtxtEspejo.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes;
                                        QuickReportHabitacionesExistentes.QRDBtxtMesitasNoche.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes;
                                        QuickReportHabitacionesExistentes.QRDBtxtAireAcondicionado.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes;
                                        QuickReportHabitacionesExistentes.QRDBtxtAguaCaliente.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes;
                                        QuickReportHabitacionesExistentes.QRDBtxtTelefonoInterno.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes;
                                        QuickReportHabitacionesExistentes.QRDBtxtTelefonoDirecto.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes;

                                        //Conformo los captions del QuickReport
                                        QuickReportHabitacionesExistentes.QRlblReferente.Caption:= 'Reporte de todas las habitaciones sin vacantes.';
                                        QuickReportHabitacionesExistentes.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                                        //Actualizo y muestro las capacidades
                                        //ActualizarCapacidades;
                                      end;
                                end;
                      end;
            end
              else
                begin
                  if (ComboBoxFiltroPorCapacidad.Text = 'TODOS')
                    then
                      begin  //Un piso en especifico, de cualquier capacidad
                        //Especifico los DataSet de los componentes DB del QuickReport
                        QuickReportHabitacionesExistentes.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;

                        QuickReportHabitacionesExistentes.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;
                        QuickReportHabitacionesExistentes.QRDBtxtNumeroHabitacion.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;
                        QuickReportHabitacionesExistentes.QRDBtxtVentiladores.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;
                        QuickReportHabitacionesExistentes.QRDBtxtArmario.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;
                        QuickReportHabitacionesExistentes.QRDBtxtCloset.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;
                        QuickReportHabitacionesExistentes.QRDBtxtEspejo.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;
                        QuickReportHabitacionesExistentes.QRDBtxtMesitasNoche.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;
                        QuickReportHabitacionesExistentes.QRDBtxtAireAcondicionado.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;
                        QuickReportHabitacionesExistentes.QRDBtxtAguaCaliente.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;
                        QuickReportHabitacionesExistentes.QRDBtxtTelefonoInterno.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;
                        QuickReportHabitacionesExistentes.QRDBtxtTelefonoDirecto.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso;

                        //Conformo los captions del QuickReport
                        QuickReportHabitacionesExistentes.QRlblReferente.Caption:= 'Reporte de las habitaciones del ' + ComboBoxFiltroParaHabitaciones.Text + '.';
                        QuickReportHabitacionesExistentes.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                        //Actualizo y muestro las capacidades
                        //ActualizarCapacidades;
                      end
                        else
                          begin  //Un piso en especifico de una capacidad especifica
                            if (ComboBoxFiltroPorCapacidad.Text = 'Con Vacantes')
                              then
                                begin //Un piso en especifico, con vacantes
                                  //Especifico los DataSet de los componentes DB del QuickReport
                                  QuickReportHabitacionesExistentes.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes;

                                  QuickReportHabitacionesExistentes.QRDBtxtNumeroHabitacion.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes;
                                  QuickReportHabitacionesExistentes.QRDBtxtVentiladores.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes;
                                  QuickReportHabitacionesExistentes.QRDBtxtArmario.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes;
                                  QuickReportHabitacionesExistentes.QRDBtxtCloset.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes;
                                  QuickReportHabitacionesExistentes.QRDBtxtEspejo.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes;
                                  QuickReportHabitacionesExistentes.QRDBtxtMesitasNoche.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes;
                                  QuickReportHabitacionesExistentes.QRDBtxtAireAcondicionado.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes;
                                  QuickReportHabitacionesExistentes.QRDBtxtAguaCaliente.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes;
                                  QuickReportHabitacionesExistentes.QRDBtxtTelefonoInterno.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes;
                                  QuickReportHabitacionesExistentes.QRDBtxtTelefonoDirecto.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes;

                                  //Conformo los captions del QuickReport
                                  QuickReportHabitacionesExistentes.QRlblReferente.Caption:= 'Reporte de las habitaciones con vacantes en el ' + ComboBoxFiltroParaHabitaciones.Text + '.';
                                  QuickReportHabitacionesExistentes.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                                  //Actualizo y muestro las capacidades
                                  //ActualizarCapacidades;
                                end
                                  else
                                    begin
                                      if (ComboBoxFiltroPorCapacidad.Text = 'Sin Vacantes')
                                        then
                                          begin //Un piso en especifico, sin vacantes
                                            //Especifico los DataSet de los componentes DB del QuickReport
                                            QuickReportHabitacionesExistentes.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes;

                                            QuickReportHabitacionesExistentes.QRDBtxtNumeroHabitacion.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes;
                                            QuickReportHabitacionesExistentes.QRDBtxtVentiladores.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes;
                                            QuickReportHabitacionesExistentes.QRDBtxtArmario.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes;
                                            QuickReportHabitacionesExistentes.QRDBtxtCloset.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes;
                                            QuickReportHabitacionesExistentes.QRDBtxtEspejo.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes;
                                            QuickReportHabitacionesExistentes.QRDBtxtMesitasNoche.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes;
                                            QuickReportHabitacionesExistentes.QRDBtxtAireAcondicionado.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes;
                                            QuickReportHabitacionesExistentes.QRDBtxtAguaCaliente.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes;
                                            QuickReportHabitacionesExistentes.QRDBtxtTelefonoInterno.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes;
                                            QuickReportHabitacionesExistentes.QRDBtxtTelefonoDirecto.DataSet:= DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes;

                                            //Conformo los captions del QuickReport
                                            QuickReportHabitacionesExistentes.QRlblReferente.Caption:= 'Reporte de las habitaciones sin vacantes en el ' + ComboBoxFiltroParaHabitaciones.Text + '.';
                                            QuickReportHabitacionesExistentes.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                                            //Actualizo y muestro las capacidades
                                            //ActualizarCapacidades;
                                          end;
                                    end;
                          end;
                end;


        //Envio datos adicionales para el Preview
        frmPreviewReporteHabitacionesExistentes.IdiomaImperante:= IdiomaImperante;
        frmPreviewReporteHabitacionesExistentes.FechaDelSistema:= ObtenerFechaDelSistema;

        //Imprimo el reporte
        QuickReportHabitacionesExistentes.Print;

        //Actualizo y muestro las capacidades
        ActualizarCapacidades;      
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.ImprimirReporteRegistrosDeHuespedes;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //*** Usando QuickReport ***
        //Relleno los valores adicionales en el reporte
        //En dependencia de los filtros empleados
        if (cmbxFiltrarRegistrosPorPiso.Text = 'TODOS')
          then
            begin //Los registros de cualquier piso
              if (cmbxFiltrarRegistrosPorMotivo.Text = 'TODOS')
                then
                  begin //De todos los pisos, con cualquier motivo
                    //Especifico los DataSet de los componentes DB del QuickReport
                    QuickReportRegistroDeHuespedes.DataSet:= DataModuleRegistroDeHuespedes.ADOStoredProcMostrarHuespedesTotales;

                    QuickReportRegistroDeHuespedes.QRDBtxtNombre.DataSet:= DataModuleRegistroDeHuespedes.ADOStoredProcMostrarHuespedesTotales;
                    QuickReportRegistroDeHuespedes.QRDBtxtApellidos.DataSet:= DataModuleRegistroDeHuespedes.ADOStoredProcMostrarHuespedesTotales;
                    QuickReportRegistroDeHuespedes.QRDBtxtCarneIdentidad.DataSet:= DataModuleRegistroDeHuespedes.ADOStoredProcMostrarHuespedesTotales;
                    QuickReportRegistroDeHuespedes.QRDBtxtNumeroHabitacion.DataSet:= DataModuleRegistroDeHuespedes.ADOStoredProcMostrarHuespedesTotales;
                    QuickReportRegistroDeHuespedes.QRDBtxtTipoCama.DataSet:= DataModuleRegistroDeHuespedes.ADOStoredProcMostrarHuespedesTotales;
                    QuickReportRegistroDeHuespedes.QRDBtxtMotivoHospedaje.DataSet:= DataModuleRegistroDeHuespedes.ADOStoredProcMostrarHuespedesTotales;
                    QuickReportRegistroDeHuespedes.QRDBtxtPais.DataSet:= DataModuleRegistroDeHuespedes.ADOStoredProcMostrarHuespedesTotales;

                    //Conformo los captions del QuickReport
                    QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de todos las Huéspedes Registrados en el centro.';
                    QuickReportRegistroDeHuespedes.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                    //Actualizo y muestro los registros

                  end
                    else
                      begin  //No todos los motivos
                        if (cmbxFiltrarRegistrosPorMotivo.Text <> 'TODOS')
                          then
                            begin //De todos los pisos, con un motivo en especifico
                              //Especifico los DataSet de los componentes DB del QuickReport
                              QuickReportRegistroDeHuespedes.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivo;

                              QuickReportRegistroDeHuespedes.QRDBtxtNombre.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivo;
                              QuickReportRegistroDeHuespedes.QRDBtxtApellidos.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivo;
                              QuickReportRegistroDeHuespedes.QRDBtxtCarneIdentidad.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivo;
                              QuickReportRegistroDeHuespedes.QRDBtxtNumeroHabitacion.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivo;
                              QuickReportRegistroDeHuespedes.QRDBtxtTipoCama.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivo;
                              QuickReportRegistroDeHuespedes.QRDBtxtMotivoHospedaje.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivo;
                              QuickReportRegistroDeHuespedes.QRDBtxtPais.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivo;

                              //Conformo los captions del QuickReport
                              //En dependencia del Motivo de Hospedaje, redacto el titular
                              if (cmbxFiltrarRegistrosPorMotivo.Text = 'Curso')
                                then
                                  begin
                                    QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados que estudian un curso.';
                                  end
                                    else
                                      begin
                                        if (cmbxFiltrarRegistrosPorMotivo.Text = 'Entrenamiento')
                                          then
                                            begin
                                              QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados que se encuentran en Entrenamiento.';
                                            end
                                              else
                                                begin
                                                  if (cmbxFiltrarRegistrosPorMotivo.Text = 'Diplomado')
                                                    then
                                                      begin
                                                        QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados que estudian un Diplomado.';
                                                      end
                                                        else
                                                          begin
                                                            if (cmbxFiltrarRegistrosPorMotivo.Text = 'Especialidad')
                                                              then
                                                                begin
                                                                  QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados que estudian una Especialidad.';
                                                                end
                                                                  else
                                                                    begin
                                                                      if (cmbxFiltrarRegistrosPorMotivo.Text = 'Maestría')
                                                                        then
                                                                          begin
                                                                            QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados que estudian una Maestría.';
                                                                          end
                                                                            else
                                                                              begin
                                                                                if (cmbxFiltrarRegistrosPorMotivo.Text = 'Doctorado')
                                                                                  then
                                                                                    begin
                                                                                      QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados que estudian un Doctorado.';
                                                                                    end
                                                                                      else
                                                                                        begin
                                                                                          if (cmbxFiltrarRegistrosPorMotivo.Text = 'Trabajador Interno')
                                                                                            then
                                                                                              begin
                                                                                                QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados que son Trabajadores Internos';
                                                                                              end
                                                                                                else
                                                                                                  begin
                                                                                                    if (cmbxFiltrarRegistrosPorMotivo.Text = 'Interés del Centro')
                                                                                                      then
                                                                                                        begin
                                                                                                          QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados que responden a un Interés del Centro.';
                                                                                                        end
                                                                                                          else
                                                                                                            begin
                                                                                                              if (cmbxFiltrarRegistrosPorMotivo.Text = 'Taller')
                                                                                                                then
                                                                                                                  begin
                                                                                                                    QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados que participan en un Taller.';
                                                                                                                  end
                                                                                                                    else
                                                                                                                      begin
                                                                                                                        if (cmbxFiltrarRegistrosPorMotivo.Text = 'Reunión Nacional')
                                                                                                                          then
                                                                                                                            begin
                                                                                                                              QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados que participan en una Reunión Nacional.';
                                                                                                                            end
                                                                                                                              else
                                                                                                                                begin
                                                                                                                                  if (cmbxFiltrarRegistrosPorMotivo.Text = 'Evento Científico')
                                                                                                                                    then
                                                                                                                                      begin
                                                                                                                                        QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados que participan en un Evento Científico';
                                                                                                                                      end
                                                                                                                                        else
                                                                                                                                          begin
                                                                                                                                            if (cmbxFiltrarRegistrosPorMotivo.Text = 'Otros')
                                                                                                                                              then
                                                                                                                                                begin
                                                                                                                                                  QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados por otros motivos diversos.';
                                                                                                                                                end;
                                                                                                                                          end;
                                                                                                                                end;
                                                                                                                      end;
                                                                                                            end;
                                                                                                  end;
                                                                                        end;
                                                                              end;
                                                                    end;
                                                          end;
                                                end;
                                      end;
                              //QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados por: ' + cmbxFiltrarRegistrosPorMotivo.Text + '.';
                              QuickReportRegistroDeHuespedes.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                              //Actualizo y muestro los registros

                            end;
                      end;
            end
              else
                begin //No de todos los pisos
                  if (cmbxFiltrarRegistrosPorMotivo.Text = 'TODOS')
                    then
                      begin //De un piso en especifico, con cualquier motivo
                        //Especifico los DataSet de los componentes DB del QuickReport
                        QuickReportRegistroDeHuespedes.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorPiso;

                        QuickReportRegistroDeHuespedes.QRDBtxtNombre.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorPiso;
                        QuickReportRegistroDeHuespedes.QRDBtxtApellidos.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorPiso;
                        QuickReportRegistroDeHuespedes.QRDBtxtCarneIdentidad.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorPiso;
                        QuickReportRegistroDeHuespedes.QRDBtxtNumeroHabitacion.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorPiso;
                        QuickReportRegistroDeHuespedes.QRDBtxtTipoCama.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorPiso;
                        QuickReportRegistroDeHuespedes.QRDBtxtMotivoHospedaje.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorPiso;
                        QuickReportRegistroDeHuespedes.QRDBtxtPais.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorPiso;

                        //Conformo los captions del QuickReport
                        QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados en el ' + cmbxFiltrarRegistrosPorPiso.Text + '.';
                        QuickReportRegistroDeHuespedes.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                        //Actualizo y muestro los registros

                      end
                        else
                          begin  //No todos los motivos
                            if (cmbxFiltrarRegistrosPorMotivo.Text <> 'TODOS')
                              then
                                begin //De un piso en especifico, con un motivo en especifico
                                  //Especifico los DataSet de los componentes DB del QuickReport
                                  QuickReportRegistroDeHuespedes.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivoYPorPiso;

                                  QuickReportRegistroDeHuespedes.QRDBtxtNombre.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivoYPorPiso;
                                  QuickReportRegistroDeHuespedes.QRDBtxtApellidos.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivoYPorPiso;
                                  QuickReportRegistroDeHuespedes.QRDBtxtCarneIdentidad.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivoYPorPiso;
                                  QuickReportRegistroDeHuespedes.QRDBtxtNumeroHabitacion.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivoYPorPiso;
                                  QuickReportRegistroDeHuespedes.QRDBtxtTipoCama.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivoYPorPiso;
                                  QuickReportRegistroDeHuespedes.QRDBtxtMotivoHospedaje.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivoYPorPiso;
                                  QuickReportRegistroDeHuespedes.QRDBtxtPais.DataSet:= DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivoYPorPiso;

                                  //Conformo los captions del QuickReport
                                  //En dependencia del Motivo de Hospedaje, redacto el titular
                                  if (cmbxFiltrarRegistrosPorMotivo.Text = 'Curso')
                                    then
                                      begin
                                        QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados en el ' + cmbxFiltrarRegistrosPorPiso.Text + ' y que estudian un curso.';
                                      end
                                        else
                                          begin
                                            if (cmbxFiltrarRegistrosPorMotivo.Text = 'Entrenamiento')
                                              then
                                                begin
                                                  QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados en el ' + cmbxFiltrarRegistrosPorPiso.Text + ' y que se encuentran en Entrenamiento.';
                                                end
                                                  else
                                                    begin
                                                      if (cmbxFiltrarRegistrosPorMotivo.Text = 'Diplomado')
                                                        then
                                                          begin
                                                            QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados en el ' + cmbxFiltrarRegistrosPorPiso.Text + ' y que estudian un Diplomado.';
                                                          end
                                                            else
                                                              begin
                                                                if (cmbxFiltrarRegistrosPorMotivo.Text = 'Especialidad')
                                                                  then
                                                                    begin
                                                                      QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados en el ' + cmbxFiltrarRegistrosPorPiso.Text + ' y que estudian una Especialidad.';
                                                                    end
                                                                      else
                                                                        begin
                                                                          if (cmbxFiltrarRegistrosPorMotivo.Text = 'Maestría')
                                                                            then
                                                                              begin
                                                                                QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados en el ' + cmbxFiltrarRegistrosPorPiso.Text + ' y que estudian una Maestría.';
                                                                              end
                                                                                else
                                                                                  begin
                                                                                    if (cmbxFiltrarRegistrosPorMotivo.Text = 'Doctorado')
                                                                                      then
                                                                                        begin
                                                                                          QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados en el ' + cmbxFiltrarRegistrosPorPiso.Text + ' y que estudian un Doctorado.';
                                                                                        end
                                                                                          else
                                                                                            begin
                                                                                              if (cmbxFiltrarRegistrosPorMotivo.Text = 'Trabajador Interno')
                                                                                                then
                                                                                                  begin
                                                                                                    QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados en el ' + cmbxFiltrarRegistrosPorPiso.Text + ' y que son Trabajadores Internos';
                                                                                                  end
                                                                                                    else
                                                                                                      begin
                                                                                                        if (cmbxFiltrarRegistrosPorMotivo.Text = 'Interés del Centro')
                                                                                                          then
                                                                                                            begin
                                                                                                              QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados en el ' + cmbxFiltrarRegistrosPorPiso.Text + ' y que responden a un Interés del Centro.';
                                                                                                            end
                                                                                                              else
                                                                                                                begin
                                                                                                                  if (cmbxFiltrarRegistrosPorMotivo.Text = 'Otros')
                                                                                                                    then
                                                                                                                      begin
                                                                                                                        QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados en el ' + cmbxFiltrarRegistrosPorPiso.Text + ' y por motivos diversos.';
                                                                                                                      end;
                                                                                                                end;
                                                                                                      end;
                                                                                            end;
                                                                                  end;
                                                                        end;
                                                              end;
                                                    end;
                                          end;
                                  //QuickReportRegistroDeHuespedes.QRlblReferente.Caption:= 'Reporte de Huéspedes Registrados en el ' + cmbxFiltrarRegistrosPorPiso.Text + ' y por: ' + cmbxFiltrarRegistrosPorMotivo.Text + '.';
                                  QuickReportRegistroDeHuespedes.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                                  //Actualizo y muestro los registros

                                end;
                          end;
                end;


        //Envio datos adicionales para el Preview
        frmPreviewReporteRegistroDeHuespedes.IdiomaImperante:= IdiomaImperante;
        frmPreviewReporteRegistroDeHuespedes.FechaDelSistema:= ObtenerFechaDelSistema;

        //Imprimo el reporte
        QuickReportRegistroDeHuespedes.Print;
        
        //Actualizo y muestro los registros
        ActualizarRegistros;      
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.ImprimirReporteReservaciones;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
      
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.ImprimirReporteTrazasDelSistema;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //*** Usando QuickReport ***
        //Relleno los valores adicionales en el reporte
        //Especifico los DataSet de los componentes DB del QuickReport
        QuickReportTrazasDelSistema.DataSet:= DataModuleControlDelSistema.ADOStoredProcSelecTodasLasTrazas;

        QuickReportTrazasDelSistema.QRDBtxtFecha.DataSet:= DataModuleControlDelSistema.ADOStoredProcSelecTodasLasTrazas;
        QuickReportTrazasDelSistema.QRDBtxtUsuario.DataSet:= DataModuleControlDelSistema.ADOStoredProcSelecTodasLasTrazas;
        QuickReportTrazasDelSistema.QRDBtxtAccionRealizada.DataSet:= DataModuleControlDelSistema.ADOStoredProcSelecTodasLasTrazas;

        //Conformo los captions del QuickReport
        QuickReportTrazasDelSistema.QRlblReferente.Caption:= 'Reporte de las Trazas del Sistema.';
        QuickReportTrazasDelSistema.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

        //Actualizo y muestro las Trazas
        HostalWare.MostrarTodasLasTrazas;

        //Envio datos adicionales para el Preview
        frmPreviewReporteTrazasDelSistema.IdiomaImperante:= IdiomaImperante;
        frmPreviewReporteTrazasDelSistema.FechaDelSistema:= ObtenerFechaDelSistema;

        //Imprimo el reporte
        QuickReportTrazasDelSistema.Print;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.CerrarLaAplicacion;
begin
  //En dependencia del idioma imperante
  if (IdiomaImperante = 'Espannol')
    then
      begin
        if MessageDlg('¿Desea cerrar el sistema HostalWare?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
          then
            begin
              //Compruebo si existe conexión con la BD
              if (HostalWare.ExisteConexionConLaBD)
                then
                  begin
                    //Inserto la Traza
                    HostalWare.GuardarTrazaDelSistema('Salió del sistema HostalWare');

                    //Actualizo todas las trazas
                    HostalWare.MostrarTodasLasTrazas;

                    //Desloggeo al usuario
                    HostalWare.DesloggearAlUsuario;

                    //Me desconecto de la BD
                    HostalWare.EliminarConexionConLaBD;
                  end;

              //Restituyo la resolución de la pantalla
              CambiarResolucion(AnchoOriginalPantalla, AltoOriginalPantalla);

              //Termino la aplicación
              Application.Terminate;
            end;
      end
        else
          begin
            if (IdiomaImperante = 'Ingles')
              then
                begin
                  if MessageDlg('Do you want to close the HostalWare system?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
                    then
                      begin
                        //Compruebo si existe conexión con la BD
                        if (HostalWare.ExisteConexionConLaBD)
                          then
                            begin
                              //Inserto la Traza
                              HostalWare.GuardarTrazaDelSistema('Salió del sistema HostalWare');

                              //Actualizo todas las trazas
                              HostalWare.MostrarTodasLasTrazas;

                              //Desloggeo al usuario
                              HostalWare.DesloggearAlUsuario;

                              //Me desconecto de la BD
                              HostalWare.EliminarConexionConLaBD;
                            end;

                        //Restituyo la resolución de la pantalla
                        CambiarResolucion(AnchoOriginalPantalla, AltoOriginalPantalla);

                        //Termino la aplicación
                        Application.Terminate;
                      end;
                end
                  else
                    begin //Otro lenguaje aun no comprendido, o sino por edicion no autorizada del fichero de idioma
                      //Compruebo si existe conexión con la BD
                      if (HostalWare.ExisteConexionConLaBD)
                        then
                          begin
                            //Inserto la Traza
                            HostalWare.GuardarTrazaDelSistema('Salió del sistema HostalWare');

                            //Actualizo todas las trazas
                            HostalWare.MostrarTodasLasTrazas;

                            //Desloggeo al usuario
                            HostalWare.DesloggearAlUsuario;

                            //Me desconecto de la BD
                            HostalWare.EliminarConexionConLaBD;
                          end;
                          
                      //Restituyo la resolución de la pantalla
                      CambiarResolucion(AnchoOriginalPantalla, AltoOriginalPantalla);

                      //Termino la aplicación
                      Application.Terminate;
                    end;
          end;
end;



procedure TfrmPrincipal.AgregarCuentaDeUsuario;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
        frmPrincipal.Caption:= 'HostalWare, Cuentas de Usuario. Creando una nueva cuenta.';

        //Muestro la forma de entrada de Puestos de Trabajo
        frmNuevoPuestoDeTrabajo.Position:= poScreenCenter;
        frmNuevoPuestoDeTrabajo.ShowModal;

        //Muestro la cantidad de Puestos de Trabajo que existen creados en la BD
        lblCantidadPuestosDeTrabajo.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDePuestosDeTrabajo) + ' Puestos de Trabajo.' ;

        //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
        frmPrincipal.Caption:= 'HostalWare - Sistema de Hospedaje Automatizado';
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.EliminarCuentaDeUsuario;
var
  usuario: AnsiString;
  NombreCompleto: String;
  Privilegios: String;
  label Ejecutar, Salida;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Debo verificar si existe al menos una Cuenta de Usuario
        if (HostalWare.CantidadDePuestosDeTrabajo <> 0)
          then
            begin //Ejecuto el procedimiento
              goto Ejecutar;
            end
              else
                begin
                  //Salgo del procedimiento
                  goto salida;
                end;

        //Label de Ejecucion, cuando todo está OK
        Ejecutar:

        //Lleno las variables con el usuario seleccionado en el DBGrid de Cuentas de Usuario
        usuario:= DBGridPuestosDeTrabajo.SelectedField.Value;

        if (usuario <> 'hostalware')
          then
            begin
              //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
              frmPrincipal.Caption:= 'HostalWare, Cuentas de Usuario. Eliminando la Cuenta, con el usuario: ' + usuario + '.';

              //Deshabilito el botón de 'Nueva Cuenta de Usuario'
              lblbtnNuevaCuentaDeUsuario.Enabled:= False;

              //Deshabilito el SpeedButton de "Nueva Cuenta de Usuario"
              //SpeedButtonNuevoPuestosDeTrabajo.Enabled:= False;

              //Deshabilito la opción de "Nueva Cuenta de Usuario" en el MainMenu
              //MenuOpcionAgregarPuestoDeTrabajo.Enabled:= False;

              //Deshabilito el botón de "Modificar Cuenta de Usuario"
              lblbtnModificarCuentaDeUsuario.Enabled:= False;

              //Deshabilito el SpeedButton de "Modificar Cuenta de Usuario"
              //SpeedButtonModificarPuestosDeTrabajo.Enabled:= False;

              //Deshabilito la opción de "Modificar Cuenta de Usuario" del MainMenu
              //MenuOpcionModificarPuestoDeTrabajo.Enabled:= False;

              //Deshabilito el botón de "Eliminar Cuenta de Usuario"
              lblbtnEliminarCuentaDeUsuario.Enabled:= False;

              //Deshabilito el SpeedButton de "Eliminar Cuenta de Usuario"
              //SpeedButtonEliminarPuestosDeTrabajo.Enabled:= False;

              //Deshabilito la opción de "Eliminar Cuenta de Usuario" del MainMenu
              //MenuOpcionEliminarPuestoDeTrabajo.Enabled:= False;

              //Verifico que la Cuenta de Usuario que se borrará no sea el mismo Loggeado
              if (HostalWare.ElUsuarioEstaLoggeado(usuario) = False)
                then
                  begin //No es el usuario loggeado
                    //Muestro mensaje al usuario una confirmación de borrado
                    if MessageDlg('¿Desea eliminar la Cuenta de Usuario seleccionada, con el usuario: ' + usuario + '?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
                      then
                        begin
                          //Relleno los otros campos que integran la traza
                          NombreCompleto:= DBTextNombre.Field.Text + ' ' + DBTextPrimerApellido.Field.Text + ' ' + DBTextSegundoApellido.Field.Text;
                          Privilegios:= DBTextPrivilegios.Field.Text;
              
                          //Realizo el borrado de la Cuenta de Usuario en la BD
                          HostalWare.EliminarPuestoDeTrabajo(usuario);

                          //Actualizar el DBGrid de las Cuentas de Usuario
                          HostalWare.MostrarPuestosDeTrabajo;

                          //Actualizo las Cuentas de Usuario
                          ActualizarCuentasDeUsuario;

                          //Inserto la Traza
                          HostalWare.GuardarTrazaDelSistema('Eliminó la Cuenta de Usuario ' + '"' + usuario + '"' + ' con privilegios de ' + Privilegios + ' y perteneciente a ' + NombreCompleto + '.');

                          //Actualizo todas las trazas
                          HostalWare.MostrarTodasLasTrazas;

                          //Muestro la cantidad de Cuentas de Usuario que existen creadas en la BD
                          lblCantidadPuestosDeTrabajo.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDePuestosDeTrabajo) + ' Cuentas de Usuario.' ;

                          //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
                          frmPrincipal.Caption:= 'HostalWare - Sistema de Hospedaje Automatizado';

                          //Muestro mensaje de información del borrado ya realizado
                          MessageDlg('La Cuenta de Usuario, con el usuario ' + usuario + ', ha sido eliminado.', mtInformation, [mbOk], 0);  //, mbOk

                          //Habilito el botón de 'Nueva Cuenta de Usuario'
                          lblbtnNuevaCuentaDeUsuario.Enabled:= True;

                          //Habilito el SpeedButton de "Nuevo Cuenta de Usuario"
                          //SpeedButtonNuevoPuestosDeTrabajo.Enabled:= True;

                          //Habilito la opción de "Nueva Cuenta de Usuario" en el MainMenu
                          //MenuOpcionAgregarPuestoDeTrabajo.Enabled:= True;

                          //Habilito el botón de "Modificar Cuenta de Usuario"
                          lblbtnModificarCuentaDeUsuario.Enabled:= True;

                          //Habilito el SpeedButton de "Modificar Cuenta de Usuario"
                          //SpeedButtonModificarPuestosDeTrabajo.Enabled:= True;

                          //Habilito la opción de "Modificar Cuenta de Usuario" del MainMenu
                          //MenuOpcionModificarPuestoDeTrabajo.Enabled:= True;

                          //Habilito el botón de "Eliminar Cuenta de Usuario"
                          lblbtnEliminarCuentaDeUsuario.Enabled:= True;

                          //Habilito el SpeedButton de "Eliminar Cuenta de Usuario"
                          //SpeedButtonEliminarPuestosDeTrabajo.Enabled:= True;

                          //Habilito la opción de "Eliminar Cuenta de Usuario" del MainMenu
                          //MenuOpcionEliminarPuestoDeTrabajo.Enabled:= True;
                        end
                          else
                            begin // *** No se realiza borrado alguno. Todo se coloca como estaba antes ***
                              //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
                              frmPrincipal.Caption:= 'HostalWare - Sistema de Hospedaje Automatizado';

                              //Habilito el botón de 'Nueva Cuenta de Usuario'
                              lblbtnNuevaCuentaDeUsuario.Enabled:= True;

                              //Habilito el SpeedButton de "Nueva Cuenta de Usuario"
                              //SpeedButtonNuevoPuestosDeTrabajo.Enabled:= True;

                              //Habilito la opción de "Nueva Cuenta de Usuario" en el MainMenu
                              //MenuOpcionAgregarPuestoDeTrabajo.Enabled:= True;

                              //Habilito el botón de "Modificar Cuenta de Usuario"
                              lblbtnModificarCuentaDeUsuario.Enabled:= True;

                              //Habilito el SpeedButton de "Modificar Cuenta de Usuario"
                              //SpeedButtonModificarPuestosDeTrabajo.Enabled:= True;

                              //Habilito la opción de "Modificar Cuenta de Usuario" del MainMenu
                              //MenuOpcionModificarPuestoDeTrabajo.Enabled:= True;

                              //Habilito el botón de "Eliminar Cuenta de Usuario"
                              lblbtnEliminarCuentaDeUsuario.Enabled:= True;

                              //Habilito el SpeedButton de "Eliminar Cuenta de Usuario"
                              //SpeedButtonEliminarPuestosDeTrabajo.Enabled:= True;

                              //Habilito la opción de "Eliminar Cuenta de Usuario" del MainMenu
                              //MenuOpcionEliminarPuestoDeTrabajo.Enabled:= True;
                            end;
                  end
                    else
                      begin //Es el mismo usuario que está loggeado
                        //Muestro mensaje al usuario una confirmación de borrado
                        if MessageDlg('¿Desea realmente eliminar la Cuenta de Usuario seleccionada, con el usuario: ' + usuario + '?' + ' Usted está loggeado usando esa Cuenta de Usuario, por lo que automáticamente saldrá del sistema.', mtConfirmation, [mbYes, mbNo], 0) = mrYes
                          then
                            begin
                              //Relleno los otros campos que integran la traza
                              NombreCompleto:= DBTextNombre.Field.Text + ' ' + DBTextPrimerApellido.Field.Text + ' ' + DBTextSegundoApellido.Field.Text;
                              Privilegios:= DBTextPrivilegios.Field.Text;

                              //Realizo el borrado de la Cuenta de Usuario en la BD
                              HostalWare.EliminarPuestoDeTrabajo(usuario);

                              //Actualizar el DBGrid de las Cuentas de Usuario
                              HostalWare.MostrarPuestosDeTrabajo;

                              //Inserto la Traza
                              HostalWare.GuardarTrazaDelSistema('Eliminó la Cuenta de Usuario ' + '"' + usuario + '"' + ' con privilegios de ' + Privilegios + ' y perteneciente a ' + NombreCompleto + '. Como estaba loggeado usando esa misma Cuenta de Usuario, fue automáticamente expulsado del sistema.');

                              //Actualizo todas las trazas
                              HostalWare.MostrarTodasLasTrazas;
                                                            
                              //Muestro la cantidad de Cuentas de Usuario que existen creadas en la BD
                              lblCantidadPuestosDeTrabajo.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDePuestosDeTrabajo) + ' Cuentas de Usuario.' ;

                              //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
                              frmPrincipal.Caption:= 'HostalWare - Sistema de Hospedaje Automatizado';

                              //Muestro mensaje de información del borrado ya realizado
                              MessageDlg('La Cuenta de Usuario, con el usuario ' + usuario + ', ha sido eliminado.', mtInformation, [mbOk], 0);  //, mbOk

                              //Habilito el botón de 'Nueva Cuenta de Usuario'
                              lblbtnNuevaCuentaDeUsuario.Enabled:= True;

                              //Habilito el SpeedButton de "Nueva Cuenta de Usuario"
                              //SpeedButtonNuevoPuestosDeTrabajo.Enabled:= True;

                              //Habilito la opción de "Nueva Cuenta de Usuario" en el MainMenu
                              //MenuOpcionAgregarPuestoDeTrabajo.Enabled:= True;

                              //Habilito el botón de "Modificar Cuenta de Usuario"
                              lblbtnModificarCuentaDeUsuario.Enabled:= True;

                              //Habilito el SpeedButton de "Modificar Cuenta de Usuario"
                              //SpeedButtonModificarPuestosDeTrabajo.Enabled:= True;

                              //Habilito la opción de "Modificar Cuenta de Usuario" del MainMenu
                              //MenuOpcionModificarPuestoDeTrabajo.Enabled:= True;

                              //Habilito el botón de "Eliminar Cuenta de Usuario"
                              lblbtnEliminarCuentaDeUsuario.Enabled:= True;

                              //Habilito el SpeedButton de "Eliminar Cuenta de Usuario"
                              //SpeedButtonEliminarPuestosDeTrabajo.Enabled:= True;

                              //Habilito la opción de "Eliminar Cuenta de Usuario" del MainMenu
                              //MenuOpcionEliminarPuestoDeTrabajo.Enabled:= True;

                              //Salgo del sistema
                              //SpeedButtonDesconectarsePuestosDeTrabajo.Click;
                              
                              //Actualizo las Cuentas de Usuario
                              ActualizarCuentasDeUsuario;

                              //Desconecto el sistema (el mismo borró su propia cuenta de usuario)
                              DesconectarElSistema;
                            end
                              else
                                begin // *** No se realiza borrado alguno. Todo se coloca como estaba antes ***
                                  //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
                                  frmPrincipal.Caption:= 'HostalWare - Sistema de Hospedaje Automatizado';

                                  //Habilito el botón de 'Nueva Cuenta de Usuario'
                                  lblbtnNuevaCuentaDeUsuario.Enabled:= True;

                                  //Habilito el SpeedButton de "Nueva Cuenta de Usuario"
                                  //SpeedButtonNuevoPuestosDeTrabajo.Enabled:= True;

                                  //Habilito la opción de "Nueva Cuenta de Usuario" en el MainMenu
                                  //MenuOpcionAgregarPuestoDeTrabajo.Enabled:= True;

                                  //Habilito el botón de "Modificar Cuenta de Usuario"
                                  lblbtnModificarCuentaDeUsuario.Enabled:= True;

                                  //Habilito el SpeedButton de "Modificar Cuenta de Usuario"
                                  //SpeedButtonModificarPuestosDeTrabajo.Enabled:= True;

                                  //Habilito la opción de "Modificar Cuenta de Usuario" del MainMenu
                                  //MenuOpcionModificarPuestoDeTrabajo.Enabled:= True;

                                  //Habilito el botón de "Eliminar Cuenta de Usuario"
                                  lblbtnEliminarCuentaDeUsuario.Enabled:= True;

                                  //Habilito el SpeedButton de "Eliminar Cuenta de Usuario"
                                  //SpeedButtonEliminarPuestosDeTrabajo.Enabled:= True;

                                  //Habilito la opción de "Eliminar Cuenta de Usuario" del MainMenu
                                  //MenuOpcionEliminarPuestoDeTrabajo.Enabled:= True;
                                end;
                      end;
            end
              else
                begin
                  //Application.MessageBox('Usted no puede eliminar la Cuenta de Usuario "hccap", pues es' + #13 + 'básica para el funcionamiento y administración del sistema.','Información',mb_Ok + MB_ICONINFORMATION);
                  ShowMessage('Usted no puede eliminar la Cuenta de Usuario "hostalware", pues es' + #13 + 'básica para el funcionamiento y administración del sistema HostalWare.');
                end;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;

  //Label de Salida, cuando algo está mal
  Salida:
end;



procedure TfrmPrincipal.ModificarCuentaDeUsuario;
var
  usuario: AnsiString;
  label Ejecutar, Salida;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Debo verificar si existe al menos una Cuenta de Usuario
        if (HostalWare.CantidadDePuestosDeTrabajo <> 0)
          then
            begin //Ejecuto el procedimiento
              goto Ejecutar;
            end
              else
                begin
                  //Salgo del procedimiento
                  goto salida;
                end;

        //Label de Ejecucion, cuando todo está OK
        Ejecutar:

        //Tomo el usuario del que está seleccionado en el DBGrid
        usuario := DBGridPuestosDeTrabajo.SelectedField.Value;
  
        //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
        frmPrincipal.Caption:= 'HostalWare, Cuentas de Usuario. Modificando la Cuenta, con el usuario: ' + usuario + '.';

        //Envio el id_Usuario desde el DBGrid de Cuentas de Usuario hacia la forma de modificación de Cuentas de Usuario
        frmModificarPuestoDeTrabajo.TempViejoUsuario:= usuario;

        //Muestro la forma de Modificación de Cuentas de Usuario
        frmModificarPuestoDeTrabajo.Position:= poScreenCenter;
        frmModificarPuestoDeTrabajo.ShowModal;

        //Actualizo las Cuentas de Usuario
        ActualizarCuentasDeUsuario;

        //Se verifica nuevamente los privilegios del loggeado, por si acaso el mismo se los cambió
        if (HostalWare.ElLoggeadoEsAdministrador = False)
          then
            begin
              if (PestannaActiva = 'PuestosDeTrabajo')
                then
                  begin
                    //ValidarComponentesPuestosDeTrabajo;
                  end;

              if (PestannaActiva = 'TrazasDelSistema')
                then
                  begin
                    //ValidarComponentesTrazasDelSistema;
                  end;

              //Oculto el PageControl de Control del Sistema
              //PageControlControlDelSistema.Visible:= False;

              //Oculto el ToolBar de la pestaña de Control del Sistema
              //ToolBarControlDelSistema.Visible:= False;

              //Oculto la pestaña de Control del Sistema
              AdvTabSheetControlDelSistema.TabVisible:= False;
            end;

        //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
        frmPrincipal.Caption:= 'HostalWare - Sistema de Hospedaje Automatizado';
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
  //Label de Salida, cuando algo está mal
  Salida:
end;



procedure TfrmPrincipal.ActualizarReservaciones;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
      
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.AgregarHabitacion;
begin
  //Primero verifico que exista aun conexion a la base de datos
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
        frmPrincipal.Caption:= 'HostalWare, Admin. de Capacidades. Agregando una habitación';

        //Muestro la forma de entrada de datos de la habitacion
        frmNuevaHabitacion.Position:= poDesktopCenter;
        frmNuevaHabitacion.ShowModal;

        //Actualizo las capacidades
        ActualizarCapacidades;

        //Mando a mostrar y actualizar las alertas
        ActualizarAlertasDelSistema;

        //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
        frmPrincipal.Caption:= 'HostalWare - Sistema de Hospedaje Automatizado';
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.AgregarRegistroDeHuesped;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
        frmPrincipal.Caption:= 'HostalWare, Registro de Huéspedes. Agregando un Registro.';

        //Muestro la forma de entrada de datos de Registro
        frmNuevoRegistro.Position:= poDesktopCenter;
        frmNuevoRegistro.ShowModal;

        //Mando a actualizar los Registros de Huespedes
        ActualizarRegistros;

        //Mando a actualizar las capacidades
        ActualizarCapacidades;

        //Mando a mostrar y actualizar las alertas
        ActualizarAlertasDelSistema;
                
        //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
        frmPrincipal.Caption:= 'HostalWare - Sistema de Hospedaje Automatizado';
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.AgregarReservacion;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
        frmPrincipal.Caption:= 'HostalWare, Reservaciones. Agregando una Reservación.';

        //Muestro la forma de entrada de datos de la Reservación
        frmNuevaReservacion.Position:= poDesktopCenter;
        frmNuevaReservacion.ShowModal;

        //Mando a actualizar las Reservaciones
        ActualizarReservaciones;

        //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
        frmPrincipal.Caption:= 'HostalWare - Sistema de Hospedaje Automatizado';
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.EliminarHabitacion;
var
  ID_Habitacion: Integer;
label Ejecutar, Salida;  
begin
  //Primero verifico que exista aun conexion a la base de datos
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Debo verificar que exista al menos una habitacion para ser ejecutado el procedimiento
        //En dependencia del filtrado por pisos escogido
        if (ComboBoxFiltroParaHabitaciones.Text = 'TODOS')
          then //Todos los pisos juntos
            begin
              //En dependencia del filtrado por capacidad escogido
              if (ComboBoxFiltroPorCapacidad.Text = 'TODOS')
                then
                  begin
                    if (HostalWare.CantidadDeHabitaciones > 0)
                      then
                        begin
                          //Todo OK
                          goto Ejecutar;
                        end
                          else
                            begin
                              //Esta mal
                              goto Salida;
                            end;
                  end
                    else
                      begin
                        if (ComboBoxFiltroPorCapacidad.Text = 'Con Vacantes')
                          then
                            begin
                              if (HostalWare.CantidadDeHabitacionesTotalesYConVacantes > 0)
                                then
                                  begin
                                    //Todo OK
                                    goto Ejecutar;
                                  end
                                    else
                                      begin
                                        //Esta mal
                                        goto Salida;
                                      end;
                            end
                              else
                                begin
                                  if (ComboBoxFiltroPorCapacidad.Text = 'Sin Vacantes')
                                    then
                                      begin
                                        if (HostalWare.CantidadDeHabitacionesTotalesYSinVacantes > 0)
                                          then
                                            begin
                                              //Todo OK
                                              goto Ejecutar;
                                            end
                                              else
                                                begin
                                                  //Esta mal
                                                  goto Salida;
                                                end;
                                      end;
                                end;
                      end;
            end
              else //Específico, por pisos
                begin
                  //En dependencia del filtrado por capacidad escogido
                  if (ComboBoxFiltroPorCapacidad.Text = 'TODOS')
                    then
                      begin
                        if (HostalWare.CantidadDeHabitacionesPorPiso > 0)
                          then
                            begin
                              //Todo OK
                              goto Ejecutar;
                            end
                              else
                                begin
                                  //Esta mal
                                  goto Salida;
                                end;
                      end
                        else
                          begin
                            if (ComboBoxFiltroPorCapacidad.Text = 'Con Vacantes')
                              then
                                begin
                                  if (HostalWare.CantidadDeHabitacionesPorPisoYConVacantes > 0)
                                    then
                                      begin
                                        //Todo OK
                                        goto Ejecutar;
                                      end
                                        else
                                          begin
                                            //Esta mal
                                            goto Salida;
                                          end;
                                end
                                  else
                                    begin
                                      if (ComboBoxFiltroPorCapacidad.Text = 'Sin Vacantes')
                                        then
                                          begin
                                            if (HostalWare.CantidadDeHabitacionesPorPisoYSinVacantes > 0)
                                              then
                                                begin
                                                  //Todo OK
                                                  goto Ejecutar;
                                                end
                                                  else
                                                    begin
                                                      //Esta mal
                                                      goto Salida;
                                                    end;
                                          end;
                                    end;
                          end;
                end;

        //Label de Ejecución cuando todo está OK
        Ejecutar:

        //Recojo del ID_Habitacion
        ID_Habitacion:= StrToInt(DBTextID_Habitacion.Field.Text);

        //Ahora debo verificar si la habitacion tiene huéspedes registrados
        if (HostalWare.ExisteLaHabitacionConOcupantesPorID_Habitacion(ID_Habitacion) = False)
          then
            begin //No tiene ocupantes, así que puedo borrarla, junto con todas las camas que haya dentro de la habitación
              //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
              frmPrincipal.Caption:= 'HostalWare, Admin. de Capacidades. Eliminando una habitación';

              if MessageDlg('¿Desea eliminar la habitación ' + DBGridHabitacionesExistentes.SelectedField.Text + '?.', mtConfirmation, [mbYes, mbNo], 0) = mrYes
                then
                  begin
                    //Compruebo si aun existe conexión con la BD
                    if (HostalWare.ExisteConexionConLaBD = True)
                      then
                        begin
                          //Elimino las camas de la habitacion seleccionada (deb ser antes de eliminar la hab, sino no las encuentra)
                          HostalWare.EliminarCamasLibresPorID_Habitacion(ID_Habitacion);

                          //Elimino la habitación seleccionada
                          HostalWare.EliminarHabitacion(ID_Habitacion);

                          //Inserto la Traza
                          HostalWare.GuardarTrazaDelSistema('Eliminó la habitación ' + DBGridHabitacionesExistentes.SelectedField.Text);

                          //Actualizo todas las trazas
                          HostalWare.MostrarTodasLasTrazas;                    

                          //Muestro y actualizo las Capacidades
                          ActualizarCapacidades;

                          //Mando a mostrar y actualizar las alertas
                          ActualizarAlertasDelSistema;
                        end;
                  end;

              //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
              frmPrincipal.Caption:= 'HostalWare - Sistema de Hospedaje Automatizado';
            end
              else
                begin //Tiene ocupantes, así que no puedo borrar la habitación
                  MessageDlg('La habitación tiene ocupantes. Antes de poder' + #13 + 'borrarla debe eliminar sus registros o trasladarlos.', mtError, [mbOk], 0);
                end;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
          
  //Label de salida, cuando algo está mal
  Salida:

  //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
  frmPrincipal.Caption:= 'HostalWare - Sistema de Hospedaje Automatizado';
end;



procedure TfrmPrincipal.EliminarRegistroDeHuesped;
var
  ID_Huesped, ID_Cama: Integer;
  Apellidos: AnsiString;
Label Salida, Ejecutar;  
begin
  //Primero verifico que exista aun conexion a la base de datos
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Debo verificar primero si existe al menos un huesped en el DBGrid
        //En dependencia del filtrado por pisos escogido
        if (cmbxFiltrarRegistrosPorPiso.Text = 'TODOS')
          then
            begin //** Todos los pisos
              if (cmbxFiltrarRegistrosPorMotivo.Text = 'TODOS')
                then
                  begin //Todos los motivos, para todos los pisos
                    if (HostalWare.CantidadDeHuespedesTotales <> 0)
                      then
                        begin //Ejecuto el procedimiento
                          goto Ejecutar;
                        end
                          else
                            begin
                              //Salgo del procedimiento
                              goto Salida;
                            end;
                  end
                    else
                      begin //Un motivo en específico, para todos los pisos
                        if (HostalWare.CantidadDeHuespedesPorMotivo <> 0)
                          then
                            begin //Ejecuto el procedimiento
                              goto Ejecutar;
                            end
                              else
                                begin
                                  //Salgo del procedimiento
                                  goto Salida;
                                end;
                      end;
            end
              else
                begin //** Un piso en especifico
                  if (cmbxFiltrarRegistrosPorMotivo.Text = 'TODOS')
                    then
                      begin //Todos los motivos, para un piso en especifico
                        if (HostalWare.CantidadDeHuespedesPorPiso <> 0)
                          then
                            begin //Ejecuto el procedimiento
                              goto Ejecutar;
                            end
                              else
                                begin
                                  //Salgo del procedimiento
                                  goto Salida;
                                end;
                      end
                        else
                          begin  //Un motivo en específico, para un piso en especifico
                            if (HostalWare.CantidadDeHuespedesPorMotivoYPorPiso <> 0)
                              then
                                begin //Ejecuto el procedimiento
                                  goto Ejecutar;
                                end
                                  else
                                    begin
                                      //Salgo del procedimiento
                                      goto Salida;
                                    end;
                          end;
                end;


        //Label de Ejecución cuando todo está OK
        Ejecutar:
                      
        //Recojo el ID_Huesped
        ID_Huesped:= StrToInt(DBTextID_Huesped.Field.Text);

        //Recojo los Apellidos
        Apellidos:= DBTextApellidos.Field.Text;

        //Recojo el ID_Cama
        ID_Cama:= StrToInt(DBTextID_CamaDeHuesped.Field.Text);

        //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
        frmPrincipal.Caption:= 'HostalWare, Registro de Huespedes. Eliminando un Registro.';

        if MessageDlg('¿Desea eliminar el registro del huesped ' + DBGridHuespedesRegistrados.SelectedField.Text + ' ' + Apellidos + '?.', mtConfirmation, [mbYes, mbNo], 0) = mrYes
          then
            begin
              //Compruebo si aun existe conexión con la BD
              if (HostalWare.ExisteConexionConLaBD = True)
                then
                  begin
                    //Primero debo archivar el huésped seleccionado, antes de proceder a borrarlo
                    HostalWare.ArchivarHuespedPorID_Huesped(ID_Huesped);

                    //Elimino el huésped seleccionado
                    HostalWare.EliminarHuespedPorID_Huesped(ID_Huesped);

                    //Desocupo la cama del huesped ya eliminado
                    HostalWare.LiberarCamaPorID_Cama(ID_Cama);

                    //Inserto la Traza
                    HostalWare.GuardarTrazaDelSistema('Eliminó el registro del huesped ' + DBGridHuespedesRegistrados.SelectedField.Text+ ' ' + Apellidos + ' que estaba hospedado en la habitación ');

                    //Actualizo todas las trazas
                    HostalWare.MostrarTodasLasTrazas;                    

                    //Muestro y actualizo los huespedes resgistrados
                    ActualizarRegistros;

                    //Muestro y actualizo las capacidades
                    ActualizarCapacidades;

                    //Mando a mostrar y actualizar las alertas
                    ActualizarAlertasDelSistema;
                  end;
            end;

        //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
        frmPrincipal.Caption:= 'HostalWare - Sistema de Hospedaje Automatizado';
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
          
  //Label de salida, cuando algo está mal
  Salida:
end;



procedure TfrmPrincipal.EliminarReservacion;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
      
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.ModificarHabitacion;
var
ID_Habitacion: Integer;
label Ejecutar, Salida;
begin
  //Primero verifico que exista aun conexion a la base de datos
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Debo verificar que exista al menos una habitacion para ser ejecutado el procedimiento
        //En dependencia del filtrado por pisos escogido
        if (ComboBoxFiltroParaHabitaciones.Text = 'TODOS')
          then //Todos los pisos juntos
            begin
              //En dependencia del filtrado por capacidad escogido
              if (ComboBoxFiltroPorCapacidad.Text = 'TODOS')
                then
                  begin
                    if (HostalWare.CantidadDeHabitaciones > 0)
                      then
                        begin
                          //Todo OK
                          goto Ejecutar;
                        end
                          else
                            begin
                              //Esta mal
                              goto Salida;
                            end;
                  end
                    else
                      begin
                        if (ComboBoxFiltroPorCapacidad.Text = 'Con Vacantes')
                          then
                            begin
                              if (HostalWare.CantidadDeHabitacionesTotalesYConVacantes > 0)
                                then
                                  begin
                                    //Todo OK
                                    goto Ejecutar;
                                  end
                                    else
                                      begin
                                        //Esta mal
                                        goto Salida;
                                      end;
                            end
                              else
                                begin
                                  if (ComboBoxFiltroPorCapacidad.Text = 'Sin Vacantes')
                                    then
                                      begin
                                        if (HostalWare.CantidadDeHabitacionesTotalesYSinVacantes > 0)
                                          then
                                            begin
                                              //Todo OK
                                              goto Ejecutar;
                                            end
                                              else
                                                begin
                                                  //Esta mal
                                                  goto Salida;
                                                end;
                                      end;
                                end;
                      end;
            end
              else //Específico, por pisos
                begin 
                  //En dependencia del filtrado por capacidad escogido
                  if (ComboBoxFiltroPorCapacidad.Text = 'TODOS')
                    then
                      begin
                        if (HostalWare.CantidadDeHabitacionesPorPiso > 0)
                          then
                            begin
                              //Todo OK
                              goto Ejecutar;
                            end
                              else
                                begin
                                  //Esta mal
                                  goto Salida;
                                end;
                      end
                        else
                          begin
                            if (ComboBoxFiltroPorCapacidad.Text = 'Con Vacantes')
                              then
                                begin
                                  if (HostalWare.CantidadDeHabitacionesPorPisoYConVacantes > 0)
                                    then
                                      begin
                                        //Todo OK
                                        goto Ejecutar;
                                      end
                                        else
                                          begin
                                            //Esta mal
                                            goto Salida;
                                          end;
                                end
                                  else
                                    begin
                                      if (ComboBoxFiltroPorCapacidad.Text = 'Sin Vacantes')
                                        then
                                          begin
                                            if (HostalWare.CantidadDeHabitacionesPorPisoYSinVacantes > 0)
                                              then
                                                begin
                                                  //Todo OK
                                                  goto Ejecutar;
                                                end
                                                  else
                                                    begin
                                                      //Esta mal
                                                      goto Salida;
                                                    end;
                                          end;
                                    end;
                          end;
                end;

        //Label de Ejecución cuando todo está OK
        Ejecutar:

        //Recojo del ID_Habitacion
        ID_Habitacion:= StrToInt(DBTextID_Habitacion.Field.Text);

        //Le envio el ID_Habitacion a la forma de modificación
        frmModificarHabitacion.FID_Habitacion:= ID_Habitacion;

        //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
        frmPrincipal.Caption:= 'HostalWare, Admin. de Capacidades. Modificando una habitación';

        //Muestro la forma de entrada de Puestos de Trabajo
        frmModificarHabitacion.Position:= poScreenCenter;
        frmModificarHabitacion.ShowModal;

        //Actualizo la cantidad de habitaciones que existen creadas en la BD
        //lblCantidadHabitaciones.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDePuestosDeTrabajo) + ' habitaciones.' ;

        //Actualizo las capacidades
        ActualizarCapacidades;
        //ActualizarSoloCamas;
        
        //Muestro las camas para la habitacion seleccionada
        //HostalWare.MostrarCamasPorID_Habitacion(StrToInt(DBTextID_Habitacion.Field.Text));

        //Actualizo la cantidad de camas para la habitacion seleccionada
        //lblCantidadCamas.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDeCamas);

        //Mando a mostrar y actualizar las alertas
        ActualizarAlertasDelSistema;
                
        //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
        frmPrincipal.Caption:= 'HostalWare - Sistema de Hospedaje Automatizado';
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;

  //Label de salida, cuando algo está mal
  Salida:
end;



procedure TfrmPrincipal.ModificarRegistroDeHuesped;
Label Salida, Ejecutar;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Debo verificar primero si existe al menos un huesped en el DBGrid
        //En dependencia del filtrado por pisos escogido
        if (cmbxFiltrarRegistrosPorPiso.Text = 'TODOS')
          then
            begin //** Todos los pisos
              if (cmbxFiltrarRegistrosPorMotivo.Text = 'TODOS')
                then
                  begin //Todos los motivos, para todos los pisos
                    if (HostalWare.CantidadDeHuespedesTotales <> 0)
                      then
                        begin //Ejecuto el procedimiento
                          goto Ejecutar;
                        end
                          else
                            begin
                              //Salgo del procedimiento
                              goto Salida;
                            end;
                  end
                    else
                      begin //Un motivo en específico, para todos los pisos
                        if (HostalWare.CantidadDeHuespedesPorMotivo <> 0)
                          then
                            begin //Ejecuto el procedimiento
                              goto Ejecutar;
                            end
                              else
                                begin
                                  //Salgo del procedimiento
                                  goto Salida;
                                end;
                      end;
            end
              else
                begin //** Un piso en especifico
                  if (cmbxFiltrarRegistrosPorMotivo.Text = 'TODOS')
                    then
                      begin //Todos los motivos, para un piso en especifico
                        if (HostalWare.CantidadDeHuespedesPorPiso <> 0)
                          then
                            begin //Ejecuto el procedimiento
                              goto Ejecutar;
                            end
                              else
                                begin
                                  //Salgo del procedimiento
                                  goto Salida;
                                end;
                      end
                        else
                          begin  //Un motivo en específico, para un piso en especifico
                            if (HostalWare.CantidadDeHuespedesPorMotivoYPorPiso <> 0)
                              then
                                begin //Ejecuto el procedimiento
                                  goto Ejecutar;
                                end
                                  else
                                    begin
                                      //Salgo del procedimiento
                                      goto Salida;
                                    end;
                          end;
                end;

        //Label de Ejecución cuando todo está OK
        Ejecutar:

        //Le cambio el Caption al sistema, por una cuestión informativa y de apariencia también.
        frmPrincipal.Caption:= 'HostalWare, Registro de Huéspedes. Modificando un Registro.';

        //Le envio el ID del Huesped a la forma de Modificación de datos de Registro
        frmModificarRegistro.FID_Huesped:= StrToInt(DBTextID_Huesped.Field.Text);

        //Muestro la forma de Modificación de datos de Registro
        frmModificarRegistro.Position:= poDesktopCenter;
        frmModificarRegistro.ShowModal;

        //Mando a actualizar los Registros de Huespedes
        ActualizarRegistros;

        //Mando a mostrar y actualizar las alertas
        ActualizarAlertasDelSistema;        

        //Le restituyo el Caption al sistema, por una cuestión informativa y de apariencia también.
        frmPrincipal.Caption:= 'HostalWare - Sistema de Hospedaje Automatizado';
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;

  //Label de salida, cuando algo está mal
  Salida:
end;



procedure TfrmPrincipal.ModificarReservacion;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
      
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.MostrarAyudaGeneralDelSistema;
begin
  //Primero verifico si la ayuda general está en su sitio
  if (FileExists(ExtractFilePath(Application.ExeName) + 'HelpFiles\HostalWare_es.chm') = True)
    then
      begin
        //Aquí hago una llamada a la ayuda previamente echa.
        //Application.HelpContext(1);
        ShellExecute(Handle, 'open', Pchar(ExtractFilePath(Application.ExeName) + 'HelpFiles\HostalWare_es.chm' ), nil,nil, SW_SHOWNORMAL);
      end
        else
          begin
            MessageDlg('La ayuda no está en su sitio o está dañado el archivo.' + #13 + 'No se puede mostrar la ayuda del sistema HostalWare.', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.lblbtnPrevisualizarReporteCamasExistentesClick(
  Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Previsualizo el Reporte de Camas Existentes
        PrevisualizarReporteCamasExistentes;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.lblbtnExportarHaciaPDFReporteCamasExistentesClick(
  Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Exporto hacia PDF el Reporte de Camas Existentes
        ExportarHaciaPDFReporteCamasExistentes;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.ActualizarCuentasDeUsuario;
begin
  //Ante todo verifico que haya conexión hacia la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Verifico que exista el menos una Cuenta de Usuario
        if (HostalWare.CantidadDePuestosDeTrabajo > 0)
          then
            begin
              lblbtnModificarCuentaDeUsuario.Enabled:= True;
              lblbtnEliminarCuentaDeUsuario.Enabled:= True;

              SubMenuModificarCuentaDeUsuario.Enabled:= True;
              SubMenuEliminarCuentaDeUsuario.Enabled:= True;

              if (HostalWare.CantidadDePuestosDeTrabajo = 1)
                then
                  begin
                    //Muestro la cantidad de Cuentas de Usuario que existen creadas en la BD
                    lblCantidadPuestosDeTrabajo.Caption:= 'TOTAL = 1 Cuenta de Usuario' ;
                  end
                    else
                      begin
                        //Muestro la cantidad de Cuentas de Usuario que existen creadas en la BD
                        lblCantidadPuestosDeTrabajo.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDePuestosDeTrabajo) + ' Cuentas de Usuario' ;
                      end;
            end
              else
                begin
                  lblbtnModificarCuentaDeUsuario.Enabled:= False;
                  lblbtnEliminarCuentaDeUsuario.Enabled:= False;

                  SubMenuModificarCuentaDeUsuario.Enabled:= False;
                  SubMenuEliminarCuentaDeUsuario.Enabled:= False;

                  //Muestro la cantidad de Cuentas de Usuario que existen creadas en la BD
                  lblCantidadPuestosDeTrabajo.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadDePuestosDeTrabajo) + ' Cuentas de Usuario' ;
                end;
      end
       else
         begin
           MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
         end;
end;



procedure TfrmPrincipal.lblbtnNuevaReservacionClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Agrego una nueva Reservacion
        AgregarReservacion;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.lblbtnModificarReservacionClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Modifico la Reservacion seleccionada
        ModificarReservacion;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.lblbtnEliminarReservacionClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Elimino la Reservacion seleccionada
        EliminarReservacion;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.lblbtnTramitarReservacionClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Tramito la Reservacion seleccionada
        TramitarReservacion;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.TramitarReservacion;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
      
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SubMenuTramitarReservacionClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Tramito la Reservacion seleccionada
        TramitarReservacion;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.lblbtnExportarHaciaPDFReporteAlertasDelSistemaClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Exporto hacia PDf el Reporte de Alertas del Sistema
        ExportarHaciaPDFReporteAlertas;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.lblbtnPrevisualizarReporteAlertasDelSistemaClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Previsualizo el Reporte de Alertas del Sistema
        PrevisualizarReporteAlertas;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SubMenuVerReporteAlertasDelSistemaClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Previsualizo el Reporte de Alertas
        PrevisualizarReporteAlertas;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SubMenuExportarReporteAlertasDelSistemaClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Exporto hacia PDf el Reporte de Alertas del Sistema
        ExportarHaciaPDFReporteAlertas;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SubMenuImprimirReporteAlertasDelSistemaClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Imprimo el Reporte de Alertas del Sistema
        ImprimirReporteAlertas;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.lblbtnExportarHaciaPDFReporteReservacionesEfectuadasClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Exporto hacia PDf el Reporte de Reservaciones
        ExportarHaciaPDFReporteReservaciones;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.lblbtnPrevisualizarReporteReservacionesEfectuadasClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Previsualizo el Reporte de Reservaciones
        PrevisualizarReporteReservaciones;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.DBGridReservacionesEfectuadasDblClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Modifico la Reservacion seleccionada
        ModificarReservacion;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.DetallarAlertaDelSistema;
var
  Motivo: AnsiString;

  CantidadLechosTotales, CantidadLechosOcupados, CantidadLechosLibres: Integer;
  PorCientoOcupado, PorCientoLibre: Double;
    
label Ejecutar, Salida;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Debo validad que haya al menos una alerta en el DBGrid
        if (HostalWare.CantidadAlertasDelSistema > 0)
          then
            begin
              //Detallo la alerta selecionada
              goto Ejecutar;
            end
              else
                begin
                  //Salgo del procedimiento
                  goto Salida;
                end;

        //Todo OK
        Ejecutar:

        //Ahora debo capturar el motivo de la alerta
        Motivo:= DBGridAlertasDelSistema.SelectedField.Value;

        //En dependencia del motivo de la alerta
        if (Motivo = 'Habitaciones Vacías')
          then
            begin //Alerta # 1
              //Muestro la forma de detalle, para la alerta: 'Habitaciones Vacías'
              frmDetalleAlertaHabitacionVacia.Position:= poDesktopCenter;
              frmDetalleAlertaHabitacionVacia.ShowModal;
            end
              else
                begin 
                  if (Motivo = 'Huéspedes Pasados de Tiempo')
                    then
                      begin //Alerta # 2
                        //Muestro la forma de detalle, para la alerta: 'Habitaciones Vacías'
                        frmDetalleAlertaHuespedesPasadosDeTiempo.Position:= poDesktopCenter;
                        frmDetalleAlertaHuespedesPasadosDeTiempo.ShowModal;
                      end
                        else
                          begin
                            if (   (Motivo = 'Capacidad Agotada') or (Motivo = 'Capacidad Reducida') or (Motivo = 'Capacidad Limitada')   )
                              then
                                begin //Alerta # 3
                                  //Le estipulo el Caption a la forma de Detalle
                                  if (Motivo = 'Capacidad Agotada')
                                    then
                                      begin
                                        frmDetalleAlertaFaltaDeCapacidades.Caption:= 'Detalles de Alerta por Capacidad Agotada';
                                      end
                                        else
                                          begin
                                            if (Motivo = 'Capacidad Reducida')
                                              then
                                                begin
                                                  frmDetalleAlertaFaltaDeCapacidades.Caption:= 'Detalles de Alerta por Capacidad Reducida';
                                                end
                                                  else
                                                    begin
                                                      if (Motivo = 'Capacidad Limitada')
                                                        then
                                                          begin
                                                            frmDetalleAlertaFaltaDeCapacidades.Caption:= 'Detalles de Alerta por Capacidad Limitada';
                                                          end;
                                                    end;
                                          end;
                                          
                                  //Calculo las cifras necesarias
                                  CantidadLechosTotales:= HostalWare.CantidadLechosTotales;
                                  CantidadLechosOcupados:= HostalWare.CantidadLechosOcupadosTotales;
                                  CantidadLechosLibres:= HostalWare.CantidadLechosLibresTotales;

                                  //Calculo el % ocupado
                                  PorCientoOcupado:= SimpleRoundTo(    (   (100 * CantidadLechosOcupados) / CantidadLechosTotales), -2   );

                                  //Calculo el % libre
                                  PorCientoLibre:= SimpleRoundTo(100.00 - PorCientoOcupado, -2);

                                  //Envio las cifras necesarias a sus respectivos Labels en la forma de Detalle
                                  frmDetalleAlertaFaltaDeCapacidades.lblCantidadLibre.Caption:= IntToStr(CantidadLechosLibres);
                                  frmDetalleAlertaFaltaDeCapacidades.lblCantidadOcupado.Caption:= IntToStr(CantidadLechosOcupados);
                                  frmDetalleAlertaFaltaDeCapacidades.lblCantidadTotal.Caption:= IntToStr(CantidadLechosTotales);

                                  frmDetalleAlertaFaltaDeCapacidades.lblPorCientoLibre.Caption:= FloatToStr(PorCientoLibre);
                                  frmDetalleAlertaFaltaDeCapacidades.lblPorCientoOcupado.Caption:= FloatToStr(PorCientoOcupado);

                                  //Muestro la forma de detalle, para las alertas de Capacidad
                                  frmDetalleAlertaFaltaDeCapacidades.Position:= poDesktopCenter;
                                  frmDetalleAlertaFaltaDeCapacidades.ShowModal;
                                end
                                  else
                                    begin
                                      if (Motivo = 'Huéspedes con Incidencias Recientes')
                                        then
                                          begin //Alerta # 4
                                            //Muestro la forma de detalle, para la alerta: 'Huéspedes con Incidencias Recientes'
                                            frmDetalleAlertaHuespedesConIncidenciasRecientes.Position:= poDesktopCenter;
                                            frmDetalleAlertaHuespedesConIncidenciasRecientes.ShowModal;
                                          end
                                            else
                                              begin
                                                if (Motivo = 'Huéspedes con Antecedentes de Incidencias')
                                                  then
                                                    begin //Alerta # 5
                                                      //Muestro la forma de detalle, para la alerta: 'Huéspedes con Antecedentes de Incidencias'
                                                      frmDetalleAlertaHuespedesConIncidenciasHistoricas.Position:= poDesktopCenter;
                                                      frmDetalleAlertaHuespedesConIncidenciasHistoricas.ShowModal;
                                                    end
                                                      else
                                                        begin
                                                          if (Motivo = 'Huéspedes con Antecedentes e Incidencias Recientes')
                                                            then
                                                              begin //Alerta # 6
                                                                //Muestro la forma de detalle, para la alerta: 'Huéspedes con Antecedentes e Incidencias Recientes'
                                                                frmDetalleAlertaHuespedesConIncidenciasHistoricasYRecientes.Position:= poDesktopCenter;
                                                                frmDetalleAlertaHuespedesConIncidenciasHistoricasYRecientes.ShowModal;
                                                              end
                                                                else
                                                                  begin
                                                                    //
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
          
  //Algo mal
  Salida:
end;



procedure TfrmPrincipal.lblbtnDetallesDeAlertaDelSistemaClick(
  Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Detallo la Alerta del Sistema
        DetallarAlertaDelSistema;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SubMenuVerDetallesDeAlertaDelSistemaClick(
  Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Detallo la Alerta del Sistema
        DetallarAlertaDelSistema;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.DBGridAlertasDelSistemaDblClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Detallo la Alerta del Sistema
        DetallarAlertaDelSistema;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.ActualizarAlertasDelSistema;
Var
  CantidadLechosTotales, CantidadLechosOcupados, CantidadLechosLibres: Integer;
  PorCientoOcupado: Double;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Primero borro todas las alertas del sistema almacenadas en la BD
        HostalWare.EliminarTodasLasAlertasDelSistema;


        //Alerta # 1 - Busco las habitaciones vacias
        HostalWare.MostrarHabitacionesVaciasParaAlertas;

        //En dependencia de si encuentra alguna habitacion vacia
        if (HostalWare.CantidadHabitacionesVaciasParaAlertas > 0)
          then
            begin
              //En dependencia de si es una hab, o si es más de una
              if (HostalWare.CantidadHabitacionesVaciasParaAlertas = 1)
                then
                  begin
                    //Inserto la Alerta de habitación vacía
                    HostalWare.InsertarAlertaDelSistema('Habitaciones Vacías', 'Existe una habitación vacía');
                  end
                    else
                      begin
                        //Inserto la Alerta de habitaciones vacías
                        HostalWare.InsertarAlertaDelSistema('Habitaciones Vacías', 'Existen ' + IntToStr(HostalWare.CantidadHabitacionesVaciasParaAlertas) + ' habitaciones vacías');
                      end;
            end;


        //Alerta # 2 - Busco los registros pasados de tiempo (por la fecha actual)
        HostalWare.MostrarHuespedesPasadosDeTiempoPorFechaActualParaAlertas(StrToDateTime(HostalWare.ObtenerFechaDelSistema + ' ' + HostalWare.ObtenerHoraDelSistema));
        
        //En dependencia de si encuentra algún huésped pasado de tiempo
        if (HostalWare.CantidadHuespedesPasadosDeTiempoPorFechaActualParaAlerta > 0)
          then
            begin
              //En dependencia de si es una hab, o si es más de una
              if (HostalWare.CantidadHuespedesPasadosDeTiempoPorFechaActualParaAlerta = 1)
                then
                  begin
                    //Inserto la Alerta de huésped pasado de tiempo
                    HostalWare.InsertarAlertaDelSistema('Huéspedes Pasados de Tiempo', 'Existe un huésped que debe ser dado de baja, por haber concluido su tiempo establecido');
                  end
                    else
                      begin
                        //Inserto la Alerta de huéspedes pasados de tiempo
                        HostalWare.InsertarAlertaDelSistema('Huéspedes Pasados de Tiempo', 'Existen ' + IntToStr(HostalWare.CantidadHuespedesPasadosDeTiempoPorFechaActualParaAlerta) + ' huéspedes que deben ser dados de baja, por haber concluido su tiempo establecido');
                      end;
            end;


        //Alerta # 3 - Busco Limitaciones en la Capacidad de Hospedaje (Limitada, Reducida, y Agotada)
        HostalWare.MostrarLechosTotales;
        HostalWare.MostrarLechosLibresTotales;
        HostalWare.MostrarLechosOcupadosTotales;

        CantidadLechosTotales:= HostalWare.CantidadLechosTotales;
        CantidadLechosOcupados:= HostalWare.CantidadLechosOcupadosTotales;
        CantidadLechosLibres:= HostalWare.CantidadLechosLibresTotales;

        //Calculo el % ocupado
        PorCientoOcupado:= SimpleRoundTo(    (   (100 * CantidadLechosOcupados) / CantidadLechosTotales), -2   );

        //En dependencia del % ocupado
        if (PorCientoOcupado = 100.00)
          then
            begin //Capacidad Agotada
              //Inserto la Alerta de huésped pasado de tiempo
              HostalWare.InsertarAlertaDelSistema('Capacidad Agotada', 'El centro ya no tiene capacidad de hospedaje. El 100 % está ocupado.');
            end
              else
                begin
                  if (   (PorCientoOcupado >= 95.00) and (PorCientoOcupado < 100.00)   )
                    then
                      begin  //Capacidad Reducida
                        //Inserto la Alerta de huésped pasado de tiempo
                        HostalWare.InsertarAlertaDelSistema('Capacidad Reducida', 'Nuestro centro ya casi no tiene capacidad de hospedaje. El ' +  FloatToStr( SimpleRoundTo(PorCientoOcupado, -2) ) + ' % está ocupado.');
                      end
                        else
                          begin
                            if (   (PorCientoOcupado >= 85.00) and (PorCientoOcupado < 95.00)   )
                              then
                                begin //Capacidad Limitada
                                  //Inserto la Alerta de huésped pasado de tiempo
                                  HostalWare.InsertarAlertaDelSistema('Capacidad Limitada', 'Nuestro centro tiene poca capacidad de hospedaje. El ' +  FloatToStr( SimpleRoundTo(PorCientoOcupado, -2) ) + ' % está ocupado.');
                                end;
                          end;
                end;


        //Alerta # 4 - Busco los registros con incidencias solo recientes
        HostalWare.MostrarHuespedesConIncidenciasSoloRecientes;

        //En dependencia de si encuentra algún huésped con incidencias solo históricas
        if (HostalWare.CantidadHuespedesConIncidenciasSoloRecientes > 0)
          then
            begin
              //En dependencia de si es un huésped, o si es más de uno
              if (HostalWare.CantidadHuespedesConIncidenciasSoloRecientes = 1)
                then
                  begin
                    //Inserto la Alerta de huésped con incidencias solo históricas
                    HostalWare.InsertarAlertaDelSistema('Huéspedes con Incidencias Recientes', 'Existe un huésped con incidencias recientes');
                  end
                    else
                      begin
                        //Inserto la Alerta de huéspedes con incidencias solo históricas
                        HostalWare.InsertarAlertaDelSistema('Huéspedes con Incidencias Recientes', 'Existen ' + IntToStr(HostalWare.CantidadHuespedesConIncidenciasSoloRecientes) + ' huéspedes con incidencias recientes');
                      end;
            end;


        //Alerta # 5 - Busco los registros con incidencias solo históricas
        HostalWare.MostrarHuespedesConIncidenciasSoloHistoricas;

        //En dependencia de si encuentra algún huésped con incidencias solo recientes
        if (HostalWare.CantidadHuespedesConIncidenciasSoloHistoricas > 0)
          then
            begin
              //En dependencia de si es un huésped, o si es más de uno
              if (HostalWare.CantidadHuespedesConIncidenciasSoloHistoricas = 1)
                then
                  begin
                    //Inserto la Alerta de huésped con incidencias solo recientes
                    HostalWare.InsertarAlertaDelSistema('Huéspedes con Antecedentes de Incidencias', 'Existe un huésped con antecedentes de incidencias');
                  end
                    else
                      begin
                        //Inserto la Alerta de huéspedes con incidencias solo recientes
                        HostalWare.InsertarAlertaDelSistema('Huéspedes con Antecedentes de Incidencias', 'Existen ' + IntToStr(HostalWare.CantidadHuespedesConIncidenciasSoloHistoricas) + ' huéspedes con antecedentes de incidencias');
                      end;
            end;


        //Alerta # 6 - Busco los registros con incidencias históricas y recientes
        HostalWare.MostrarHuespedesConIncidenciasHistoricasYRecientes;

        //En dependencia de si encuentra algún huésped con incidencias históricas y recientes
        if (HostalWare.CantidadHuespedesConIncidenciasHistoricasYRecientes > 0)
          then
            begin
              //En dependencia de si es un huésped, o si es más de uno
              if (HostalWare.CantidadHuespedesConIncidenciasHistoricasYRecientes = 1)
                then
                  begin
                    //Inserto la Alerta de huésped con incidencias históricas y recientes
                    HostalWare.InsertarAlertaDelSistema('Huéspedes con Antecedentes e Incidencias Recientes', 'Existe un huésped con antecedentes y con incidencias recientes');
                  end
                    else
                      begin
                        //Inserto la Alerta de huéspedes con incidencias históricas y recientes
                        HostalWare.InsertarAlertaDelSistema('Huéspedes con Antecedentes e Incidencias Recientes', 'Existen ' + IntToStr(HostalWare.CantidadHuespedesConIncidenciasHistoricasYRecientes) + ' huéspedes con con antecedentes y con incidencias recientes');
                      end;
            end;
        


        
        
            
        //Por último: Muestro nuevamente todas las Alertas Del Sistema
        HostalWare.MostrarTodasAlertasDelSistema;

        //Valido, por la cantidad de alestas que existen, si se habilitan las opciones de 'Detallar Alerta', o no
        if (HostalWare.CantidadAlertasDelSistema > 0)
          then
            begin //Habilito las opciones
              lblbtnDetallesDeAlertaDelSistema.Enabled:= True;
              SubMenuVerDetallesDeAlertaDelSistema.Enabled:= True;

              //Estipulo el caption de la pestaña de Alertas
              AdvOfficePageAdminAlertas.Caption:= 'Alertas (' + IntToStr(HostalWare.CantidadAlertasDelSistema) + ')  ';
            end
              else
                begin  //Desahabilito las opciones
                  lblbtnDetallesDeAlertaDelSistema.Enabled:= True;
                  SubMenuVerDetallesDeAlertaDelSistema.Enabled:= True;

                  //Estipulo el caption de la pestaña de Alertas
                  AdvOfficePageAdminAlertas.Caption:= 'Alertas  ';
                end;

        //Valido, por la cantidad de alestas que existen, el label informativo
        if (HostalWare.CantidadAlertasDelSistema = 1)
          then
            begin
              lblCantidadAlertasDelSistema.Caption:= 'TOTAL = 1 Alerta del Sistema';
            end
              else
                begin
                  lblCantidadAlertasDelSistema.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadAlertasDelSistema) + ' Alertas del Sistema';
                end;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.lblbtnBuscarArchivosDeRegistroClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Busco en los Archivos
        BuscarEnArchivos;;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.lblbtnDetallarArchivoDeRegistroClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Detallo el Registro del Archivo
        DetallarRegistroEnElArchivo;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.blbtnExportarHaciaPDFReporteArchivosHistoricosClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Exporto hacia PDf el Reporte de Archivos
        ExportarHaciaPDFReporteDeArchivos;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.lblbtnPrevisualizarReporteArchivosHistoricosClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Previsualizo el Reporte de Archivos
        PrevisualizarReporteDeArchivos;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SubMenuExportarReporteArchivosDeRegistrosClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Exporto hacia PDf el Reporte de Archivos
        ExportarHaciaPDFReporteDeArchivos;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;


   
procedure TfrmPrincipal.SubMenuImprimirReporteArchivosDeRegistrosClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Imprimo el Reporte de Archivos
        ImprimirReporteDeArchivos;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SubMenuVerDetallesDeRegistroEnElArchivoClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Detallo el Registro del Archivo
        DetallarRegistroEnElArchivo;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SubMenuVerReporteArchivosDeRegistrosClick(
  Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Previsualizo el Reporte de Archivos
        PrevisualizarReporteDeArchivos;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.ActualizarFiltroArchivosPorFechas;
begin
  //En dependencia de lo que esté activado
  if (rbtnFiltroArchivosFechaEspecifica.Checked = True)
    then
      begin //Una fecha en específico (una, de dos posibles: inicio o fin)
        //Muestro los RadioButons de selección de Inicio y Fin de Hospedaje
        rbtnFiltroArchivosInicioDeHospedaje.Visible:= True;
        rbtnFiltroArchivosFinDeHospedaje.Visible:= True;

        //Debo determinar si le interesa la fecha de fin o la de final
        if (rbtnFiltroArchivosInicioDeHospedaje.Checked = True)
          then
            begin //La fecha de inicio en específico
              //Muestro los componentes de inicio
              lblFechaInicioHospedaje.Visible:= True;
              dtpFechaInicioHospedaje.Visible:= True;

              //Oculto los componentes de fin
              lblFechaFinalHospedaje.Visible:= False;
              dtpFechaFinalHospedaje.Visible:= False;
            end
              else
                begin  //La fecha de fin en específico
                  //Muestro los componentes de fin
                  lblFechaFinalHospedaje.Visible:= True;
                  dtpFechaFinalHospedaje.Visible:= True;

                  //Oculto los componentes de inicio
                  lblFechaInicioHospedaje.Visible:= False;
                  dtpFechaInicioHospedaje.Visible:= False;
                end;
      end
        else
          begin  //Rango de fechas
            //Escondo los RadioButons de selección de Inicio y Fin de Hospedaje
            rbtnFiltroArchivosInicioDeHospedaje.Visible:= False;
            rbtnFiltroArchivosFinDeHospedaje.Visible:= False;

            //Muestro los componentes de inicio
            lblFechaInicioHospedaje.Visible:= True;
            dtpFechaInicioHospedaje.Visible:= True;

            //Muestro los componentes de fin
            lblFechaFinalHospedaje.Visible:= True;
            dtpFechaFinalHospedaje.Visible:= True;
          end;
end;

  

procedure TfrmPrincipal.rbtnFiltroArchivosFechaEspecificaClick(Sender: TObject);
begin
  //Actualizo el estado de los filtros de fecha
  ActualizarFiltroArchivosPorFechas;
end;



procedure TfrmPrincipal.rbtnFiltroArchivosRangoDeFechasClick(Sender: TObject);
begin
  //Actualizo el estado de los filtros de fecha
  ActualizarFiltroArchivosPorFechas;

  //Ejecuto el evento OnChange de la fecha de inicio (por si las fechas se han quedado iguales)
  dtpFechaInicioHospedaje.OnChange(self);
end;



procedure TfrmPrincipal.rbtnFiltroArchivosInicioDeHospedajeClick(Sender: TObject);
begin
  //Actualizo el estado de los filtros de fecha
  ActualizarFiltroArchivosPorFechas;
end;



procedure TfrmPrincipal.rbtnFiltroArchivosFinDeHospedajeClick(Sender: TObject);
begin
  //Actualizo el estado de los filtros de fecha
  ActualizarFiltroArchivosPorFechas;
end;



procedure TfrmPrincipal.BuscarEnArchivos;
var
  TrimedCarneIdentidad,
  TrimedNombre,
  TrimedApellidos: AnsiString;
{
  CarneIdentidad,
  Nombre,
  Apellidos: AnsiString;
}
  FechaInicio, FechaFin: TDateTime;

  FechaInicioFirst, FechaFinFirst: TDateTime;
  FechaInicioLast, FechaFinLast: TDateTime;
  
  Label Salida;
begin
  //En dependencia de la pestaña que esté activada
  if (PageControlFiltroArchivos.ActivePageIndex = 0)
    then
      begin //Filtro por datos
        //Recojo los datos de comparación (borrando los espacios en blanco)
        TrimedCarneIdentidad:= Trim(edtFiltroCarneIdentidadHuespedParaHistorico.Text);
        TrimedNombre:= Trim(edtFiltroNombreHuespedParaHistorico.Text);
        TrimedApellidos:= Trim(edtFiltroApellidosHuespedParaHistorico.Text);

        //Valido por si todo está vacío (no se busca nada)
        if (   (TrimedCarneIdentidad = '') and (TrimedNombre = '') and (TrimedApellidos = '')   )
          then
            begin  //Todo está vacío (no se busca nada)
              goto Salida;
            end
              else
                begin
                  //Recojo los datos útiles (sin borrar los espacios en blanco)
                  CarneIdentidad:= LowerCase(edtFiltroCarneIdentidadHuespedParaHistorico.Text);
                  Nombre:= LowerCase(edtFiltroNombreHuespedParaHistorico.Text);
                  Apellidos:= LowerCase(edtFiltroApellidosHuespedParaHistorico.Text);
                end;
                
        //En dependencia de los Edits que se hallan llenado (son 3 Edits)
        if (   (TrimedCarneIdentidad <> '') and (TrimedNombre <> '') and (TrimedApellidos <> '')   )
          then
            begin //Los tres llenos
              //Cambio el DataSource a los componentes DB necesarios (los 3 campos)
              DBGridArchivosHistoricos.DataSource:= DataModuleArchivoDeRegistros.dsSelecRegistrosDeArchivoPorCarneIdentidadPorNombreYPorApellido;
              DBAdvGlowNavigatorArchivosHistoricos.DataSource:= DataModuleArchivoDeRegistros.dsSelecRegistrosDeArchivoPorCarneIdentidadPorNombreYPorApellido;
              DBtxtID_HuespedHistorico.DataSource:= DataModuleArchivoDeRegistros.dsSelecRegistrosDeArchivoPorCarneIdentidadPorNombreYPorApellido;
              {
              //Especifico los DataSet de los componentes DB del QuickReport
              QuickReportRegistroDeHuespedes.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidadPorNombreYPorApellido;

              QuickReportArchivos.QRDBtxtNombre.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidadPorNombreYPorApellido;
              QuickReportArchivos.QRDBtxtApellidos.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidadPorNombreYPorApellido;
              QuickReportArchivos.QRDBtxtCarneIdentidad.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidadPorNombreYPorApellido;
              QuickReportArchivos.QRDBtxtNumeroHabitacion.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidadPorNombreYPorApellido;
              QuickReportArchivos.QRDBtxtTipoCama.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidadPorNombreYPorApellido;
              QuickReportArchivos.QRDBtxtMotivoHospedaje.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidadPorNombreYPorApellido;
              QuickReportArchivos.QRDBtxtPais.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidadPorNombreYPorApellido;
              }


              //Especifico el tipo de busqueda
              TipoBusqueda:= 'PorCarneIdentidadPorNombreYPorApellido';
               
              //Busco los registros en archivos por 3 campos
              HostalWare.MostrarRegistrosDeArchivoPorCarneIdentidadPorNombreYPorApellidos(CarneIdentidad, Nombre, Apellidos);

              //Valido la habilitacion del boton de detalles, en dependencia de la cantidad de registros en el archivo
              if (HostalWare.CantidadRegistrosDeArchivoPorCarneIdentidadPorNombreYPorApellidos > 0)
                then
                  begin
                    //Habilito el boton de Detallar y el SubMenu de Detallar
                    lblbtnDetallarArchivoDeRegistro.Enabled:= True;
                    SubMenuVerDetallesDeRegistroEnElArchivo.Enabled:= True;
                  end
                    else
                      begin
                        //Deshabilito el boton de Detallar y el SubMenu de Detallar
                        lblbtnDetallarArchivoDeRegistro.Enabled:= False;
                        SubMenuVerDetallesDeRegistroEnElArchivo.Enabled:= False;
                      end;

              //Informo la cantidad de registros en el archivo
              if (HostalWare.CantidadRegistrosDeArchivoPorCarneIdentidadPorNombreYPorApellidos = 1)
                then
                  begin
                    //Informo acerca de 1 registro en el archivo
                    lblCantidadArchivosHistoricos.Caption:= 'TOTAL = 1 registro hallado';
                  end
                    else
                      begin
                        //Informo acerca de varios registros en el archivos
                        lblCantidadArchivosHistoricos.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadRegistrosDeArchivoPorCarneIdentidadPorNombreYPorApellidos) + ' registros hallados';
                      end;
            end
              else
                begin
                  //En dependencia de los Edits que se hallan llenado (son 3 Edits)
                  if (   (TrimedCarneIdentidad <> '') and (TrimedNombre <> '') and (TrimedApellidos = '')   )
                    then
                      begin //Dos están llenos
                        //Cambio el DataSource a los componentes DB necesarios (Carné Identidad y Nombre)
                        DBGridArchivosHistoricos.DataSource:= DataModuleArchivoDeRegistros.dsSelecRegistrosDeArchivoPorCarneIdentidadYPorNombre;
                        DBAdvGlowNavigatorArchivosHistoricos.DataSource:= DataModuleArchivoDeRegistros.dsSelecRegistrosDeArchivoPorCarneIdentidadYPorNombre;
                        DBtxtID_HuespedHistorico.DataSource:= DataModuleArchivoDeRegistros.dsSelecRegistrosDeArchivoPorCarneIdentidadYPorNombre;
                        {
                        //Especifico los DataSet de los componentes DB del QuickReport
                        QuickReportRegistroDeHuespedes.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidadYPorNombre;
                        
                        QuickReportArchivos.QRDBtxtNombre.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidadYPorNombre;
                        QuickReportArchivos.QRDBtxtApellidos.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidadYPorNombre;
                        QuickReportArchivos.QRDBtxtCarneIdentidad.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidadYPorNombre;
                        QuickReportArchivos.QRDBtxtNumeroHabitacion.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidadYPorNombre;
                        QuickReportArchivos.QRDBtxtTipoCama.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidadYPorNombre;
                        QuickReportArchivos.QRDBtxtMotivoHospedaje.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidadYPorNombre;
                        QuickReportArchivos.QRDBtxtPais.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidadYPorNombre;
                        }


                        //Especifico el tipo de busqueda
                        TipoBusqueda:= 'PorCarneIdentidadYPorNombre';

                        //Busco los registros en archivos por 2 campos (Carné Identidad y Nombre)
                        HostalWare.MostrarRegistrosDeArchivoPorCarneIdentidadYPorNombre(CarneIdentidad, Nombre);

                        //Valido la habilitacion del boton de detalles, en dependencia de la cantidad de registros en el archivo
                        if (HostalWare.CantidadRegistrosDeArchivoPorCarneIdentidadYPorNombre > 0)
                          then
                            begin
                              //Habilito el boton de Detallar y el SubMenu de Detallar
                              lblbtnDetallarArchivoDeRegistro.Enabled:= True;
                              SubMenuVerDetallesDeRegistroEnElArchivo.Enabled:= True;
                            end
                              else
                                begin
                                  //Deshabilito el boton de Detallar y el SubMenu de Detallar
                                  lblbtnDetallarArchivoDeRegistro.Enabled:= False;
                                  SubMenuVerDetallesDeRegistroEnElArchivo.Enabled:= False;
                                end;

                        //Informo la cantidad de registros en el archivo
                        if (HostalWare.CantidadRegistrosDeArchivoPorCarneIdentidadYPorNombre = 1)
                          then
                            begin
                              //Informo acerca de 1 registro en el archivo
                              lblCantidadArchivosHistoricos.Caption:= 'TOTAL = 1 registro hallado';
                            end
                              else
                                begin
                                  //Informo acerca de varios registros en el archivos
                                  lblCantidadArchivosHistoricos.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadRegistrosDeArchivoPorCarneIdentidadYPorNombre) + ' registros hallados';
                                end;
                      end
                        else
                          begin
                            //En dependencia de los Edits que se hallan llenado (son 3 Edits)
                            if (   (TrimedCarneIdentidad <> '') and (TrimedNombre = '') and (TrimedApellidos <> '')   )
                              then
                                begin //Dos están llenos
                                  //Cambio el DataSource a los componentes DB necesarios (Carné Identidad y Apellidos)
                                  DBGridArchivosHistoricos.DataSource:= DataModuleArchivoDeRegistros.dsSelecRegistrosDeArchivoPorCarneIdentidadYPorApellidos;
                                  DBAdvGlowNavigatorArchivosHistoricos.DataSource:= DataModuleArchivoDeRegistros.dsSelecRegistrosDeArchivoPorCarneIdentidadYPorApellidos;
                                  DBtxtID_HuespedHistorico.DataSource:= DataModuleArchivoDeRegistros.dsSelecRegistrosDeArchivoPorCarneIdentidadYPorApellidos;
                                  {
                                  //Especifico los DataSet de los componentes DB del QuickReport
                                  QuickReportRegistroDeHuespedes.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidadYPorApellidos;

                                  QuickReportArchivos.QRDBtxtNombre.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidadYPorApellidos;
                                  QuickReportArchivos.QRDBtxtApellidos.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidadYPorApellidos;
                                  QuickReportArchivos.QRDBtxtCarneIdentidad.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidadYPorApellidos;
                                  QuickReportArchivos.QRDBtxtNumeroHabitacion.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidadYPorApellidos;
                                  QuickReportArchivos.QRDBtxtTipoCama.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidadYPorApellidos;
                                  QuickReportArchivos.QRDBtxtMotivoHospedaje.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidadYPorApellidos;
                                  QuickReportArchivos.QRDBtxtPais.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidadYPorApellidos;
                                  }


                                  //Especifico el tipo de busqueda
                                  TipoBusqueda:= 'PorCarneIdentidadYPorApellidos';

                                  //Busco los registros en archivos por 2 campos (Carné Identidad y Apellidos)
                                  HostalWare.MostrarRegistrosDeArchivoPorCarneIdentidadYPorApellidos(CarneIdentidad, Apellidos);

                                  //Valido la habilitacion del boton de detalles, en dependencia de la cantidad de registros en el archivo
                                  if (HostalWare.CantidadRegistrosDeArchivoPorCarneIdentidadYPorApellidos > 0)
                                    then
                                      begin
                                        //Habilito el boton de Detallar y el SubMenu de Detallar
                                        lblbtnDetallarArchivoDeRegistro.Enabled:= True;
                                        SubMenuVerDetallesDeRegistroEnElArchivo.Enabled:= True;
                                      end
                                        else
                                          begin
                                            //Deshabilito el boton de Detallar y el SubMenu de Detallar
                                            lblbtnDetallarArchivoDeRegistro.Enabled:= False;
                                            SubMenuVerDetallesDeRegistroEnElArchivo.Enabled:= False;
                                          end;

                                  //Informo la cantidad de registros en el archivo
                                  if (HostalWare.CantidadRegistrosDeArchivoPorCarneIdentidadYPorApellidos = 1)
                                    then
                                      begin
                                        //Informo acerca de 1 registro en el archivo
                                        lblCantidadArchivosHistoricos.Caption:= 'TOTAL = 1 registro hallado';
                                      end
                                        else
                                          begin
                                            //Informo acerca de varios registros en el archivos
                                            lblCantidadArchivosHistoricos.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadRegistrosDeArchivoPorCarneIdentidadYPorApellidos) + ' registros hallados';
                                          end;
                                end
                                  else
                                    begin
                                      //En dependencia de los Edits que se hallan llenado (son 3 Edits)
                                      if (   (TrimedCarneIdentidad = '') and (TrimedNombre <> '') and (TrimedApellidos <> '')   )
                                        then
                                          begin //Dos están llenos
                                            //Cambio el DataSource a los componentes DB necesarios (Nombre y Apellidos)
                                            DBGridArchivosHistoricos.DataSource:= DataModuleArchivoDeRegistros.dsSelecRegistrosDeArchivoPorNombreYPorApellidos;
                                            DBAdvGlowNavigatorArchivosHistoricos.DataSource:= DataModuleArchivoDeRegistros.dsSelecRegistrosDeArchivoPorNombreYPorApellidos;
                                            DBtxtID_HuespedHistorico.DataSource:= DataModuleArchivoDeRegistros.dsSelecRegistrosDeArchivoPorNombreYPorApellidos;
                                            {
                                            //Especifico los DataSet de los componentes DB del QuickReport
                                            QuickReportRegistroDeHuespedes.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorNombreYPorApellidos;

                                            QuickReportArchivos.QRDBtxtNombre.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorNombreYPorApellidos;
                                            QuickReportArchivos.QRDBtxtApellidos.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorNombreYPorApellidos;
                                            QuickReportArchivos.QRDBtxtCarneIdentidad.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorNombreYPorApellidos;
                                            QuickReportArchivos.QRDBtxtNumeroHabitacion.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorNombreYPorApellidos;
                                            QuickReportArchivos.QRDBtxtTipoCama.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorNombreYPorApellidos;
                                            QuickReportArchivos.QRDBtxtMotivoHospedaje.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorNombreYPorApellidos;
                                            QuickReportArchivos.QRDBtxtPais.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorNombreYPorApellidos;
                                            }


                                            //Especifico el tipo de busqueda
                                            TipoBusqueda:= 'PorNombreYPorApellidos';

                                            //Busco los registros en archivos por 2 campos (Nombre y Apellidos)
                                            HostalWare.MostrarRegistrosDeArchivoPorNombreYPorApellidos(Nombre, Apellidos);

                                            //Valido la habilitacion del boton de detalles, en dependencia de la cantidad de registros en el archivo
                                            if (HostalWare.CantidadRegistrosDeArchivoPorNombreYPorApellidos > 0)
                                              then
                                                begin
                                                  //Habilito el boton de Detallar y el SubMenu de Detallar
                                                  lblbtnDetallarArchivoDeRegistro.Enabled:= True;
                                                  SubMenuVerDetallesDeRegistroEnElArchivo.Enabled:= True;
                                                end
                                                  else
                                                    begin
                                                      //Deshabilito el boton de Detallar y el SubMenu de Detallar
                                                      lblbtnDetallarArchivoDeRegistro.Enabled:= False;
                                                      SubMenuVerDetallesDeRegistroEnElArchivo.Enabled:= False;
                                                    end;

                                            //Informo la cantidad de registros en el archivo
                                            if (HostalWare.CantidadRegistrosDeArchivoPorNombreYPorApellidos = 1)
                                              then
                                                begin
                                                  //Informo acerca de 1 registro en el archivo
                                                  lblCantidadArchivosHistoricos.Caption:= 'TOTAL = 1 registro hallado';
                                                end
                                                  else
                                                    begin
                                                      //Informo acerca de varios registros en el archivos
                                                      lblCantidadArchivosHistoricos.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadRegistrosDeArchivoPorNombreYPorApellidos) + ' registros hallados';
                                                    end;
                                          end
                                            else
                                              begin
                                                //En dependencia de los Edits que se hallan llenado (son 3 Edits)
                                                if (   (TrimedCarneIdentidad <> '') and (TrimedNombre = '') and (TrimedApellidos = '')   )
                                                  then
                                                    begin //Uno solo está lleno
                                                      //Cambio el DataSource a los componentes DB necesarios (Carné Identidad)
                                                      DBGridArchivosHistoricos.DataSource:= DataModuleArchivoDeRegistros.dsSelecRegistrosDeArchivoPorCarneIdentidad;
                                                      DBAdvGlowNavigatorArchivosHistoricos.DataSource:= DataModuleArchivoDeRegistros.dsSelecRegistrosDeArchivoPorCarneIdentidad;
                                                      DBtxtID_HuespedHistorico.DataSource:= DataModuleArchivoDeRegistros.dsSelecRegistrosDeArchivoPorCarneIdentidad;
                                                      {
                                                      //Especifico los DataSet de los componentes DB del QuickReport
                                                      QuickReportRegistroDeHuespedes.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidad;

                                                      QuickReportArchivos.QRDBtxtNombre.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidad;
                                                      QuickReportArchivos.QRDBtxtApellidos.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidad;
                                                      QuickReportArchivos.QRDBtxtCarneIdentidad.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidad;
                                                      QuickReportArchivos.QRDBtxtNumeroHabitacion.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidad;
                                                      QuickReportArchivos.QRDBtxtTipoCama.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidad;
                                                      QuickReportArchivos.QRDBtxtMotivoHospedaje.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidad;
                                                      QuickReportArchivos.QRDBtxtPais.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidad;
                                                      }


                                                      //Especifico el tipo de busqueda
                                                      TipoBusqueda:= 'PorCarneIdentidad';

                                                      //Busco los registros en archivos por 1 campo (Carné Identidad)
                                                      HostalWare.MostrarRegistrosDeArchivoPorCarneIdentidad(CarneIdentidad);

                                                      //Valido la habilitacion del boton de detalles, en dependencia de la cantidad de registros en el archivo
                                                      if (HostalWare.CantidadRegistrosDeArchivoPorCarneIdentidad > 0)
                                                        then
                                                          begin
                                                            //Habilito el boton de Detallar y el SubMenu de Detallar
                                                            lblbtnDetallarArchivoDeRegistro.Enabled:= True;
                                                            SubMenuVerDetallesDeRegistroEnElArchivo.Enabled:= True;
                                                          end
                                                            else
                                                              begin
                                                                //Deshabilito el boton de Detallar y el SubMenu de Detallar
                                                                lblbtnDetallarArchivoDeRegistro.Enabled:= False;
                                                                SubMenuVerDetallesDeRegistroEnElArchivo.Enabled:= False;
                                                              end;

                                                      //Informo la cantidad de registros en el archivo
                                                      if (HostalWare.CantidadRegistrosDeArchivoPorCarneIdentidad = 1)
                                                        then
                                                          begin
                                                            //Informo acerca de 1 registro en el archivo
                                                            lblCantidadArchivosHistoricos.Caption:= 'TOTAL = 1 registro hallado';
                                                          end
                                                            else
                                                              begin
                                                                //Informo acerca de varios registros en el archivos
                                                                lblCantidadArchivosHistoricos.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadRegistrosDeArchivoPorCarneIdentidad) + ' registros hallados';
                                                              end;
                                                    end
                                                      else
                                                        begin
                                                          //En dependencia de los Edits que se hallan llenado (son 3 Edits)
                                                          if (   (TrimedCarneIdentidad = '') and (TrimedNombre <> '') and (TrimedApellidos = '')   )
                                                            then
                                                              begin //Uno solo está lleno
                                                                //Cambio el DataSource a los componentes DB necesarios Nombre)
                                                                DBGridArchivosHistoricos.DataSource:= DataModuleArchivoDeRegistros.dsSelecRegistrosDeArchivoPorNombre;
                                                                DBAdvGlowNavigatorArchivosHistoricos.DataSource:= DataModuleArchivoDeRegistros.dsSelecRegistrosDeArchivoPorNombre;
                                                                DBtxtID_HuespedHistorico.DataSource:= DataModuleArchivoDeRegistros.dsSelecRegistrosDeArchivoPorNombre;
                                                                {
                                                                //Especifico los DataSet de los componentes DB del QuickReport
                                                                QuickReportRegistroDeHuespedes.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorNombre;

                                                                QuickReportArchivos.QRDBtxtNombre.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorNombre;
                                                                QuickReportArchivos.QRDBtxtApellidos.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorNombre;
                                                                QuickReportArchivos.QRDBtxtCarneIdentidad.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorNombre;
                                                                QuickReportArchivos.QRDBtxtNumeroHabitacion.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorNombre;
                                                                QuickReportArchivos.QRDBtxtTipoCama.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorNombre;
                                                                QuickReportArchivos.QRDBtxtMotivoHospedaje.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorNombre;
                                                                QuickReportArchivos.QRDBtxtPais.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorNombre;
                                                                }


                                                                //Especifico el tipo de busqueda
                                                                TipoBusqueda:= 'PorNombre';

                                                                //Busco los registros en archivos por 1 campo (Nombre)
                                                                HostalWare.MostrarRegistrosDeArchivoPorNombre(Nombre);

                                                                //Valido la habilitacion del boton de detalles, en dependencia de la cantidad de registros en el archivo
                                                                if (HostalWare.CantidadRegistrosDeArchivoPorNombre > 0)
                                                                  then
                                                                    begin
                                                                      //Habilito el boton de Detallar y el SubMenu de Detallar
                                                                      lblbtnDetallarArchivoDeRegistro.Enabled:= True;
                                                                      SubMenuVerDetallesDeRegistroEnElArchivo.Enabled:= True;
                                                                    end
                                                                      else
                                                                        begin
                                                                          //Deshabilito el boton de Detallar y el SubMenu de Detallar
                                                                          lblbtnDetallarArchivoDeRegistro.Enabled:= False;
                                                                          SubMenuVerDetallesDeRegistroEnElArchivo.Enabled:= False;
                                                                        end;

                                                                //Informo la cantidad de registros en el archivo
                                                                if (HostalWare.CantidadRegistrosDeArchivoPorNombre = 1)
                                                                  then
                                                                    begin
                                                                      //Informo acerca de 1 registro en el archivo
                                                                      lblCantidadArchivosHistoricos.Caption:= 'TOTAL = 1 registro hallado';
                                                                    end
                                                                      else
                                                                        begin
                                                                          //Informo acerca de varios registros en el archivos
                                                                          lblCantidadArchivosHistoricos.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadRegistrosDeArchivoPorNombre) + ' registros hallados';
                                                                        end;
                                                              end
                                                                else
                                                                  begin
                                                                    //En dependencia de los Edits que se hallan llenado (son 3 Edits)
                                                                    if (   (TrimedCarneIdentidad = '') and (TrimedNombre = '') and (TrimedApellidos <> '')   )
                                                                      then
                                                                        begin //Uno solo está lleno
                                                                          {
                                                                          //Especifico los DataSet de los componentes DB del QuickReport
                                                                          QuickReportRegistroDeHuespedes.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorApellidos;

                                                                          QuickReportArchivos.QRDBtxtNombre.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorApellidos;
                                                                          QuickReportArchivos.QRDBtxtApellidos.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorApellidos;
                                                                          QuickReportArchivos.QRDBtxtCarneIdentidad.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorApellidos;
                                                                          QuickReportArchivos.QRDBtxtNumeroHabitacion.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorApellidos;
                                                                          QuickReportArchivos.QRDBtxtTipoCama.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorApellidos;
                                                                          QuickReportArchivos.QRDBtxtMotivoHospedaje.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorApellidos;
                                                                          QuickReportArchivos.QRDBtxtPais.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorApellidos;
                                                                          }


                                                                          //Cambio el DataSource a los componentes DB necesarios (Apellidos)
                                                                          DBGridArchivosHistoricos.DataSource:= DataModuleArchivoDeRegistros.dsSelecRegistrosDeArchivoPorApellidos;
                                                                          DBAdvGlowNavigatorArchivosHistoricos.DataSource:= DataModuleArchivoDeRegistros.dsSelecRegistrosDeArchivoPorApellidos;
                                                                          DBtxtID_HuespedHistorico.DataSource:= DataModuleArchivoDeRegistros.dsSelecRegistrosDeArchivoPorApellidos;

                                                                          //Especifico el tipo de busqueda
                                                                          TipoBusqueda:= 'PorApellidos';

                                                                          //Busco los registros en archivos por 1 campo (Apellidos)
                                                                          HostalWare.MostrarRegistrosDeArchivoPorApellidos(Apellidos);

                                                                          //Valido la habilitacion del boton de detalles, en dependencia de la cantidad de registros en el archivo
                                                                          if (HostalWare.CantidadRegistrosDeArchivoPorApellidos > 0)
                                                                            then
                                                                              begin
                                                                                //Habilito el boton de Detallar y el SubMenu de Detallar
                                                                                lblbtnDetallarArchivoDeRegistro.Enabled:= True;
                                                                                SubMenuVerDetallesDeRegistroEnElArchivo.Enabled:= True;
                                                                              end
                                                                                else
                                                                                  begin
                                                                                    //Deshabilito el boton de Detallar y el SubMenu de Detallar
                                                                                    lblbtnDetallarArchivoDeRegistro.Enabled:= False;
                                                                                    SubMenuVerDetallesDeRegistroEnElArchivo.Enabled:= False;
                                                                                  end;

                                                                          //Informo la cantidad de registros en el archivo
                                                                          if (HostalWare.CantidadRegistrosDeArchivoPorApellidos = 1)
                                                                            then
                                                                              begin
                                                                                //Informo acerca de 1 registro en el archivo
                                                                                lblCantidadArchivosHistoricos.Caption:= 'TOTAL = 1 registro hallado';
                                                                              end
                                                                                else
                                                                                  begin
                                                                                    //Informo acerca de varios registros en el archivos
                                                                                    lblCantidadArchivosHistoricos.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadRegistrosDeArchivoPorApellidos) + ' registros hallados';
                                                                                  end;
                                                                        end;
                                                                  end;
                                                        end;
                                              end;
                                    end;
                          end;
                end;
      end
        else
          begin //Filtro por fechas
            //Valido qué tipo de búsqueda por fecha se desea
            if (rbtnFiltroArchivosFechaEspecifica.Checked = True)
              then
                begin //Una fecha en especifico
                  //Valido por cuál de las fechas se necesita buscar
                  if (rbtnFiltroArchivosInicioDeHospedaje.Checked = True)
                    then
                      begin  //La fecha de Inicio de Hospedaje
                        //Recojo y compongo los intervalos internos de la fecha de Inicio
                        FechaInicioFirst:= StrToDateTime(   DateToStr(dtpFechaInicioHospedaje.Date) + ' ' + '00:00:01'  );
                        FechaInicioLast:= StrToDateTime(   DateToStr(dtpFechaInicioHospedaje.Date) + ' ' + '23:59:59'  );

                        //Cambio el DataSource a los componentes DB necesarios (fecha de inicio)
                        DBGridArchivosHistoricos.DataSource:= DataModuleArchivoDeRegistros.dsSelecRegistrosArchivadosPorIntervalosDeFechasInicioHospedaje;
                        DBAdvGlowNavigatorArchivosHistoricos.DataSource:= DataModuleArchivoDeRegistros.dsSelecRegistrosArchivadosPorIntervalosDeFechasInicioHospedaje;
                        DBtxtID_HuespedHistorico.DataSource:= DataModuleArchivoDeRegistros.dsSelecRegistrosArchivadosPorIntervalosDeFechasInicioHospedaje;
                        {
                        //Especifico los DataSet de los componentes DB del QuickReport
                        QuickReportRegistroDeHuespedes.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosArchivadosPorIntervalosDeFechasInicioHospedaje;

                        QuickReportArchivos.QRDBtxtNombre.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosArchivadosPorIntervalosDeFechasInicioHospedaje;
                        QuickReportArchivos.QRDBtxtApellidos.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosArchivadosPorIntervalosDeFechasInicioHospedaje;
                        QuickReportArchivos.QRDBtxtCarneIdentidad.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosArchivadosPorIntervalosDeFechasInicioHospedaje;
                        QuickReportArchivos.QRDBtxtNumeroHabitacion.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosArchivadosPorIntervalosDeFechasInicioHospedaje;
                        QuickReportArchivos.QRDBtxtTipoCama.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosArchivadosPorIntervalosDeFechasInicioHospedaje;
                        QuickReportArchivos.QRDBtxtMotivoHospedaje.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosArchivadosPorIntervalosDeFechasInicioHospedaje;
                        QuickReportArchivos.QRDBtxtPais.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosArchivadosPorIntervalosDeFechasInicioHospedaje;
                        }


                        //Especifico el tipo de busqueda
                        TipoBusqueda:= 'PorIntervalosDeFechasInicioHospedaje';

                        //Busco en los archivos por la fecha de Inicio
                        HostalWare.MostrarRegistrosDeArchivoPorIntervalosDeFechaInicioHospedaje(FechaInicioFirst, FechaInicioLast);

                        //Valido la habilitacion del boton de detalles, en dependencia de la cantidad de registros en el archivo
                        if (HostalWare.CantidadRegistrosDeArchivoPorIntervalosDeFechaInicioHospedaje > 0)
                          then
                            begin
                              //Habilito el boton de Detallar y el SubMenu de Detallar
                              lblbtnDetallarArchivoDeRegistro.Enabled:= True;
                              SubMenuVerDetallesDeRegistroEnElArchivo.Enabled:= True;
                            end
                              else
                                begin
                                  //Deshabilito el boton de Detallar y el SubMenu de Detallar
                                  lblbtnDetallarArchivoDeRegistro.Enabled:= False;
                                  SubMenuVerDetallesDeRegistroEnElArchivo.Enabled:= False;
                                end;

                        //Informo la cantidad de registros en el archivo
                        if (HostalWare.CantidadRegistrosDeArchivoPorIntervalosDeFechaInicioHospedaje = 1)
                          then
                            begin
                              //Informo acerca de 1 registro en el archivo
                              lblCantidadArchivosHistoricos.Caption:= 'TOTAL = 1 registro hallado';
                            end
                              else
                                begin
                                  //Informo acerca de varios registros en el archivos
                                  lblCantidadArchivosHistoricos.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadRegistrosDeArchivoPorIntervalosDeFechaInicioHospedaje) + ' registros hallados';
                                end;
                      end
                        else
                          begin
                            if (rbtnFiltroArchivosFinDeHospedaje.Checked = True)
                              then
                                begin  //La fecha de Fin de Hospedaje
                                  //Recojo y compongo los intervalos internos de la fecha de Fin
                                  FechaFinFirst:= StrToDateTime(   DateToStr(dtpFechaFinalHospedaje.Date) + ' ' + '00:00:01'  );
                                  FechaFinLast:= StrToDateTime(   DateToStr(dtpFechaFinalHospedaje.Date) + ' ' + '23:59:59'  );

                                  //Cambio el DataSource a los componentes DB necesarios (fecha de fin)
                                  DBGridArchivosHistoricos.DataSource:= DataModuleArchivoDeRegistros.dsSelecRegistrosArchivadosPorIntervalosDeFechasFinalHospedaje;
                                  DBAdvGlowNavigatorArchivosHistoricos.DataSource:= DataModuleArchivoDeRegistros.dsSelecRegistrosArchivadosPorIntervalosDeFechasFinalHospedaje;
                                  DBtxtID_HuespedHistorico.DataSource:= DataModuleArchivoDeRegistros.dsSelecRegistrosArchivadosPorIntervalosDeFechasFinalHospedaje;
                                  {
                                  //Especifico los DataSet de los componentes DB del QuickReport
                                  QuickReportRegistroDeHuespedes.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosArchivadosPorIntervalosDeFechasFinalHospedaje;

                                  QuickReportArchivos.QRDBtxtNombre.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosArchivadosPorIntervalosDeFechasFinalHospedaje;
                                  QuickReportArchivos.QRDBtxtApellidos.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosArchivadosPorIntervalosDeFechasFinalHospedaje;
                                  QuickReportArchivos.QRDBtxtCarneIdentidad.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosArchivadosPorIntervalosDeFechasFinalHospedaje;
                                  QuickReportArchivos.QRDBtxtNumeroHabitacion.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosArchivadosPorIntervalosDeFechasFinalHospedaje;
                                  QuickReportArchivos.QRDBtxtTipoCama.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosArchivadosPorIntervalosDeFechasFinalHospedaje;
                                  QuickReportArchivos.QRDBtxtMotivoHospedaje.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosArchivadosPorIntervalosDeFechasFinalHospedaje;
                                  QuickReportArchivos.QRDBtxtPais.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosArchivadosPorIntervalosDeFechasFinalHospedaje;
                                  }


                                  //Especifico el tipo de busqueda
                                  TipoBusqueda:= 'PorIntervalosDeFechasFinalHospedaje';

                                  //Busco en los archivos por la fecha de Fin
                                  HostalWare.MostrarRegistrosDeArchivoPorIntervalosDeFechaFinalHospedaje(FechaFinFirst, FechaFinLast);

                                  //Valido la habilitacion del boton de detalles, en dependencia de la cantidad de registros en el archivo
                                  if (HostalWare.CantidadRegistrosDeArchivoPorIntervalosDeFechaFinalHospedaje > 0)
                                    then
                                      begin
                                        //Habilito el boton de Detallar y el SubMenu de Detallar
                                        lblbtnDetallarArchivoDeRegistro.Enabled:= True;
                                        SubMenuVerDetallesDeRegistroEnElArchivo.Enabled:= True;
                                      end
                                        else
                                          begin
                                            //Deshabilito el boton de Detallar y el SubMenu de Detallar
                                            lblbtnDetallarArchivoDeRegistro.Enabled:= False;
                                            SubMenuVerDetallesDeRegistroEnElArchivo.Enabled:= False;
                                          end;

                                  //Informo la cantidad de registros en el archivo
                                  if (HostalWare.CantidadRegistrosDeArchivoPorIntervalosDeFechaFinalHospedaje = 1)
                                    then
                                      begin
                                        //Informo acerca de 1 registro en el archivo
                                        lblCantidadArchivosHistoricos.Caption:= 'TOTAL = 1 registro hallado';
                                      end
                                        else
                                          begin
                                            //Informo acerca de varios registros en el archivos
                                            lblCantidadArchivosHistoricos.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadRegistrosDeArchivoPorIntervalosDeFechaFinalHospedaje) + ' registros hallados';
                                          end;
                              end;
                          end;
                end
                  else
                    begin
                      if (rbtnFiltroArchivosRangoDeFechas.Checked = True)
                        then
                          begin //Un rango de fechas
                            //Recojo la fecha de incio
                            FechaInicio:= StrToDateTime(   DateToStr(dtpFechaInicioHospedaje.Date) + ' ' + '00:00:01'  );

                            //Recojo la fecha de fin
                            FechaFin:= StrToDateTime(   DateToStr(dtpFechaFinalHospedaje.Date) + ' ' + '23:59:59'  );
                            {
                            //Especifico los DataSet de los componentes DB del QuickReport
                            QuickReportRegistroDeHuespedes.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosArchivadosEnIntervalosDeFechas;

                            QuickReportArchivos.QRDBtxtNombre.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosArchivadosEnIntervalosDeFechas;
                            QuickReportArchivos.QRDBtxtApellidos.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosArchivadosEnIntervalosDeFechas;
                            QuickReportArchivos.QRDBtxtCarneIdentidad.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosArchivadosEnIntervalosDeFechas;
                            QuickReportArchivos.QRDBtxtNumeroHabitacion.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosArchivadosEnIntervalosDeFechas;
                            QuickReportArchivos.QRDBtxtTipoCama.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosArchivadosEnIntervalosDeFechas;
                            QuickReportArchivos.QRDBtxtMotivoHospedaje.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosArchivadosEnIntervalosDeFechas;
                            QuickReportArchivos.QRDBtxtPais.DataSet:= DataModuleArchivoDeRegistros.spSelecRegistrosArchivadosEnIntervalosDeFechas;
                            }

                                                        
                            //Cambio el DataSource a los componentes DB necesarios (rango de fechas)
                            DBGridArchivosHistoricos.DataSource:= DataModuleArchivoDeRegistros.dsSelecRegistrosArchivadosEnIntervalosDeFechas;
                            DBAdvGlowNavigatorArchivosHistoricos.DataSource:= DataModuleArchivoDeRegistros.dsSelecRegistrosArchivadosEnIntervalosDeFechas;
                            DBtxtID_HuespedHistorico.DataSource:= DataModuleArchivoDeRegistros.dsSelecRegistrosArchivadosEnIntervalosDeFechas;

                            //Especifico el tipo de busqueda
                            TipoBusqueda:= 'EnIntervalosDeFechas';

                            //Busco en los archivos por rango de fechas
                            HostalWare.MostrarRegistrosArchivadosEnIntervalosDeFechas(FechaInicio, FechaFin);

                            //Valido la habilitacion del boton de detalles, en dependencia de la cantidad de registros en el archivo
                            if (HostalWare.CantidadRegistrosArchivadosEnIntervalosDeFechas > 0)
                              then
                                begin
                                  //Habilito el boton de Detallar y el SubMenu de Detallar
                                  lblbtnDetallarArchivoDeRegistro.Enabled:= True;
                                  SubMenuVerDetallesDeRegistroEnElArchivo.Enabled:= True;
                                end
                                  else
                                    begin
                                      //Deshabilito el boton de Detallar y el SubMenu de Detallar
                                      lblbtnDetallarArchivoDeRegistro.Enabled:= False;
                                      SubMenuVerDetallesDeRegistroEnElArchivo.Enabled:= False;
                                    end;

                            //Informo la cantidad de registros en el archivo
                            if (HostalWare.CantidadRegistrosArchivadosEnIntervalosDeFechas = 1)
                              then
                                begin
                                  //Informo acerca de 1 registro en el archivo
                                  lblCantidadArchivosHistoricos.Caption:= 'TOTAL = 1 registro hallado';
                                end
                                  else
                                    begin
                                      //Informo acerca de varios registros en el archivos
                                      lblCantidadArchivosHistoricos.Caption:= 'TOTAL = ' + IntToStr(HostalWare.CantidadRegistrosArchivadosEnIntervalosDeFechas) + ' registros hallados';
                                    end;
                          end;
                    end;
          end;

  //Label de salida del procedimiento
  Salida:
end;


   
procedure TfrmPrincipal.SubMenuBuscarEnLosArchivosClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Busco en los Archivos
        BuscarEnArchivos;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.SoloLetrasConEspaciosYPuntuacionKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13])
    then
      begin
        //Busco en los Archivos
        BuscarEnArchivos;
      end;

  //Valido para solo nombres
  if not (Key in['a'..'z', 'A'..'Z', 'ñ', 'Ñ', 'á', 'é', 'í', 'ó', 'ú', 'Á', 'É', 'Í', 'Ó', 'Ú', ' ', #8, #13]) then Abort;
end;



procedure TfrmPrincipal.SoloLetrasYNumerosSinPuntuacionNiEspaciosKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in [#13])
    then
      begin
        //Busco en los Archivos
        BuscarEnArchivos;
      end;
      
  //Valido para solo caracteres
  if not (Key in['a'..'z', 'A'..'Z', '0'..'9', #8, #13]) then Abort;
end;



procedure TfrmPrincipal.DetallarRegistroEnElArchivo;
var
  TrimedCarneIdentidad,
  TrimedNombre,
  TrimedApellidos: AnsiString;
    
label Ejecutar, Salida;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
{


        //Debo validad que haya al menos una alerta en el DBGrid
        //En dependencia de la pestaña que esté activada
        if (PageControlFiltroArchivos.ActivePageIndex = 0)
          then
            begin //Filtro por datos
              //Recojo los datos de comparación (borrando los espacios en blanco)
              TrimedCarneIdentidad:= Trim(edtFiltroCarneIdentidadHuespedParaHistorico.Text);
              TrimedNombre:= Trim(edtFiltroNombreHuespedParaHistorico.Text);
              TrimedApellidos:= Trim(edtFiltroApellidosHuespedParaHistorico.Text);

              //Valido por si todo está vacío (no se busca nada)
              if (   (TrimedCarneIdentidad = '') and (TrimedNombre = '') and (TrimedApellidos = '')   )
                then
                  begin  //Todo está vacío (no se busca nada)
                    goto Salida;
                  end;
                
              //En dependencia de los Edits que se hallan llenado (son 3 Edits)
              if (   (TrimedCarneIdentidad <> '') and (TrimedNombre <> '') and (TrimedApellidos <> '')   )
                then
                  begin //Los tres llenos
                    //Valido la habilitacion del boton de detalles, en dependencia de la cantidad de registros en el archivo
                    if (HostalWare.CantidadRegistrosDeArchivoPorCarneIdentidadPorNombreYPorApellidos > 0)
                      then
                        begin
                          //Ejecuto el procedimiento
                          goto Ejecutar;
                        end
                          else
                            begin
                              //Salgo del procedimiento
                              goto Salida;
                            end;
                  end
                    else
                      begin
                        //En dependencia de los Edits que se hallan llenado (son 3 Edits)
                        if (   (TrimedCarneIdentidad <> '') and (TrimedNombre <> '') and (TrimedApellidos = '')   )
                          then
                            begin //Dos están llenos
                              //Valido la habilitacion del boton de detalles, en dependencia de la cantidad de registros en el archivo
                              if (HostalWare.CantidadRegistrosDeArchivoPorCarneIdentidadYPorNombre > 0)
                                then
                                  begin
                                    //Ejecuto el procedimiento
                                    goto Ejecutar;
                                  end
                                    else
                                      begin
                                        //Salgo del procedimiento
                                        goto Salida;
                                      end;
                            end
                              else
                                begin
                                  //En dependencia de los Edits que se hallan llenado (son 3 Edits)
                                  if (   (TrimedCarneIdentidad <> '') and (TrimedNombre = '') and (TrimedApellidos <> '')   )
                                    then
                                      begin //Dos están llenos
                                        //Valido la habilitacion del boton de detalles, en dependencia de la cantidad de registros en el archivo
                                        if (HostalWare.CantidadRegistrosDeArchivoPorCarneIdentidadYPorApellidos > 0)
                                          then
                                            begin
                                              //Ejecuto el procedimiento
                                              goto Ejecutar;
                                            end
                                              else
                                                begin
                                                  //Salgo del procedimiento
                                                  goto Salida;
                                                end;
                                      end
                                        else
                                          begin
                                            //En dependencia de los Edits que se hallan llenado (son 3 Edits)
                                            if (   (TrimedCarneIdentidad = '') and (TrimedNombre <> '') and (TrimedApellidos <> '')   )
                                              then
                                                begin //Dos están llenos
                                                  //Valido la habilitacion del boton de detalles, en dependencia de la cantidad de registros en el archivo
                                                  if (HostalWare.CantidadRegistrosDeArchivoPorNombreYPorApellidos > 0)
                                                    then
                                                      begin
                                                        //Ejecuto el procedimiento
                                                        goto Ejecutar;
                                                      end
                                                        else
                                                          begin
                                                            //Salgo del procedimiento
                                                            goto Salida;
                                                          end;
                                                end
                                                  else
                                                    begin
                                                      //En dependencia de los Edits que se hallan llenado (son 3 Edits)
                                                      if (   (TrimedCarneIdentidad <> '') and (TrimedNombre = '') and (TrimedApellidos = '')   )
                                                        then
                                                          begin //Uno solo está lleno
                                                            //Valido la habilitacion del boton de detalles, en dependencia de la cantidad de registros en el archivo
                                                            if (HostalWare.CantidadRegistrosDeArchivoPorCarneIdentidad > 0)
                                                              then
                                                                begin
                                                                  //Ejecuto el procedimiento
                                                                  goto Ejecutar;
                                                                end
                                                                  else
                                                                    begin
                                                                      //Salgo del procedimiento
                                                                      goto Salida;
                                                                    end;
                                                          end
                                                            else
                                                              begin
                                                                //En dependencia de los Edits que se hallan llenado (son 3 Edits)
                                                                if (   (TrimedCarneIdentidad = '') and (TrimedNombre <> '') and (TrimedApellidos = '')   )
                                                                  then
                                                                    begin //Uno solo está lleno
                                                                      //Valido la habilitacion del boton de detalles, en dependencia de la cantidad de registros en el archivo
                                                                      if (HostalWare.CantidadRegistrosDeArchivoPorNombre > 0)
                                                                        then
                                                                          begin
                                                                            //Ejecuto el procedimiento
                                                                            goto Ejecutar;
                                                                          end
                                                                            else
                                                                              begin
                                                                                //Salgo del procedimiento
                                                                                goto Salida;
                                                                              end;
                                                                    end
                                                                      else
                                                                        begin
                                                                          //En dependencia de los Edits que se hallan llenado (son 3 Edits)
                                                                          if (   (TrimedCarneIdentidad = '') and (TrimedNombre = '') and (TrimedApellidos <> '')   )
                                                                            then
                                                                              begin //Uno solo está lleno
                                                                                //Valido la habilitacion del boton de detalles, en dependencia de la cantidad de registros en el archivo
                                                                                if (HostalWare.CantidadRegistrosDeArchivoPorApellidos > 0)
                                                                                  then
                                                                                    begin
                                                                                      //Ejecuto el procedimiento
                                                                                      goto Ejecutar;
                                                                                    end
                                                                                      else
                                                                                        begin
                                                                                          //Salgo del procedimiento
                                                                                          goto Salida;
                                                                                        end;
                                                                              end;
                                                                        end;
                                                              end;
                                                    end;
                                          end;
                                end;
                      end;
            end
              else
                begin //Filtro por fechas
                  //Valido qué tipo de búsqueda por fecha se desea
                  if (rbtnFiltroArchivosFechaEspecifica.Checked = True)
                    then
                      begin //Una fecha en especifico
                        //Valido por cuál de las fechas se necesita buscar
                        if (rbtnFiltroArchivosInicioDeHospedaje.Checked = True)
                          then
                            begin  //La fecha de Inicio de Hospedaje
                              //Valido la habilitacion del boton de detalles, en dependencia de la cantidad de registros en el archivo
                              if (HostalWare.CantidadRegistrosDeArchivoPorIntervalosDeFechaInicioHospedaje > 0)
                                then
                                  begin
                                    //Ejecuto el procedimiento
                                    goto Ejecutar;
                                  end
                                    else
                                      begin
                                        //Salgo del procedimiento
                                        goto Salida;
                                      end;
                            end
                              else
                                begin
                                  if (rbtnFiltroArchivosFinDeHospedaje.Checked = True)
                                    then
                                      begin  //La fecha de Fin de Hospedaje
                                        //Valido la habilitacion del boton de detalles, en dependencia de la cantidad de registros en el archivo
                                        if (HostalWare.CantidadRegistrosDeArchivoPorIntervalosDeFechaFinalHospedaje > 0)
                                          then
                                            begin
                                              //Ejecuto el procedimiento
                                              goto Ejecutar;
                                            end
                                              else
                                                begin
                                                  //Salgo del procedimiento
                                                  goto Salida;
                                                end;
                                    end;
                                end;
                      end
                        else
                          begin
                            if (rbtnFiltroArchivosRangoDeFechas.Checked = True)
                              then
                                begin //Un rango de fechas
                                  //Valido la habilitacion del boton de detalles, en dependencia de la cantidad de registros en el archivo
                                  if (HostalWare.CantidadRegistrosArchivadosEnIntervalosDeFechas > 0)
                                    then
                                      begin
                                        //Ejecuto el procedimiento
                                        goto Ejecutar;
                                      end
                                        else
                                          begin
                                            //Salgo del procedimiento
                                            goto Salida;
                                          end;
                                end;
                          end;
                end;
}
        //Etiqueta de Ejecucion. Todo al parecer OK.
        Ejecutar:

        //Ultima comprobacion
        if (lblbtnDetallarArchivoDeRegistro.Enabled = True)
          then
            begin
              //Le envio el ID_HuespedHistorico a la forma de detalle
              frmDetalleDeRegistroEnArchivo.FID_HuespedHistorico:= StrToInt(DBtxtID_HuespedHistorico.Field.Text);

              //Muestro la forma de detalle
              frmDetalleDeRegistroEnArchivo.Position:= poDesktopCenter;
              frmDetalleDeRegistroEnArchivo.ShowModal;
            end
              else
                begin
                  goto Salida;
                end;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;

  //Etiqueta de salida, pues algo está mal
  Salida:
end;



procedure TfrmPrincipal.DBGridArchivosHistoricosDblClick(Sender: TObject);
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Detallo el Registro del Archivo
        DetallarRegistroEnElArchivo;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.ExportarHaciaPDFReporteDeArchivos;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Si se buscó algo (funciona bien así)
        if (lblbtnDetallarArchivoDeRegistro.Enabled = True)
          then
            begin
              //Otra verificación
              if (TipoBusqueda <> 'ninguna')
                then
                  begin
                    //Determino cuál tipo de búsqueda se realizó
                    if (TipoBusqueda = 'PorCarneIdentidadPorNombreYPorApellido')
                      then
                        begin
                          //Conformo los captions del QuickReport
                          QuickReportArchivosPorCarneIdentidadPorNombreYPorApellido.QRlblReferente.Caption:= 'Reporte de registros archivados, pertenecientes al carné de identidad: ' + CarneIdentidad + ', al nombre: ' + Nombre + ' y a los apellidos: ' + Apellidos + '.';
                          QuickReportArchivosPorCarneIdentidadPorNombreYPorApellido.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                          //Envio datos adicionales para el Preview
                          frmPreviewReporteArchivosPorCarneIdentidadNombreYApellidos.IdiomaImperante:= IdiomaImperante;
                          frmPreviewReporteArchivosPorCarneIdentidadNombreYApellidos.FechaDelSistema:= ObtenerFechaDelSistema;

                          //---- *** A partir de aquí exporto el reporte hacia PDF *** ----

                          //Le envio el reporte hacia el ExportQR
                          //QuickReportHabitacionesExistentes.Prepare;
                          EXQR.Report := QuickReportArchivosPorCarneIdentidadPorNombreYPorApellido;

                          //Mando a que el ExportQR exporte el reporte ya almacenado
                          EXQR.ExportQR;

                          //Probé exportando directamente hacia PDF pero salva en la raiz directamente, no saca la bandeja de diálogo
                          //EXQR.ExportQRPDF('Resumen P. de Excelencia (' + ComboBoxSemestreResumenesDeExcelencia.Text + ' del año ' + anno + ') ' + DptoCapacitacion.ObtenerFechaDelSistema, False, True);
                          //EXQR.ExportQRPDF('Hola', True); esta debería servir, pero no

                          QuickReportArchivosPorCarneIdentidadPorNombreYPorApellido.QRPrinter.Free;
                          QuickReportArchivosPorCarneIdentidadPorNombreYPorApellido.QRPrinter := nil;
                        end
                          else
                            begin
                              if (TipoBusqueda = 'PorCarneIdentidadYPorNombre')
                                then
                                  begin
                                    //Conformo los captions del QuickReport
                                    QuickReportArchivosPorCarneIdentidadYPorNombre.QRlblReferente.Caption:= 'Reporte de registros archivados, pertenecientes al carné de identidad: ' + CarneIdentidad + ' y al nombre: ' + Nombre + '.';
                                    QuickReportArchivosPorCarneIdentidadYPorNombre.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                                    //Envio datos adicionales para el Preview
                                    frmPreviewReporteArchivosPorCarneIdentidadYPorNombre.IdiomaImperante:= IdiomaImperante;
                                    frmPreviewReporteArchivosPorCarneIdentidadYPorNombre.FechaDelSistema:= ObtenerFechaDelSistema;

                                    //---- *** A partir de aquí exporto el reporte hacia PDF *** ----

                                    //Le envio el reporte hacia el ExportQR
                                    //QuickReportHabitacionesExistentes.Prepare;
                                    EXQR.Report := QuickReportArchivosPorCarneIdentidadYPorNombre;

                                    //Mando a que el ExportQR exporte el reporte ya almacenado
                                    EXQR.ExportQR;

                                    //Probé exportando directamente hacia PDF pero salva en la raiz directamente, no saca la bandeja de diálogo
                                    //EXQR.ExportQRPDF('Resumen P. de Excelencia (' + ComboBoxSemestreResumenesDeExcelencia.Text + ' del año ' + anno + ') ' + DptoCapacitacion.ObtenerFechaDelSistema, False, True);
                                    //EXQR.ExportQRPDF('Hola', True); esta debería servir, pero no

                                    QuickReportArchivosPorCarneIdentidadYPorNombre.QRPrinter.Free;
                                    QuickReportArchivosPorCarneIdentidadYPorNombre.QRPrinter := nil;
                                  end
                                    else
                                      begin
                                        if (TipoBusqueda = 'PorCarneIdentidadYPorApellidos')
                                          then
                                            begin
                                              //Conformo los captions del QuickReport
                                              QuickReportArchivosPorCarneIdentidadYPorApellidos.QRlblReferente.Caption:= 'Reporte de registros archivados, pertenecientes al carné de identidad: ' + CarneIdentidad + ' y a los apellidos: ' + Apellidos + '.';
                                              QuickReportArchivosPorCarneIdentidadYPorApellidos.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                                              //Envio datos adicionales para el Preview
                                              frmPreviewReporteArchivosPorCarneIdentidadYPorApellidos.IdiomaImperante:= IdiomaImperante;
                                              frmPreviewReporteArchivosPorCarneIdentidadYPorApellidos.FechaDelSistema:= ObtenerFechaDelSistema;

                                              //---- *** A partir de aquí exporto el reporte hacia PDF *** ----

                                              //Le envio el reporte hacia el ExportQR
                                              //QuickReportHabitacionesExistentes.Prepare;
                                              EXQR.Report := QuickReportArchivosPorCarneIdentidadYPorApellidos;

                                              //Mando a que el ExportQR exporte el reporte ya almacenado
                                              EXQR.ExportQR;

                                              //Probé exportando directamente hacia PDF pero salva en la raiz directamente, no saca la bandeja de diálogo
                                              //EXQR.ExportQRPDF('Resumen P. de Excelencia (' + ComboBoxSemestreResumenesDeExcelencia.Text + ' del año ' + anno + ') ' + DptoCapacitacion.ObtenerFechaDelSistema, False, True);
                                              //EXQR.ExportQRPDF('Hola', True); esta debería servir, pero no

                                              QuickReportArchivosPorCarneIdentidadYPorApellidos.QRPrinter.Free;
                                              QuickReportArchivosPorCarneIdentidadYPorApellidos.QRPrinter := nil;
                                            end
                                              else
                                                begin
                                                  if (TipoBusqueda = 'PorNombreYPorApellidos')
                                                    then
                                                      begin
                                                        //Conformo los captions del QuickReport
                                                        QuickReportArchivosPorNombreYPorApellidos.QRlblReferente.Caption:= 'Reporte de registros archivados, pertenecientes al nombre: ' + Nombre + ' y a los apellidos: ' + Apellidos + '.';
                                                        QuickReportArchivosPorNombreYPorApellidos.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                                                        //Envio datos adicionales para el Preview
                                                        frmPreviewReporteArchivosPorNombreYPorApellidos.IdiomaImperante:= IdiomaImperante;
                                                        frmPreviewReporteArchivosPorNombreYPorApellidos.FechaDelSistema:= ObtenerFechaDelSistema;

                                                        //---- *** A partir de aquí exporto el reporte hacia PDF *** ----

                                                        //Le envio el reporte hacia el ExportQR
                                                        //QuickReportHabitacionesExistentes.Prepare;
                                                        EXQR.Report := QuickReportArchivosPorNombreYPorApellidos;

                                                        //Mando a que el ExportQR exporte el reporte ya almacenado
                                                        EXQR.ExportQR;

                                                        //Probé exportando directamente hacia PDF pero salva en la raiz directamente, no saca la bandeja de diálogo
                                                        //EXQR.ExportQRPDF('Resumen P. de Excelencia (' + ComboBoxSemestreResumenesDeExcelencia.Text + ' del año ' + anno + ') ' + DptoCapacitacion.ObtenerFechaDelSistema, False, True);
                                                        //EXQR.ExportQRPDF('Hola', True); esta debería servir, pero no

                                                        QuickReportArchivosPorNombreYPorApellidos.QRPrinter.Free;
                                                        QuickReportArchivosPorNombreYPorApellidos.QRPrinter := nil;
                                                      end
                                                        else
                                                          begin
                                                            if (TipoBusqueda = 'PorCarneIdentidad')
                                                              then
                                                                begin
                                                                  //Conformo los captions del QuickReport
                                                                  QuickReportArchivosPorCarneIdentidad.QRlblReferente.Caption:= 'Reporte de registros archivados, pertenecientes al carné de identidad: ' + CarneIdentidad + '.';
                                                                  QuickReportArchivosPorCarneIdentidad.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                                                                  //Envio datos adicionales para el Preview
                                                                  frmPreviewReporteArchivosPorCarneIdentidad.IdiomaImperante:= IdiomaImperante;
                                                                  frmPreviewReporteArchivosPorCarneIdentidad.FechaDelSistema:= ObtenerFechaDelSistema;

                                                                  //---- *** A partir de aquí exporto el reporte hacia PDF *** ----

                                                                  //Le envio el reporte hacia el ExportQR
                                                                  //QuickReportHabitacionesExistentes.Prepare;
                                                                  EXQR.Report := QuickReportArchivosPorCarneIdentidad;

                                                                  //Mando a que el ExportQR exporte el reporte ya almacenado
                                                                  EXQR.ExportQR;

                                                                  //Probé exportando directamente hacia PDF pero salva en la raiz directamente, no saca la bandeja de diálogo
                                                                  //EXQR.ExportQRPDF('Resumen P. de Excelencia (' + ComboBoxSemestreResumenesDeExcelencia.Text + ' del año ' + anno + ') ' + DptoCapacitacion.ObtenerFechaDelSistema, False, True);
                                                                  //EXQR.ExportQRPDF('Hola', True); esta debería servir, pero no

                                                                  QuickReportArchivosPorCarneIdentidad.QRPrinter.Free;
                                                                  QuickReportArchivosPorCarneIdentidad.QRPrinter := nil;
                                                                end
                                                                  else
                                                                    begin
                                                                      if (TipoBusqueda = 'PorNombre')
                                                                        then
                                                                          begin
                                                                            //Conformo los captions del QuickReport
                                                                            QuickReportArchivosPorNombre.QRlblReferente.Caption:= 'Reporte de registros archivados, pertenecientes al nombre: ' + Nombre + '.';
                                                                            QuickReportArchivosPorNombre.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                                                                            //Envio datos adicionales para el Preview
                                                                            frmPreviewReporteArchivosPorNombre.IdiomaImperante:= IdiomaImperante;
                                                                            frmPreviewReporteArchivosPorNombre.FechaDelSistema:= ObtenerFechaDelSistema;

                                                                            //---- *** A partir de aquí exporto el reporte hacia PDF *** ----

                                                                            //Le envio el reporte hacia el ExportQR
                                                                            //QuickReportHabitacionesExistentes.Prepare;
                                                                            EXQR.Report := QuickReportArchivosPorNombre;

                                                                            //Mando a que el ExportQR exporte el reporte ya almacenado
                                                                            EXQR.ExportQR;

                                                                            //Probé exportando directamente hacia PDF pero salva en la raiz directamente, no saca la bandeja de diálogo
                                                                            //EXQR.ExportQRPDF('Resumen P. de Excelencia (' + ComboBoxSemestreResumenesDeExcelencia.Text + ' del año ' + anno + ') ' + DptoCapacitacion.ObtenerFechaDelSistema, False, True);
                                                                            //EXQR.ExportQRPDF('Hola', True); esta debería servir, pero no

                                                                            QuickReportArchivosPorNombre.QRPrinter.Free;
                                                                            QuickReportArchivosPorNombre.QRPrinter := nil;
                                                                          end
                                                                            else
                                                                              begin
                                                                                if (TipoBusqueda = 'PorApellidos')
                                                                                  then
                                                                                    begin
                                                                                      //Conformo los captions del QuickReport
                                                                                      QuickReportArchivosPorApellidos.QRlblReferente.Caption:= 'Reporte de registros archivados, pertenecientes a los apellidos: ' + Apellidos + '.';
                                                                                      QuickReportArchivosPorApellidos.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                                                                                      //Envio datos adicionales para el Preview
                                                                                      frmPreviewReporteArchivosPorApellidos.IdiomaImperante:= IdiomaImperante;
                                                                                      frmPreviewReporteArchivosPorApellidos.FechaDelSistema:= ObtenerFechaDelSistema;

                                                                                      //---- *** A partir de aquí exporto el reporte hacia PDF *** ----

                                                                                      //Le envio el reporte hacia el ExportQR
                                                                                      //QuickReportHabitacionesExistentes.Prepare;
                                                                                      EXQR.Report := QuickReportArchivosPorApellidos;

                                                                                      //Mando a que el ExportQR exporte el reporte ya almacenado
                                                                                      EXQR.ExportQR;

                                                                                      //Probé exportando directamente hacia PDF pero salva en la raiz directamente, no saca la bandeja de diálogo
                                                                                      //EXQR.ExportQRPDF('Resumen P. de Excelencia (' + ComboBoxSemestreResumenesDeExcelencia.Text + ' del año ' + anno + ') ' + DptoCapacitacion.ObtenerFechaDelSistema, False, True);
                                                                                      //EXQR.ExportQRPDF('Hola', True); esta debería servir, pero no

                                                                                      QuickReportArchivosPorApellidos.QRPrinter.Free;
                                                                                      QuickReportArchivosPorApellidos.QRPrinter := nil;
                                                                                    end
                                                                                      else
                                                                                        begin
                                                                                          if (TipoBusqueda = 'PorIntervalosDeFechasInicioHospedaje')
                                                                                            then
                                                                                              begin
                                                                                                //Conformo los captions del QuickReport
                                                                                                QuickReportArchivosPorIntervalosDeFechasInicioHospedaje.QRlblReferente.Caption:= 'Reporte de registros archivados, cuyo hospedaje inició el día: ' + DateToStr(dtpFechaInicioHospedaje.Date) + '.';
                                                                                                QuickReportArchivosPorIntervalosDeFechasInicioHospedaje.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                                                                                                //Envio datos adicionales para el Preview
                                                                                                frmPreviewReporteArchivosPorIntervalosDeFechasInicioHospedaje.IdiomaImperante:= IdiomaImperante;
                                                                                                frmPreviewReporteArchivosPorIntervalosDeFechasInicioHospedaje.FechaDelSistema:= ObtenerFechaDelSistema;

                                                                                                //---- *** A partir de aquí exporto el reporte hacia PDF *** ----

                                                                                                //Le envio el reporte hacia el ExportQR
                                                                                                //QuickReportHabitacionesExistentes.Prepare;
                                                                                                EXQR.Report := QuickReportArchivosPorIntervalosDeFechasInicioHospedaje;

                                                                                                //Mando a que el ExportQR exporte el reporte ya almacenado
                                                                                                EXQR.ExportQR;

                                                                                                //Probé exportando directamente hacia PDF pero salva en la raiz directamente, no saca la bandeja de diálogo
                                                                                                //EXQR.ExportQRPDF('Resumen P. de Excelencia (' + ComboBoxSemestreResumenesDeExcelencia.Text + ' del año ' + anno + ') ' + DptoCapacitacion.ObtenerFechaDelSistema, False, True);
                                                                                                //EXQR.ExportQRPDF('Hola', True); esta debería servir, pero no

                                                                                                QuickReportArchivosPorIntervalosDeFechasInicioHospedaje.QRPrinter.Free;
                                                                                                QuickReportArchivosPorIntervalosDeFechasInicioHospedaje.QRPrinter := nil;
                                                                                              end
                                                                                                else
                                                                                                  begin
                                                                                                    if (TipoBusqueda = 'PorIntervalosDeFechasFinalHospedaje')
                                                                                                      then
                                                                                                        begin
                                                                                                          //Conformo los captions del QuickReport
                                                                                                          QuickReportArchivosPorIntervalosDeFechasFinalHospedaje.QRlblReferente.Caption:= 'Reporte de registros archivados, cuyo hospedaje finalizó el día: ' + DateToStr(dtpFechaFinalHospedaje.Date) + '.';
                                                                                                          QuickReportArchivosPorIntervalosDeFechasFinalHospedaje.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                                                                                                          //Envio datos adicionales para el Preview
                                                                                                          frmPreviewReporteArchivosPorIntervalosDeFechasFinalHospedaje.IdiomaImperante:= IdiomaImperante;
                                                                                                          frmPreviewReporteArchivosPorIntervalosDeFechasFinalHospedaje.FechaDelSistema:= ObtenerFechaDelSistema;

                                                                                                          //---- *** A partir de aquí exporto el reporte hacia PDF *** ----

                                                                                                          //Le envio el reporte hacia el ExportQR
                                                                                                          //QuickReportHabitacionesExistentes.Prepare;
                                                                                                          EXQR.Report := QuickReportArchivosPorIntervalosDeFechasFinalHospedaje;

                                                                                                          //Mando a que el ExportQR exporte el reporte ya almacenado
                                                                                                          EXQR.ExportQR;

                                                                                                          //Probé exportando directamente hacia PDF pero salva en la raiz directamente, no saca la bandeja de diálogo
                                                                                                          //EXQR.ExportQRPDF('Resumen P. de Excelencia (' + ComboBoxSemestreResumenesDeExcelencia.Text + ' del año ' + anno + ') ' + DptoCapacitacion.ObtenerFechaDelSistema, False, True);
                                                                                                          //EXQR.ExportQRPDF('Hola', True); esta debería servir, pero no

                                                                                                          QuickReportArchivosPorIntervalosDeFechasFinalHospedaje.QRPrinter.Free;
                                                                                                          QuickReportArchivosPorIntervalosDeFechasFinalHospedaje.QRPrinter := nil;
                                                                                                        end
                                                                                                          else
                                                                                                            begin
                                                                                                              if (TipoBusqueda = 'EnIntervalosDeFechas')
                                                                                                                then
                                                                                                                  begin
                                                                                                                    //Conformo los captions del QuickReport
                                                                                                                    QuickReportArchivosEnIntervalosDeFechas.QRlblReferente.Caption:= 'Reporte de registros archivados, por hospedaje entre las fechas: ' + DateToStr(dtpFechaInicioHospedaje.Date) + '  y  ' + DateToStr(dtpFechaFinalHospedaje.Date) + '.';
                                                                                                                    QuickReportArchivosEnIntervalosDeFechas.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                                                                                                                    //Envio datos adicionales para el Preview
                                                                                                                    frmPreviewReporteArchivosEnIntervalosDeFechas.IdiomaImperante:= IdiomaImperante;
                                                                                                                    frmPreviewReporteArchivosEnIntervalosDeFechas.FechaDelSistema:= ObtenerFechaDelSistema;

                                                                                                                    //---- *** A partir de aquí exporto el reporte hacia PDF *** ----

                                                                                                                    //Le envio el reporte hacia el ExportQR
                                                                                                                    //QuickReportHabitacionesExistentes.Prepare;
                                                                                                                    EXQR.Report := QuickReportArchivosEnIntervalosDeFechas;

                                                                                                                    //Mando a que el ExportQR exporte el reporte ya almacenado
                                                                                                                    EXQR.ExportQR;

                                                                                                                    //Probé exportando directamente hacia PDF pero salva en la raiz directamente, no saca la bandeja de diálogo
                                                                                                                    //EXQR.ExportQRPDF('Resumen P. de Excelencia (' + ComboBoxSemestreResumenesDeExcelencia.Text + ' del año ' + anno + ') ' + DptoCapacitacion.ObtenerFechaDelSistema, False, True);
                                                                                                                    //EXQR.ExportQRPDF('Hola', True); esta debería servir, pero no

                                                                                                                    QuickReportArchivosEnIntervalosDeFechas.QRPrinter.Free;
                                                                                                                    QuickReportArchivosEnIntervalosDeFechas.QRPrinter := nil;
                                                                                                                  end;
                                                                                                            end;
                                                                                                  end;
                                                                                        end;
                                                                              end;
                                                                    end;
                                                          end;
                                                end;
                                      end;
                            end;
                  end
                    else
                      begin //No se ha echo búsqueda alguna
                        MessageDlg('Debe realizar primero alguna búsqueda en los archivos', mtError, [mbOk], 0);
                      end;
            end;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.ImprimirReporteDeArchivos;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Si se buscó algo (funciona bien así)
        if (lblbtnDetallarArchivoDeRegistro.Enabled = True)
          then
            begin
              //Otra verificación
              if (TipoBusqueda <> 'ninguna')
                then
                  begin
                    //Determino cuál tipo de búsqueda se realizó
                    if (TipoBusqueda = 'PorCarneIdentidadPorNombreYPorApellido')
                      then
                        begin
                          //Conformo los captions del QuickReport
                          QuickReportArchivosPorCarneIdentidadPorNombreYPorApellido.QRlblReferente.Caption:= 'Reporte de registros archivados, pertenecientes al carné de identidad: ' + CarneIdentidad + ', al nombre: ' + Nombre + ' y a los apellidos: ' + Apellidos + '.';
                          QuickReportArchivosPorCarneIdentidadPorNombreYPorApellido.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                          //Envio datos adicionales para el Preview
                          frmPreviewReporteArchivosPorCarneIdentidadNombreYApellidos.IdiomaImperante:= IdiomaImperante;
                          frmPreviewReporteArchivosPorCarneIdentidadNombreYApellidos.FechaDelSistema:= ObtenerFechaDelSistema;

                          //Imprimo el reporte
                          QuickReportArchivosPorCarneIdentidadPorNombreYPorApellido.Print;
                        end
                          else
                            begin
                              if (TipoBusqueda = 'PorCarneIdentidadYPorNombre')
                                then
                                  begin
                                    //Conformo los captions del QuickReport
                                    QuickReportArchivosPorCarneIdentidadYPorNombre.QRlblReferente.Caption:= 'Reporte de registros archivados, pertenecientes al carné de identidad: ' + CarneIdentidad + ' y al nombre: ' + Nombre + '.';
                                    QuickReportArchivosPorCarneIdentidadYPorNombre.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                                    //Envio datos adicionales para el Preview
                                    frmPreviewReporteArchivosPorCarneIdentidadYPorNombre.IdiomaImperante:= IdiomaImperante;
                                    frmPreviewReporteArchivosPorCarneIdentidadYPorNombre.FechaDelSistema:= ObtenerFechaDelSistema;

                                    //Imprimo el reporte
                                    QuickReportArchivosPorCarneIdentidadYPorNombre.Print;
                                  end
                                    else
                                      begin
                                        if (TipoBusqueda = 'PorCarneIdentidadYPorApellidos')
                                          then
                                            begin
                                              //Conformo los captions del QuickReport
                                              QuickReportArchivosPorCarneIdentidadYPorApellidos.QRlblReferente.Caption:= 'Reporte de registros archivados, pertenecientes al carné de identidad: ' + CarneIdentidad + ' y a los apellidos: ' + Apellidos + '.';
                                              QuickReportArchivosPorCarneIdentidadYPorApellidos.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                                              //Envio datos adicionales para el Preview
                                              frmPreviewReporteArchivosPorCarneIdentidadYPorApellidos.IdiomaImperante:= IdiomaImperante;
                                              frmPreviewReporteArchivosPorCarneIdentidadYPorApellidos.FechaDelSistema:= ObtenerFechaDelSistema;

                                              //Imprimo el reporte
                                              QuickReportArchivosPorCarneIdentidadYPorApellidos.Print;
                                            end
                                              else
                                                begin
                                                  if (TipoBusqueda = 'PorNombreYPorApellidos')
                                                    then
                                                      begin
                                                        //Conformo los captions del QuickReport
                                                        QuickReportArchivosPorNombreYPorApellidos.QRlblReferente.Caption:= 'Reporte de registros archivados, pertenecientes al nombre: ' + Nombre + ' y a los apellidos: ' + Apellidos + '.';
                                                        QuickReportArchivosPorNombreYPorApellidos.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                                                        //Envio datos adicionales para el Preview
                                                        frmPreviewReporteArchivosPorNombreYPorApellidos.IdiomaImperante:= IdiomaImperante;
                                                        frmPreviewReporteArchivosPorNombreYPorApellidos.FechaDelSistema:= ObtenerFechaDelSistema;

                                                        //Imprimo el reporte
                                                        QuickReportArchivosPorNombreYPorApellidos.Print;
                                                      end
                                                        else
                                                          begin
                                                            if (TipoBusqueda = 'PorCarneIdentidad')
                                                              then
                                                                begin
                                                                  //Conformo los captions del QuickReport
                                                                  QuickReportArchivosPorCarneIdentidad.QRlblReferente.Caption:= 'Reporte de registros archivados, pertenecientes al carné de identidad: ' + CarneIdentidad + '.';
                                                                  QuickReportArchivosPorCarneIdentidad.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                                                                  //Envio datos adicionales para el Preview
                                                                  frmPreviewReporteArchivosPorCarneIdentidad.IdiomaImperante:= IdiomaImperante;
                                                                  frmPreviewReporteArchivosPorCarneIdentidad.FechaDelSistema:= ObtenerFechaDelSistema;

                                                                  //Imprimo el reporte
                                                                  QuickReportArchivosPorCarneIdentidad.Print;
                                                                end
                                                                  else
                                                                    begin
                                                                      if (TipoBusqueda = 'PorNombre')
                                                                        then
                                                                          begin
                                                                            //Conformo los captions del QuickReport
                                                                            QuickReportArchivosPorNombre.QRlblReferente.Caption:= 'Reporte de registros archivados, pertenecientes al nombre: ' + Nombre + '.';
                                                                            QuickReportArchivosPorNombre.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                                                                            //Envio datos adicionales para el Preview
                                                                            frmPreviewReporteArchivosPorNombre.IdiomaImperante:= IdiomaImperante;
                                                                            frmPreviewReporteArchivosPorNombre.FechaDelSistema:= ObtenerFechaDelSistema;

                                                                            //Imprimo el reporte
                                                                            QuickReportArchivosPorNombre.Print;
                                                                          end
                                                                            else
                                                                              begin
                                                                                if (TipoBusqueda = 'PorApellidos')
                                                                                  then
                                                                                    begin
                                                                                      //Conformo los captions del QuickReport
                                                                                      QuickReportArchivosPorApellidos.QRlblReferente.Caption:= 'Reporte de registros archivados, pertenecientes a los apellidos: ' + Apellidos + '.';
                                                                                      QuickReportArchivosPorApellidos.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                                                                                      //Envio datos adicionales para el Preview
                                                                                      frmPreviewReporteArchivosPorApellidos.IdiomaImperante:= IdiomaImperante;
                                                                                      frmPreviewReporteArchivosPorApellidos.FechaDelSistema:= ObtenerFechaDelSistema;

                                                                                      //Imprimo el reporte
                                                                                      QuickReportArchivosPorApellidos.Print;
                                                                                    end
                                                                                      else
                                                                                        begin
                                                                                          if (TipoBusqueda = 'PorIntervalosDeFechasInicioHospedaje')
                                                                                            then
                                                                                              begin
                                                                                                //Conformo los captions del QuickReport
                                                                                                QuickReportArchivosPorIntervalosDeFechasInicioHospedaje.QRlblReferente.Caption:= 'Reporte de registros archivados, cuyo hospedaje inició el día: ' + DateToStr(dtpFechaInicioHospedaje.Date) + '.';
                                                                                                QuickReportArchivosPorIntervalosDeFechasInicioHospedaje.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                                                                                                //Envio datos adicionales para el Preview
                                                                                                frmPreviewReporteArchivosPorIntervalosDeFechasInicioHospedaje.IdiomaImperante:= IdiomaImperante;
                                                                                                frmPreviewReporteArchivosPorIntervalosDeFechasInicioHospedaje.FechaDelSistema:= ObtenerFechaDelSistema;

                                                                                                //Imprimo el reporte
                                                                                                QuickReportArchivosPorIntervalosDeFechasInicioHospedaje.Print;
                                                                                              end
                                                                                                else
                                                                                                  begin
                                                                                                    if (TipoBusqueda = 'PorIntervalosDeFechasFinalHospedaje')
                                                                                                      then
                                                                                                        begin
                                                                                                          //Conformo los captions del QuickReport
                                                                                                          QuickReportArchivosPorIntervalosDeFechasFinalHospedaje.QRlblReferente.Caption:= 'Reporte de registros archivados, cuyo hospedaje finalizó el día: ' + DateToStr(dtpFechaFinalHospedaje.Date) + '.';
                                                                                                          QuickReportArchivosPorIntervalosDeFechasFinalHospedaje.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                                                                                                          //Envio datos adicionales para el Preview
                                                                                                          frmPreviewReporteArchivosPorIntervalosDeFechasFinalHospedaje.IdiomaImperante:= IdiomaImperante;
                                                                                                          frmPreviewReporteArchivosPorIntervalosDeFechasFinalHospedaje.FechaDelSistema:= ObtenerFechaDelSistema;

                                                                                                          //Imprimo el reporte
                                                                                                          QuickReportArchivosPorIntervalosDeFechasFinalHospedaje.Print;
                                                                                                        end
                                                                                                          else
                                                                                                            begin
                                                                                                              if (TipoBusqueda = 'EnIntervalosDeFechas')
                                                                                                                then
                                                                                                                  begin
                                                                                                                    //Conformo los captions del QuickReport
                                                                                                                    QuickReportArchivosEnIntervalosDeFechas.QRlblReferente.Caption:= 'Reporte de registros archivados, por hospedaje entre las fechas: ' + DateToStr(dtpFechaInicioHospedaje.Date) + '  y  ' + DateToStr(dtpFechaFinalHospedaje.Date) + '.';
                                                                                                                    QuickReportArchivosEnIntervalosDeFechas.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                                                                                                                    //Envio datos adicionales para el Preview
                                                                                                                    frmPreviewReporteArchivosEnIntervalosDeFechas.IdiomaImperante:= IdiomaImperante;
                                                                                                                    frmPreviewReporteArchivosEnIntervalosDeFechas.FechaDelSistema:= ObtenerFechaDelSistema;

                                                                                                                    //Imprimo el reporte
                                                                                                                    QuickReportArchivosEnIntervalosDeFechas.Print;
                                                                                                                  end;
                                                                                                            end;
                                                                                                  end;
                                                                                        end;
                                                                              end;
                                                                    end;
                                                          end;
                                                end;
                                      end;
                            end;
                  end
                    else
                      begin //No se ha echo búsqueda alguna
                        MessageDlg('Debe realizar primero alguna búsqueda en los archivos', mtError, [mbOk], 0);
                      end;
            end;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.PrevisualizarReporteDeArchivos;
begin
  //Ante todo verifico si aun hay conexion con la BD
  if (HostalWare.ExisteConexionConLaBD = True)
    then
      begin
        //Si se buscó algo (funciona bien así)
        if (lblbtnDetallarArchivoDeRegistro.Enabled = True)
          then
            begin
              //Otra verificación
              if (TipoBusqueda <> 'ninguna')
                then
                  begin
                    //Determino cuál tipo de búsqueda se realizó
                    if (TipoBusqueda = 'PorCarneIdentidadPorNombreYPorApellido')
                      then
                        begin
                          //Conformo los captions del QuickReport
                          QuickReportArchivosPorCarneIdentidadPorNombreYPorApellido.QRlblReferente.Caption:= 'Reporte de registros archivados, pertenecientes al carné de identidad: ' + CarneIdentidad + ', al nombre: ' + Nombre + ' y a los apellidos: ' + Apellidos + '.';
                          QuickReportArchivosPorCarneIdentidadPorNombreYPorApellido.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                          //Envio datos adicionales para el Preview
                          frmPreviewReporteArchivosPorCarneIdentidadNombreYApellidos.IdiomaImperante:= IdiomaImperante;
                          frmPreviewReporteArchivosPorCarneIdentidadNombreYApellidos.FechaDelSistema:= ObtenerFechaDelSistema;

                          //Muestro el reporte (Quick Report, vista previa)
                          QuickReportArchivosPorCarneIdentidadPorNombreYPorApellido.PreviewModal;
                        end
                          else
                            begin
                              if (TipoBusqueda = 'PorCarneIdentidadYPorNombre')
                                then
                                  begin
                                    //Conformo los captions del QuickReport
                                    QuickReportArchivosPorCarneIdentidadYPorNombre.QRlblReferente.Caption:= 'Reporte de registros archivados, pertenecientes al carné de identidad: ' + CarneIdentidad + ' y al nombre: ' + Nombre + '.';
                                    QuickReportArchivosPorCarneIdentidadYPorNombre.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                                    //Envio datos adicionales para el Preview
                                    frmPreviewReporteArchivosPorCarneIdentidadYPorNombre.IdiomaImperante:= IdiomaImperante;
                                    frmPreviewReporteArchivosPorCarneIdentidadYPorNombre.FechaDelSistema:= ObtenerFechaDelSistema;

                                    //Muestro el reporte (Quick Report, vista previa)
                                    QuickReportArchivosPorCarneIdentidadYPorNombre.PreviewModal;
                                  end
                                    else
                                      begin
                                        if (TipoBusqueda = 'PorCarneIdentidadYPorApellidos')
                                          then
                                            begin
                                              //Conformo los captions del QuickReport
                                              QuickReportArchivosPorCarneIdentidadYPorApellidos.QRlblReferente.Caption:= 'Reporte de registros archivados, pertenecientes al carné de identidad: ' + CarneIdentidad + ' y a los apellidos: ' + Apellidos + '.';
                                              QuickReportArchivosPorCarneIdentidadYPorApellidos.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                                              //Envio datos adicionales para el Preview
                                              frmPreviewReporteArchivosPorCarneIdentidadYPorApellidos.IdiomaImperante:= IdiomaImperante;
                                              frmPreviewReporteArchivosPorCarneIdentidadYPorApellidos.FechaDelSistema:= ObtenerFechaDelSistema;

                                              //Muestro el reporte (Quick Report, vista previa)
                                              QuickReportArchivosPorCarneIdentidadYPorApellidos.PreviewModal;
                                            end
                                              else
                                                begin
                                                  if (TipoBusqueda = 'PorNombreYPorApellidos')
                                                    then
                                                      begin
                                                        //Conformo los captions del QuickReport
                                                        QuickReportArchivosPorNombreYPorApellidos.QRlblReferente.Caption:= 'Reporte de registros archivados, pertenecientes al nombre: ' + Nombre + ' y a los apellidos: ' + Apellidos + '.';
                                                        QuickReportArchivosPorNombreYPorApellidos.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                                                        //Envio datos adicionales para el Preview
                                                        frmPreviewReporteArchivosPorNombreYPorApellidos.IdiomaImperante:= IdiomaImperante;
                                                        frmPreviewReporteArchivosPorNombreYPorApellidos.FechaDelSistema:= ObtenerFechaDelSistema;

                                                        //Muestro el reporte (Quick Report, vista previa)
                                                        QuickReportArchivosPorNombreYPorApellidos.PreviewModal;
                                                      end
                                                        else
                                                          begin
                                                            if (TipoBusqueda = 'PorCarneIdentidad')
                                                              then
                                                                begin
                                                                  //Conformo los captions del QuickReport
                                                                  QuickReportArchivosPorCarneIdentidad.QRlblReferente.Caption:= 'Reporte de registros archivados, pertenecientes al carné de identidad: ' + CarneIdentidad + '.';
                                                                  QuickReportArchivosPorCarneIdentidad.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                                                                  //Envio datos adicionales para el Preview
                                                                  frmPreviewReporteArchivosPorCarneIdentidad.IdiomaImperante:= IdiomaImperante;
                                                                  frmPreviewReporteArchivosPorCarneIdentidad.FechaDelSistema:= ObtenerFechaDelSistema;

                                                                  //Muestro el reporte (Quick Report, vista previa)
                                                                  QuickReportArchivosPorCarneIdentidad.PreviewModal;
                                                                end
                                                                  else
                                                                    begin
                                                                      if (TipoBusqueda = 'PorNombre')
                                                                        then
                                                                          begin
                                                                            //Conformo los captions del QuickReport
                                                                            QuickReportArchivosPorNombre.QRlblReferente.Caption:= 'Reporte de registros archivados, pertenecientes al nombre: ' + Nombre + '.';
                                                                            QuickReportArchivosPorNombre.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                                                                            //Envio datos adicionales para el Preview
                                                                            frmPreviewReporteArchivosPorNombre.IdiomaImperante:= IdiomaImperante;
                                                                            frmPreviewReporteArchivosPorNombre.FechaDelSistema:= ObtenerFechaDelSistema;

                                                                            //Muestro el reporte (Quick Report, vista previa)
                                                                            QuickReportArchivosPorNombre.PreviewModal;
                                                                          end
                                                                            else
                                                                              begin
                                                                                if (TipoBusqueda = 'PorApellidos')
                                                                                  then
                                                                                    begin
                                                                                      //Conformo los captions del QuickReport
                                                                                      QuickReportArchivosPorApellidos.QRlblReferente.Caption:= 'Reporte de registros archivados, pertenecientes a los apellidos: ' + Apellidos + '.';
                                                                                      QuickReportArchivosPorApellidos.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                                                                                      //Envio datos adicionales para el Preview
                                                                                      frmPreviewReporteArchivosPorApellidos.IdiomaImperante:= IdiomaImperante;
                                                                                      frmPreviewReporteArchivosPorApellidos.FechaDelSistema:= ObtenerFechaDelSistema;

                                                                                      //Muestro el reporte (Quick Report, vista previa)
                                                                                      QuickReportArchivosPorApellidos.PreviewModal;
                                                                                    end
                                                                                      else
                                                                                        begin
                                                                                          if (TipoBusqueda = 'PorIntervalosDeFechasInicioHospedaje')
                                                                                            then
                                                                                              begin
                                                                                                //Conformo los captions del QuickReport
                                                                                                QuickReportArchivosPorIntervalosDeFechasInicioHospedaje.QRlblReferente.Caption:= 'Reporte de registros archivados, cuyo hospedaje inició el día: ' + DateToStr(dtpFechaInicioHospedaje.Date) + '.';
                                                                                                QuickReportArchivosPorIntervalosDeFechasInicioHospedaje.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                                                                                                //Envio datos adicionales para el Preview
                                                                                                frmPreviewReporteArchivosPorIntervalosDeFechasInicioHospedaje.IdiomaImperante:= IdiomaImperante;
                                                                                                frmPreviewReporteArchivosPorIntervalosDeFechasInicioHospedaje.FechaDelSistema:= ObtenerFechaDelSistema;

                                                                                                //Muestro el reporte (Quick Report, vista previa)
                                                                                                QuickReportArchivosPorIntervalosDeFechasInicioHospedaje.PreviewModal;
                                                                                              end
                                                                                                else
                                                                                                  begin
                                                                                                    if (TipoBusqueda = 'PorIntervalosDeFechasFinalHospedaje')
                                                                                                      then
                                                                                                        begin
                                                                                                          //Conformo los captions del QuickReport
                                                                                                          QuickReportArchivosPorIntervalosDeFechasFinalHospedaje.QRlblReferente.Caption:= 'Reporte de registros archivados, cuyo hospedaje finalizó el día: ' + DateToStr(dtpFechaFinalHospedaje.Date) + '.';
                                                                                                          QuickReportArchivosPorIntervalosDeFechasFinalHospedaje.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                                                                                                          //Envio datos adicionales para el Preview
                                                                                                          frmPreviewReporteArchivosPorIntervalosDeFechasFinalHospedaje.IdiomaImperante:= IdiomaImperante;
                                                                                                          frmPreviewReporteArchivosPorIntervalosDeFechasFinalHospedaje.FechaDelSistema:= ObtenerFechaDelSistema;

                                                                                                          //Muestro el reporte (Quick Report, vista previa)
                                                                                                          QuickReportArchivosPorIntervalosDeFechasFinalHospedaje.PreviewModal;
                                                                                                        end
                                                                                                          else
                                                                                                            begin
                                                                                                              if (TipoBusqueda = 'EnIntervalosDeFechas')
                                                                                                                then
                                                                                                                  begin
                                                                                                                    //Conformo los captions del QuickReport                                                            
                                                                                                                    QuickReportArchivosEnIntervalosDeFechas.QRlblReferente.Caption:= 'Reporte de registros archivados, por hospedaje entre las fechas: ' + DateToStr(dtpFechaInicioHospedaje.Date) + '  y  ' + DateToStr(dtpFechaFinalHospedaje.Date) + '.';
                                                                                                                    QuickReportArchivosEnIntervalosDeFechas.QRlblFechaEmitido.Caption:= 'Emitido el: ' + ObtenerFechaDelSistema;

                                                                                                                    //Envio datos adicionales para el Preview
                                                                                                                    frmPreviewReporteArchivosEnIntervalosDeFechas.IdiomaImperante:= IdiomaImperante;
                                                                                                                    frmPreviewReporteArchivosEnIntervalosDeFechas.FechaDelSistema:= ObtenerFechaDelSistema;

                                                                                                                    //Muestro el reporte (Quick Report, vista previa)
                                                                                                                    QuickReportArchivosEnIntervalosDeFechas.PreviewModal;
                                                                                                                  end;
                                                                                                            end;
                                                                                                  end;
                                                                                        end;
                                                                              end;
                                                                    end;
                                                          end;
                                                end;
                                      end;
                            end;
                  end
                    else
                      begin //No se ha realizado búsqueda alguna
                        MessageDlg('Debe realizar primero alguna búsqueda en los archivos', mtError, [mbOk], 0);
                      end;
            end;
      end
        else
          begin
            MessageDlg('Se ha perdido la conexión con la base de datos.' + #13 + 'Inténtelo en otra ocasión', mtError, [mbOk], 0);
          end;
end;



procedure TfrmPrincipal.dtpFechaInicioHospedajeClick(Sender: TObject);
var
  FechaInicio: TDate;
begin
  //En caso de que se desee un intervalo de fechas
  if (rbtnFiltroArchivosRangoDeFechas.Checked = True)
    then
      begin
        //Recojo la fecha de inicio
        FechaInicio:= dtpFechaInicioHospedaje.Date;
        
        //Para cuando las fechas son iguales
        if (dtpFechaInicioHospedaje.Date = dtpFechaFinalHospedaje.Date)
          then
            begin
              //Aumento la fecha final un dia
              dtpFechaFinalHospedaje.Date:= IncDay(FechaInicio, 1);
            end
              else
                begin
                  //Para cuando la fecha inicio > fecha final
                  if (dtpFechaInicioHospedaje.Date > dtpFechaFinalHospedaje.Date)
                    then
                      begin
                        //Aumento la fecha final un dia, despues de la de inicio
                       dtpFechaFinalHospedaje.Date:= IncDay(FechaInicio, 1);
                      end;
                end;
      end;
end;



procedure TfrmPrincipal.dtpFechaFinalHospedajeClick(Sender: TObject);
var
  FechaFinal: TDate;
begin
  //En caso de que se desee un intervalo de fechas
  if (rbtnFiltroArchivosRangoDeFechas.Checked = True)
    then
      begin
        //Recojo la fecha final
        FechaFinal:= dtpFechaFinalHospedaje.Date;
        
        //Para cuando las fechas son iguales
        if (dtpFechaInicioHospedaje.Date = dtpFechaFinalHospedaje.Date)
          then
            begin
              //Reduzco la fecha de inicio un dia
              dtpFechaInicioHospedaje.Date:= IncDay(FechaFinal, -1);
            end
              else
                begin
                  //Para cuando la fecha final < fecha inicio
                  if (dtpFechaFinalHospedaje.Date < dtpFechaInicioHospedaje.Date)
                    then
                      begin
                        //Reduzco la fecha de inicio un dia, antes de la de final
                       dtpFechaInicioHospedaje.Date:= IncDay(FechaFinal, -1);
                      end;
                end;
      end;
end;



procedure TfrmPrincipal.dtpFechaFinalHospedajeChange(Sender: TObject);
var
  FechaFinal: TDate;
begin
  //En caso de que se desee un intervalo de fechas
  if (rbtnFiltroArchivosRangoDeFechas.Checked = True)
    then
      begin
        //Recojo la fecha final
        FechaFinal:= dtpFechaFinalHospedaje.Date;
        
        //Para cuando las fechas son iguales
        if (dtpFechaInicioHospedaje.Date = dtpFechaFinalHospedaje.Date)
          then
            begin
              //Reduzco la fecha de inicio un dia
              dtpFechaInicioHospedaje.Date:= IncDay(FechaFinal, -1);
            end
              else
                begin
                  //Para cuando la fecha final < fecha inicio
                  if (dtpFechaFinalHospedaje.Date < dtpFechaInicioHospedaje.Date)
                    then
                      begin
                        //Reduzco la fecha de inicio un dia, antes de la de final
                       dtpFechaInicioHospedaje.Date:= IncDay(FechaFinal, -1);
                      end;
                end;
      end;
end;

procedure TfrmPrincipal.dtpFechaInicioHospedajeChange(Sender: TObject);
var
  FechaInicio: TDate;
begin
  //En caso de que se desee un intervalo de fechas
  if (rbtnFiltroArchivosRangoDeFechas.Checked = True)
    then
      begin
        //Recojo la fecha de inicio
        FechaInicio:= dtpFechaInicioHospedaje.Date;
        
        //Para cuando las fechas son iguales
        if (dtpFechaInicioHospedaje.Date = dtpFechaFinalHospedaje.Date)
          then
            begin
              //Aumento la fecha final un dia
              dtpFechaFinalHospedaje.Date:= IncDay(FechaInicio, 1);
            end
              else
                begin
                  //Para cuando la fecha inicio > fecha final
                  if (dtpFechaInicioHospedaje.Date > dtpFechaFinalHospedaje.Date)
                    then
                      begin
                        //Aumento la fecha final un dia, despues de la de inicio
                       dtpFechaFinalHospedaje.Date:= IncDay(FechaInicio, 1);
                      end;
                end;
      end;
end;



procedure TfrmPrincipal.LimpiarFiltroArchivosPorDatos;
begin
  //Limpio los Edits del filtro por datos en los archivos
  edtFiltroCarneIdentidadHuespedParaHistorico.Clear;
  edtFiltroNombreHuespedParaHistorico.Clear;
  edtFiltroApellidosHuespedParaHistorico.Clear;
end;



end.
