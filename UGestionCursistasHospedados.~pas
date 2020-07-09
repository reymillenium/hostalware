unit UGestionCursistasHospedados;

interface

uses
  Classes, DB, Dialogs,

  {Units echas por mi, clases entidad}
  UPuestodeTrabajo,
  UHabitacion, UCama, UHuesped,
  UPlazaReservada,
  

  {Módulos del Sistema HCCAP (Units) echos por mi}
  UModuloControlDelSistema,
  UModuloHospedaje;

type
  TGestionCursistasHospedados = Class(TObject)

  
//***********************************************************
// ***  Procedimientos del Módulo de Control del Sistema  ***
//***********************************************************

  //** Procedimientos Imprescindibles **
  procedure EstablecerConexionConLaBD(aContrasenna, aUsuario, aNombreBaseDeDatos, aNombreServer, aIntranet: WideString);
  procedure EliminarConexionConLaBD;
  function ExisteConexionConLaBD: Boolean;
  procedure SalvarBaseDeDatosHostalWare(aCamino: String);
  procedure RestaurarBaseDeDatosHostalWare(aCamino: String);
  
  procedure LoggearAlUsuario(aID_Usuario, aPrivilegio, aNombreUsuario, aPrimerApellido, aSegundoApellido: AnsiString);
  procedure ModificarLoggin(aViejoID_Usuario, aNuevoID_Usuario, aNuevoPrivilegio, aNuevoNombreUsuario, aNuevoPrimerApellido, aNuevoSegundoApellido: AnsiString);
  procedure DesloggearAlUsuario;
  procedure BorrarFalsoLoggeo;
  procedure BuscarAlLoggeado;
  procedure ActualizarPermanencia;
  function ElUsuarioEstaLoggeado(aID_Usuario: AnsiString): Boolean;
  function HayAlguienLoggeado: Boolean;
  function ElLoggeadoEsAdministrador: Boolean;
  function NombreCompletoDelLoggeado: AnsiString;

  
  // ** Procedimientos agregados a última hora a esta Unit
  function ObtenerFechaDelSistema: String;
  function ObtenerHoraDelSistema: String;

  //** Procedimientos de la pestaña de Puestos de Trabajo **

  procedure MostrarPuestosDeTrabajo;
  Procedure BuscarPuestoDeTrabajo(aID_Usuario: String);
  procedure SelecAdministrador(id_Usuario: String);

  function ExisteElPuestoDeTrabajoConUsuario(id_Usuario: String): Boolean;
  function ElTrabajadorEsAdministrador: Boolean;
  function CantidadDePuestosDeTrabajo: Integer;

  procedure InsertarPuestoDeTrabajo(aPuestoDeTrabajo: TPuestoDeTrabajo);
  procedure ModificarPuestoDeTrabajo(aViejoID_Usuario: String; aNuevoPuestoDeTrabajo: TPuestoDeTrabajo);
  procedure EliminarPuestoDeTrabajo(aID_Usuario:AnsiString);

  function EncriptarSeudoaleatorio(aFrase: String): String;
  function DesencriptarSeudoaleatorio(aFrase: String): String;


  //** Procedimientos de la pestaña de Trazas del Sistema **
  procedure GuardarTrazaDelSistema(aAccion: AnsiString);
  procedure MostrarTodasLasTrazas;
  function CantidadDeTrazas: Integer;



//***********************************************************
// ***      Procedimientos del Módulo de Hospedaje        ***
//***********************************************************


  //** Procedimientos de la pestaña de Registro de Huespedes **
  procedure MostrarProvinciasCubanas;
  procedure MostrarMunicipiosPorID_Provincia(aID_Provincia: Integer);
  procedure MostrarProvinciasCubanasParaDatosLaborales;
  procedure MostrarMunicipiosParaDatosLaboralesPorID_Provincia(aID_Provincia: Integer);

  procedure BuscarID_ProvinciaCubanaHuespedPorNombreProvincia(aNombreProvincia: AnsiString);
  procedure BuscarID_MunicipioCubanoHuespedPorNombreMunicipio(aNombreMunicipio: AnsiString);
  procedure BuscarID_ProvinciaCubanaCentroLaboralPorNombreProvincia(aNombreProvincia: AnsiString);
  procedure BuscarID_MunicipioCubanoCentroLaboralPorNombreMunicipio(aNombreMunicipio: AnsiString);  

  procedure InsertarHuesped(aHuesped: THuesped);
  Procedure ModificarHuesped(aNuevoHuesped: THuesped);
  procedure EliminarHuespedPorID_Huesped(aID_Huesped: Integer);

  procedure MostrarHuespedPorID_Huesped(aID_Huesped: Integer);

  procedure MostrarHuespedesTotales;
  procedure MostrarHuespedesPorMotivo(aMotivo: AnsiString);
  procedure MostrarHuespedesPorPiso(aPiso: AnsiString);
  procedure MostrarHuespedesPorMotivoYPorPiso(aMotivo: AnsiString; aPiso: AnsiString);

  procedure MostrarOtrosHuespedesTotalesPorID_Huesped(aID_Huesped: Integer);
  procedure MostrarOtrosHuespedesPorMotivoYPorID_Huesped(aMotivo: AnsiString; aID_Huesped: Integer);
  procedure MostrarOtrosHuespedesPorPisoYPorID_Huesped(aPiso: AnsiString; aID_Huesped: Integer);
  procedure MostrarOtrosHuespedesPorMotivoYPorPisoYPorID_Huesped(aMotivo: AnsiString; aPiso: AnsiString; aID_Huesped: Integer);
  

  function CantidadDeHuespedesTotales: Integer;
  function CantidadDeHuespedesPorMotivo: Integer;
  function CantidadDeHuespedesPorPiso: Integer;
  function CantidadDeHuespedesPorMotivoYPorPiso: Integer;

  function CantidadDeOtrosHuespedesTotalesPorID_Huesped: Integer;
  function CantidadDeOtrosHuespedesPorMotivoYPorID_Huesped: Integer;
  function CantidadDeOtrosHuespedesPorPisoYPorID_Huesped: Integer;
  function CantidadDeOtrosHuespedesPorMotivoYPorPisoYPorID_Huesped: Integer;   

  //Procedimientos de Nuevo Registro
  procedure MostrarHabitacionesConVacantesTotalesParaRegistro;
  procedure MostrarHabitacionesConVacantesTotalesYConCamasParaRegistro;
  procedure MostrarHabitacionesConVacantesTotalesYConLiterasParaRegistro;
  procedure MostrarHabitacionesConVacantesTotalesYConLiterasAbajoParaRegistro;
  procedure MostrarHabitacionesConVacantesTotalesYConLiterasArribaParaRegistro;


  procedure MostrarHabitacionesConVacantesPorPisoParaRegistro(aPiso: String);
  procedure MostrarHabitacionesConVacantesPorPisoYConCamasParaRegistro(aPiso: String);
  procedure MostrarHabitacionesConVacantesPorPisoYConLiterasParaRegistro(aPiso: String);
  procedure MostrarHabitacionesConVacantesPorPisoYConLiterasAbajoParaRegistro(aPiso: String);
  procedure MostrarHabitacionesConVacantesPorPisoYConLiterasArribaParaRegistro(aPiso: String);

  function CantidadHabitacionesConVacantesTotalesParaRegistro: Integer;
  function CantidadHabitacionesConVacantesTotalesYConCamasParaRegistro: Integer;
  function CantidadHabitacionesConVacantesTotalesYConLiterasParaRegistro: Integer;
  function CantidadHabitacionesConVacantesTotalesYConLiterasAbajoParaRegistro: Integer;
  function CantidadHabitacionesConVacantesTotalesYConLiterasArribaParaRegistro: Integer;


  function CantidadHabitacionesConVacantesPorPisoParaRegistro: Integer;
  function CantidadHabitacionesConVacantesPorPisoYConCamasParaRegistro: Integer;
  function CantidadHabitacionesConVacantesPorPisoYConLiterasParaRegistro: Integer;
  function CantidadHabitacionesConVacantesPorPisoYConLiterasAbajoParaRegistro: Integer;
  function CantidadHabitacionesConVacantesPorPisoYConLiterasArribaParaRegistro: Integer;  


  
  procedure MostrarLechosLibresPorID_HabitacionParaRegistro(aID_Habitacion: Integer);
  procedure MostrarCamasLibresPorID_HabitacionParaRegistro(aID_Habitacion: Integer);
  procedure MostrarLiterasLibresPorID_HabitacionParaRegistro(aID_Habitacion: Integer);
  procedure MostrarLiterasArribaLibresPorID_HabitacionParaRegistro(aID_Habitacion: Integer);
  procedure MostrarLiterasAbajoLibresPorID_HabitacionParaRegistro(aID_Habitacion: Integer);

  function CantidadLechosLibresParaRegistro: Integer;
  function CantidadCamasLibresParaRegistro: Integer;
  function CantidadLiterasLibresParaRegistro: Integer;
  function CantidadLiterasArribaLibresParaRegistro: Integer;
  function CantidadLiterasAbajoLibresParaRegistro: Integer;

  procedure TrasladarHuespedDeCamaPorID_Huesped(aID_Cama, aID_Huesped: Integer);
  procedure MostrarDatosTotalesDeHuespedPorID_Huesped(aID_Huesped: Integer);

  procedure BuscarHuespedPorCarneIdentidad(aCarneIdentidad: AnsiString);
  function ExisteHuespedPorCarneIdentidad(aCarneIdentidad: AnsiString): Boolean;

  procedure OcuparCamaPorID_Cama(aID_Cama: Integer);
  procedure LiberarCamaPorID_Cama(aID_Cama: Integer);
  procedure BuscarCamaPorID_Cama(aID_Cama: Integer);

  procedure ArchivarHuespedPorID_Huesped(aID_Huesped: Integer);

  
  
  //** Procedimientos de la pestaña de Admin. de Capacidades **
  procedure MostrarHabitaciones;
  procedure MostrarHabitacionesPorPiso(aPiso: String);

  procedure MostrarHabitacionesConVacantes;
  procedure MostrarHabitacionesSinVacantes;
  procedure MostrarHabitacionesPorPisoYConVacantes(aPiso: String);
  procedure MostrarHabitacionesPorPisoYSinVacantes(aPiso: String);  

  Procedure BuscarHabitacionPorID(aID_Habitacion: Integer);
  procedure BuscarHabitacionPorNumero(aNumeroHabitacion: Integer);
  procedure BuscarHabitacionConOcupantesPorID_Habitacion(aID_Habitacion: Integer);
  procedure BuscarLechoOcupadoPorID_Cama(aID_Cama: Integer);
  
  function ExisteLaHabitacionConID(ID_Habitacion: Integer): Boolean;
  function ExisteLaHabitacionConNumero(NumeroHabitacion: Integer): Boolean;
  function ExisteLaHabitacionConOcupantesPorID_Habitacion(aID_Habitacion: Integer): Boolean;
  function ExisteLechoOcupadoPorID_Cama(aID_Cama: Integer): Boolean;

  function CantidadDeHabitaciones: Integer;
  function CantidadDeHabitacionesPorPiso: Integer;

  function CantidadDeHabitacionesTotalesYConVacantes: Integer;
  function CantidadDeHabitacionesTotalesYSinVacantes: Integer;
  function CantidadDeHabitacionesPorPisoYConVacantes: Integer;
  function CantidadDeHabitacionesPorPisoYSinVacantes: Integer;  

  procedure InsertarHabitacion(aHabitacion: THabitacion);
  procedure ModificarHabitacion(aNuevaHabitacion: THabitacion);
  procedure EliminarHabitacion(aID_Habitacion: Integer);

  procedure InsertarCama(aCama: TCama);
  procedure InsertarCamaTemporal(aCama: TCama);
  procedure ModificarCama(aNuevaCama: TCama);
  procedure EliminarCamasLibresPorID_Habitacion(aID_Habitacion: Integer);

  function CantidadDeCamas: Integer;
  function CantidadDeCamasTemporales: Integer;
  function ExisteCamaTemporalConNumeroSerie(aNumeroSerie: AnsiString): Boolean;
    
  procedure CopiarCamasPorID_Habitacion(aID_Habitacion: Integer);
  procedure EliminarCamasTemporalesPorID_Habitacion(aID_Habitacion: Integer);
  procedure EliminarCamaTemporalPorID_Cama(aID_Cama: Integer);
  procedure EliminarTodasLasCamasTemporales;
  procedure MostrarCamasPorID_Habitacion(aID_Habitacion: Integer);
  procedure MostrarCamasTemporalesPorID_Habitacion(aID_Habitacion: Integer);
  procedure RellenarCamasLibresDesdeTemporales;  


  //*** Pestaña de Reservaciones ***






//*** Pestaña de Alertas del Sistema ***

  //procedimientos
  procedure MostrarHabitacionesVaciasParaAlertas;

  procedure MostrarHuespedesPasadosDeTiempoPorFechaActualParaAlertas(aFechaActual: TDateTime);

  procedure MostrarLechosTotales;
  procedure MostrarLechosLibresTotales;
  procedure MostrarLechosOcupadosTotales;

  procedure MostrarHuespedesConIncidenciasSoloRecientes;
  procedure MostrarHuespedesConIncidenciasSoloHistoricas;
  procedure MostrarHuespedesConIncidenciasHistoricasYRecientes;

  //funciones
  function CantidadHabitacionesVaciasParaAlertas: Integer;

  function CantidadHuespedesPasadosDeTiempoPorFechaActualParaAlerta: Integer;
  
  function CantidadLechosTotales: Integer;
  function CantidadLechosLibresTotales: Integer;
  function CantidadLechosOcupadosTotales: Integer;

  function CantidadHuespedesConIncidenciasSoloRecientes: Integer;
  function CantidadHuespedesConIncidenciasSoloHistoricas: Integer;
  function CantidadHuespedesConIncidenciasHistoricasYRecientes: Integer;
    
  procedure EliminarTodasLasAlertasDelSistema;
  procedure InsertarAlertaDelSistema(aMotivo, aDescripcion: AnsiString);

  procedure MostrarTodasAlertasDelSistema;
  function CantidadAlertasDelSistema: Integer;



  //*** Pestaña de Archivos ***
  //Filtro por datos - procedimientos
  procedure MostrarRegistrosDeArchivoPorCarneIdentidadPorNombreYPorApellidos(aCarneIdentidad, aNombre, aApellidos: AnsiString);
  procedure MostrarRegistrosDeArchivoPorCarneIdentidadYPorNombre(aCarneIdentidad, aNombre: AnsiString);
  procedure MostrarRegistrosDeArchivoPorCarneIdentidadYPorApellidos(aCarneIdentidad, aApellidos: AnsiString);
  procedure MostrarRegistrosDeArchivoPorNombreYPorApellidos(aNombre, aApellidos: AnsiString);
  procedure MostrarRegistrosDeArchivoPorCarneIdentidad(aCarneIdentidad: AnsiString);
  procedure MostrarRegistrosDeArchivoPorNombre(aNombre: AnsiString);
  procedure MostrarRegistrosDeArchivoPorApellidos(aApellidos: AnsiString);

  //Filtro por datos - funciones
  function CantidadRegistrosDeArchivoPorCarneIdentidadPorNombreYPorApellidos: Integer;
  function CantidadRegistrosDeArchivoPorCarneIdentidadYPorNombre: Integer;
  function CantidadRegistrosDeArchivoPorCarneIdentidadYPorApellidos: Integer;
  function CantidadRegistrosDeArchivoPorNombreYPorApellidos: Integer;
  function CantidadRegistrosDeArchivoPorCarneIdentidad: Integer;
  function CantidadRegistrosDeArchivoPorNombre: Integer;
  function CantidadRegistrosDeArchivoPorApellidos: Integer;


  
  //filtro por fechas - procedimientos
  procedure MostrarRegistrosDeArchivoPorIntervalosDeFechaFinalHospedaje(aFechaA, aFechaB: TDateTime);
  procedure MostrarRegistrosDeArchivoPorIntervalosDeFechaInicioHospedaje(aFechaA, aFechaB: TDateTime);
  procedure MostrarRegistrosArchivadosEnIntervalosDeFechas(aFechaA, aFechaB: TDateTime);


  //filtro por fechas - funciones
  function CantidadRegistrosDeArchivoPorIntervalosDeFechaFinalHospedaje: Integer;
  function CantidadRegistrosDeArchivoPorIntervalosDeFechaInicioHospedaje: Integer;
  function CantidadRegistrosArchivadosEnIntervalosDeFechas: Integer;

  //Detalles de Registro en Archivo
  procedure MostrarRegistroArchivadoPorID_HuespedHistorico(aID_HuespedHistorico: Integer);


  private
    { Private declarations }

  public
    { Public declarations }

    

end;

implementation

uses SysUtils, ConvUtils;

var
 ModuloControlDelSistema: TModuloControlDelSistema;
 ModuloHospedaje: TModuloHospedaje;



//---------------- *** Módulo de Control del Sistema *** ------------------------


  //** Procedimientos Imprescindibles **

procedure TGestionCursistasHospedados.EstablecerConexionConLaBD(aContrasenna, aUsuario, aNombreBaseDeDatos, aNombreServer, aIntranet: WideString);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.EstablecerConexionConLaBD(aContrasenna, aUsuario, aNombreBaseDeDatos, aNombreServer, aIntranet);
end;


procedure TGestionCursistasHospedados.EliminarConexionConLaBD;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.EliminarConexionConLaBD;
end;



function TGestionCursistasHospedados.ExisteConexionConLaBD: Boolean;
begin
  //Se invoca a la función del del Módulo correspondiente
  Result:= ModuloControlDelSistema.ExisteConexionConLaBD;
end;



function TGestionCursistasHospedados.EncriptarSeudoaleatorio(aFrase: String): String;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloControlDelSistema.EncriptarSeudoaleatorio(aFrase)
end;



function TGestionCursistasHospedados.DesencriptarSeudoaleatorio(aFrase: String): String;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloControlDelSistema.DesencriptarSeudoaleatorio(aFrase)
end;



procedure TGestionCursistasHospedados.LoggearAlUsuario(aID_Usuario, aPrivilegio, aNombreUsuario, aPrimerApellido, aSegundoApellido: AnsiString);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.LoggearAlUsuario(aID_Usuario, aPrivilegio, aNombreUsuario, aPrimerApellido, aSegundoApellido);
end;



procedure TGestionCursistasHospedados.ModificarLoggin(aViejoID_Usuario, aNuevoID_Usuario, aNuevoPrivilegio, aNuevoNombreUsuario, aNuevoPrimerApellido, aNuevoSegundoApellido: AnsiString);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.ModificarLoggin(aViejoID_Usuario, aNuevoID_Usuario, aNuevoPrivilegio, aNuevoNombreUsuario, aNuevoPrimerApellido, aNuevoSegundoApellido);
end;



procedure TGestionCursistasHospedados.DesloggearAlUsuario;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.DesloggearAlUsuario;
end;


procedure TGestionCursistasHospedados.BorrarFalsoLoggeo;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.BorrarFalsoLoggeo;
end;


function TGestionCursistasHospedados.ElUsuarioEstaLoggeado(aID_Usuario: AnsiString): Boolean;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloControlDelSistema.ElUsuarioEstaLoggeado(aID_Usuario)
end;


function TGestionCursistasHospedados.HayAlguienLoggeado: Boolean;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloControlDelSistema.HayAlguienLoggeado;
end;



function TGestionCursistasHospedados.ElLoggeadoEsAdministrador: Boolean;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloControlDelSistema.ElLoggeadoEsAdministrador;
end;


Procedure TGestionCursistasHospedados.BuscarAlLoggeado;
begin
  //Se invoca a la función del Módulo correspondiente
  ModuloControlDelSistema.BuscarAlLoggeado;
end;



procedure TGestionCursistasHospedados.ActualizarPermanencia;
begin
  //Se invoca a la función del Módulo correspondiente
  ModuloControlDelSistema.ActualizarPermanencia;
end;



  // ** Procedimientos agregados a última hora a esta Unit
function TGestionCursistasHospedados.ObtenerFechaDelSistema;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloControlDelSistema.ObtenerFechaDelSistema;
end;

  //** Procedimientos de la pestaña de Puestos de Trabajo **

procedure TGestionCursistasHospedados.MostrarPuestosDeTrabajo;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.MostrarPuestosDeTrabajo;
end;


Procedure TGestionCursistasHospedados.BuscarPuestoDeTrabajo(aID_Usuario: String);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.BuscarPuestoDeTrabajo(aID_Usuario);
end;


function TGestionCursistasHospedados.ExisteElPuestoDeTrabajoConUsuario(id_Usuario: String): Boolean;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloControlDelSistema.ExisteElPuestoDeTrabajoConUsuario(id_Usuario);
end;


procedure TGestionCursistasHospedados.SelecAdministrador(id_Usuario: String);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.SelecAdministrador(id_Usuario);
end;


function TGestionCursistasHospedados.ElTrabajadorEsAdministrador: Boolean;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloControlDelSistema.ElTrabajadorEsAdministrador;
end;


procedure TGestionCursistasHospedados.InsertarPuestoDeTrabajo(aPuestoDeTrabajo: TPuestoDeTrabajo);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.InsertarPuestoDeTrabajo(aPuestoDeTrabajo);
end;


procedure TGestionCursistasHospedados.ModificarPuestoDeTrabajo(aViejoID_Usuario: String; aNuevoPuestoDeTrabajo: TPuestoDeTrabajo);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.ModificarPuestoDeTrabajo(aViejoID_Usuario, aNuevoPuestoDeTrabajo);
end;


procedure TGestionCursistasHospedados.EliminarPuestoDeTrabajo(aID_Usuario:AnsiString);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.EliminarPuestoDeTrabajo(aID_Usuario);
end;



function TGestionCursistasHospedados.CantidadDePuestosDeTrabajo: Integer;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloControlDelSistema.CantidadDePuestosDeTrabajo;
end;

  //** Procedimientos de la pestaña de Trazas del Sistema **

procedure TGestionCursistasHospedados.GuardarTrazaDelSistema(aAccion: AnsiString);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.GuardarTrazaDelSistema(aAccion);
end;

procedure TGestionCursistasHospedados.MostrarTodasLasTrazas;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.MostrarTodasLasTrazas;
end;




//***********************************************************
// ***      Procedimientos del Módulo de Hospedaje        ***
//***********************************************************


  //** Procedimientos de la pestaña de Registro de Huespedes **




  //** Procedimientos de la pestaña de Admin. de Capacidades **
  
procedure TGestionCursistasHospedados.EliminarHabitacion(aID_Habitacion: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.EliminarHabitacion(aID_Habitacion);
end;



procedure TGestionCursistasHospedados.InsertarHabitacion(aHabitacion: THabitacion);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.InsertarHabitacion(aHabitacion);
end;



procedure TGestionCursistasHospedados.ModificarHabitacion(aNuevaHabitacion: THabitacion);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.ModificarHabitacion(aNuevaHabitacion);
end;


procedure TGestionCursistasHospedados.MostrarHabitaciones;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarHabitaciones;
end;



procedure TGestionCursistasHospedados.BuscarHabitacionPorID(aID_Habitacion: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.BuscarHabitacionPorID(aID_Habitacion);
end;



function TGestionCursistasHospedados.CantidadDeHabitaciones: Integer;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadDeHabitacionesTotales;
end;



function TGestionCursistasHospedados.ExisteLaHabitacionConID(ID_Habitacion: Integer): Boolean;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloHospedaje.ExisteLaHabitacionConID(ID_Habitacion);
end;



procedure TGestionCursistasHospedados.BuscarHabitacionPorNumero(aNumeroHabitacion: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.BuscarHabitacionPorNumero(aNumeroHabitacion);
end;



procedure TGestionCursistasHospedados.EliminarCamasLibresPorID_Habitacion(aID_Habitacion: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.EliminarCamasLibresPorID_Habitacion(aID_Habitacion);
end;



procedure TGestionCursistasHospedados.InsertarCama(aCama: TCama);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.InsertarCama(aCama);
end;



procedure TGestionCursistasHospedados.ModificarCama(aNuevaCama: TCama);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.ModificarCama(aNuevaCama);
end;



function TGestionCursistasHospedados.ExisteLaHabitacionConNumero(NumeroHabitacion: Integer): Boolean;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloHospedaje.ExisteLaHabitacionConNumero(NumeroHabitacion);
end;



procedure TGestionCursistasHospedados.MostrarHabitacionesPorPiso(aPiso: String);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarHabitacionesPorPiso(aPiso);
end;



function TGestionCursistasHospedados.CantidadDeHabitacionesPorPiso: Integer;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadDeHabitacionesPorPiso;
end;



procedure TGestionCursistasHospedados.CopiarCamasPorID_Habitacion(aID_Habitacion: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.CopiarCamasPorID_Habitacion(aID_Habitacion);
end;



procedure TGestionCursistasHospedados.EliminarCamasTemporalesPorID_Habitacion(aID_Habitacion: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.EliminarCamasTemporalesPorID_Habitacion(aID_Habitacion);
end;



procedure TGestionCursistasHospedados.EliminarCamaTemporalPorID_Cama(aID_Cama: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.EliminarCamaTemporalPorID_Cama(aID_Cama);
end;



procedure TGestionCursistasHospedados.MostrarCamasPorID_Habitacion(aID_Habitacion: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarCamasPorID_Habitacion(aID_Habitacion);
end;



procedure TGestionCursistasHospedados.MostrarCamasTemporalesPorID_Habitacion(aID_Habitacion: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarCamasTemporalesPorID_Habitacion(aID_Habitacion);
end;



function TGestionCursistasHospedados.CantidadDeCamas: Integer;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadDeCamas;
end;



function TGestionCursistasHospedados.CantidadDeCamasTemporales: Integer;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadDeCamasTemporales;
end;



procedure TGestionCursistasHospedados.InsertarCamaTemporal(aCama: TCama);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.InsertarCamaTemporal(aCama);
end;



function TGestionCursistasHospedados.ExisteCamaTemporalConNumeroSerie(aNumeroSerie: AnsiString): Boolean;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloHospedaje.ExisteCamaTemporalConNumeroSerie(aNumeroSerie);
end;



procedure TGestionCursistasHospedados.RellenarCamasLibresDesdeTemporales;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.RellenarCamasLibresDesdeTemporales;
end;



procedure TGestionCursistasHospedados.EliminarTodasLasCamasTemporales;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.EliminarTodasLasCamasTemporales;
end;



function TGestionCursistasHospedados.CantidadDeHabitacionesPorPisoYConVacantes: Integer;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadDeHabitacionesPorPisoYConVacantes;
end;



function TGestionCursistasHospedados.CantidadDeHabitacionesPorPisoYSinVacantes: Integer;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadDeHabitacionesPorPisoYSinVacantes;
end;



function TGestionCursistasHospedados.CantidadDeHabitacionesTotalesYConVacantes: Integer;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadDeHabitacionesTotalesYConVacantes;
end;



function TGestionCursistasHospedados.CantidadDeHabitacionesTotalesYSinVacantes: Integer;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadDeHabitacionesTotalesYSinVacantes;
end;



procedure TGestionCursistasHospedados.MostrarHabitacionesConVacantes;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarHabitacionesConVacantes;
end;



procedure TGestionCursistasHospedados.MostrarHabitacionesPorPisoYConVacantes(aPiso: String);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarHabitacionesPorPisoYConVacantes(aPiso);
end;



procedure TGestionCursistasHospedados.MostrarHabitacionesPorPisoYSinVacantes(aPiso: String);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarHabitacionesPorPisoYSinVacantes(aPiso);
end;



procedure TGestionCursistasHospedados.MostrarHabitacionesSinVacantes;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarHabitacionesSinVacantes;
end;



procedure TGestionCursistasHospedados.MostrarProvinciasCubanas;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarProvinciasCubanas;
end;



procedure TGestionCursistasHospedados.MostrarMunicipiosPorID_Provincia(aID_Provincia: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarMunicipiosPorID_Provincia(aID_Provincia);
end;



function TGestionCursistasHospedados.ObtenerHoraDelSistema: String;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloControlDelSistema.ObtenerHoraDelSistema;
end;



procedure TGestionCursistasHospedados.EliminarHuespedPorID_Huesped(aID_Huesped: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.EliminarHuespedPorID_Huesped(aID_Huesped);
end;



procedure TGestionCursistasHospedados.InsertarHuesped(aHuesped: THuesped);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.InsertarHuesped(aHuesped);
end;



procedure TGestionCursistasHospedados.LiberarCamaPorID_Cama(aID_Cama: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.LiberarCamaPorID_Cama(aID_Cama);
end;



procedure TGestionCursistasHospedados.ModificarHuesped(aNuevoHuesped: THuesped);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.ModificarHuesped(aNuevoHuesped);
end;



procedure TGestionCursistasHospedados.OcuparCamaPorID_Cama(aID_Cama: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.OcuparCamaPorID_Cama(aID_Cama);
end;



procedure TGestionCursistasHospedados.MostrarHuespedesTotales;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarHuespedesTotales;
end;



procedure TGestionCursistasHospedados.MostrarHabitacionesConVacantesTotalesParaRegistro;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarHabitacionesConVacantesTotalesParaRegistro;
end;



procedure TGestionCursistasHospedados.MostrarLechosLibresPorID_HabitacionParaRegistro(aID_Habitacion: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarLechosLibresPorID_HabitacionParaRegistro(aID_Habitacion);
end;



procedure TGestionCursistasHospedados.MostrarHuespedesPorMotivo(aMotivo: AnsiString);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarHuespedesPorMotivo(aMotivo);
end;



procedure TGestionCursistasHospedados.MostrarHuespedesPorMotivoYPorPiso(aMotivo, aPiso: AnsiString);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarHuespedesPorMotivoYPorPiso(aMotivo, aPiso);
end;



procedure TGestionCursistasHospedados.MostrarHuespedesPorPiso(aPiso: AnsiString);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarHuespedesPorPiso(aPiso);
end;



function TGestionCursistasHospedados.CantidadDeHuespedesPorMotivo: Integer;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadDeHuespedesPorMotivo;
end;



function TGestionCursistasHospedados.CantidadDeHuespedesPorPiso: Integer;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadDeHuespedesPorPiso;
end;



function TGestionCursistasHospedados.CantidadDeHuespedesPorMotivoYPorPiso: Integer;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadDeHuespedesPorMotivoYPorPiso;
end;



function TGestionCursistasHospedados.CantidadDeHuespedesTotales: Integer;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadDeHuespedesTotales;
end;



procedure TGestionCursistasHospedados.SalvarBaseDeDatosHostalWare(aCamino: String);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.SalvarBaseDeDatosHostalWare(aCamino);
end;



procedure TGestionCursistasHospedados.RestaurarBaseDeDatosHostalWare(aCamino: String);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloControlDelSistema.RestaurarBaseDeDatosHostalWare(aCamino);
end;



procedure TGestionCursistasHospedados.MostrarMunicipiosParaDatosLaboralesPorID_Provincia(aID_Provincia: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarMunicipiosParaDatosLaboralesPorID_Provincia(aID_Provincia);
end;



procedure TGestionCursistasHospedados.MostrarProvinciasCubanasParaDatosLaborales;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarProvinciasCubanasParaDatosLaborales;
end;



procedure TGestionCursistasHospedados.MostrarHabitacionesConVacantesPorPisoParaRegistro(aPiso: String);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarHabitacionesConVacantesPorPisoParaRegistro(aPiso);
end;



procedure TGestionCursistasHospedados.MostrarHabitacionesConVacantesPorPisoYConCamasParaRegistro(aPiso: String);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarHabitacionesConVacantesPorPisoYConCamasParaRegistro(aPiso);
end;



procedure TGestionCursistasHospedados.MostrarHabitacionesConVacantesPorPisoYConLiterasAbajoParaRegistro(aPiso: String);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarHabitacionesConVacantesPorPisoYConLiterasAbajoParaRegistro(aPiso);
end;



procedure TGestionCursistasHospedados.MostrarHabitacionesConVacantesPorPisoYConLiterasArribaParaRegistro(aPiso: String);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarHabitacionesConVacantesPorPisoYConLiterasArribaParaRegistro(aPiso);
end;



procedure TGestionCursistasHospedados.MostrarHabitacionesConVacantesPorPisoYConLiterasParaRegistro(aPiso: String);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarHabitacionesConVacantesPorPisoYConLiterasParaRegistro(aPiso);
end;



procedure TGestionCursistasHospedados.MostrarHabitacionesConVacantesTotalesYConCamasParaRegistro;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarHabitacionesConVacantesTotalesYConCamasParaRegistro;
end;



procedure TGestionCursistasHospedados.MostrarHabitacionesConVacantesTotalesYConLiterasAbajoParaRegistro;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarHabitacionesConVacantesTotalesYConLiterasAbajoParaRegistro;
end;



procedure TGestionCursistasHospedados.MostrarHabitacionesConVacantesTotalesYConLiterasArribaParaRegistro;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarHabitacionesConVacantesTotalesYConLiterasArribaParaRegistro;
end;



procedure TGestionCursistasHospedados.MostrarHabitacionesConVacantesTotalesYConLiterasParaRegistro;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarHabitacionesConVacantesTotalesYConLiterasParaRegistro;
end;




  //Cantidades

function TGestionCursistasHospedados.CantidadHabitacionesConVacantesPorPisoParaRegistro: Integer;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadHabitacionesConVacantesPorPisoParaRegistro;
end;



function TGestionCursistasHospedados.CantidadHabitacionesConVacantesPorPisoYConCamasParaRegistro: Integer;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadHabitacionesConVacantesPorPisoYConCamasParaRegistro;
end;



function TGestionCursistasHospedados.CantidadHabitacionesConVacantesPorPisoYConLiterasAbajoParaRegistro: Integer;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadHabitacionesConVacantesPorPisoYConLiterasAbajoParaRegistro;
end;



function TGestionCursistasHospedados.CantidadHabitacionesConVacantesPorPisoYConLiterasArribaParaRegistro: Integer;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadHabitacionesConVacantesPorPisoYConLiterasArribaParaRegistro;
end;



function TGestionCursistasHospedados.CantidadHabitacionesConVacantesPorPisoYConLiterasParaRegistro: Integer;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadHabitacionesConVacantesPorPisoYConLiterasParaRegistro;
end;



function TGestionCursistasHospedados.CantidadHabitacionesConVacantesTotalesParaRegistro: Integer;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadHabitacionesConVacantesTotalesParaRegistro;
end;



function TGestionCursistasHospedados.CantidadHabitacionesConVacantesTotalesYConCamasParaRegistro: Integer;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadHabitacionesConVacantesTotalesYConCamasParaRegistro;
end;



function TGestionCursistasHospedados.CantidadHabitacionesConVacantesTotalesYConLiterasAbajoParaRegistro: Integer;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadHabitacionesConVacantesTotalesYConLiterasAbajoParaRegistro;
end;



function TGestionCursistasHospedados.CantidadHabitacionesConVacantesTotalesYConLiterasArribaParaRegistro: Integer;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadHabitacionesConVacantesTotalesYConLiterasArribaParaRegistro;
end;



function TGestionCursistasHospedados.CantidadHabitacionesConVacantesTotalesYConLiterasParaRegistro: Integer;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadHabitacionesConVacantesTotalesYConLiterasParaRegistro;
end;



procedure TGestionCursistasHospedados.MostrarCamasLibresPorID_HabitacionParaRegistro(aID_Habitacion: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarCamasLibresPorID_HabitacionParaRegistro(aID_Habitacion);
end;



procedure TGestionCursistasHospedados.MostrarLiterasAbajoLibresPorID_HabitacionParaRegistro(aID_Habitacion: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarLiterasAbajoLibresPorID_HabitacionParaRegistro(aID_Habitacion);
end;



procedure TGestionCursistasHospedados.MostrarLiterasArribaLibresPorID_HabitacionParaRegistro(aID_Habitacion: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarLiterasArribaLibresPorID_HabitacionParaRegistro(aID_Habitacion);
end;



procedure TGestionCursistasHospedados.MostrarLiterasLibresPorID_HabitacionParaRegistro(aID_Habitacion: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarliterasLibresPorID_HabitacionParaRegistro(aID_Habitacion);
end;



function TGestionCursistasHospedados.CantidadCamasLibresParaRegistro: Integer;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadCamasLibresParaRegistro;
end;



function TGestionCursistasHospedados.CantidadLechosLibresParaRegistro: Integer;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadLechosLibresParaRegistro;
end;



function TGestionCursistasHospedados.CantidadLiterasAbajoLibresParaRegistro: Integer;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadLiterasAbajoLibresParaRegistro;
end;



function TGestionCursistasHospedados.CantidadLiterasArribaLibresParaRegistro: Integer;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadLiterasArribaLibresParaRegistro;
end;



function TGestionCursistasHospedados.CantidadLiterasLibresParaRegistro: Integer;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadLiterasLibresParaRegistro;
end;



procedure TGestionCursistasHospedados.MostrarHuespedPorID_Huesped(aID_Huesped: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarHuespedPorID_Huesped(aID_Huesped);
end;



procedure TGestionCursistasHospedados.BuscarID_MunicipioCubanoHuespedPorNombreMunicipio(aNombreMunicipio: AnsiString);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.BuscarID_MunicipioCubanoHuespedPorNombreMunicipio(aNombreMunicipio);
end;



procedure TGestionCursistasHospedados.BuscarID_ProvinciaCubanaHuespedPorNombreProvincia(aNombreProvincia: AnsiString);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.BuscarID_ProvinciaCubanaHuespedPorNombreProvincia(aNombreProvincia);
end;



procedure TGestionCursistasHospedados.BuscarID_MunicipioCubanoCentroLaboralPorNombreMunicipio(aNombreMunicipio: AnsiString);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.BuscarID_MunicipioCubanoCentroLaboralPorNombreMunicipio(aNombreMunicipio);
end;



procedure TGestionCursistasHospedados.BuscarID_ProvinciaCubanaCentroLaboralPorNombreProvincia(aNombreProvincia: AnsiString);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.BuscarID_ProvinciaCubanaCentroLaboralPorNombreProvincia(aNombreProvincia);
end;



function TGestionCursistasHospedados.CantidadDeTrazas: Integer;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloControlDelSistema.CantidadDeTrazas;
end;



procedure TGestionCursistasHospedados.TrasladarHuespedDeCamaPorID_Huesped(aID_Cama, aID_Huesped: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.TrasladarHuespedDeCamaPorID_Huesped(aID_Cama, aID_Huesped);
end;



procedure TGestionCursistasHospedados.BuscarCamaPorID_Cama(aID_Cama: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.BuscarCamaPorID_Cama(aID_Cama);
end;



procedure TGestionCursistasHospedados.MostrarDatosTotalesDeHuespedPorID_Huesped(aID_Huesped: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarDatosTotalesDeHuespedPorID_Huesped(aID_Huesped);
end;



procedure TGestionCursistasHospedados.MostrarOtrosHuespedesPorMotivoYPorID_Huesped(aMotivo: AnsiString; aID_Huesped: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarOtrosHuespedesPorMotivoYPorID_Huesped(aMotivo, aID_Huesped);
end;



procedure TGestionCursistasHospedados.MostrarOtrosHuespedesPorMotivoYPorPisoYPorID_Huesped(aMotivo, aPiso: AnsiString; aID_Huesped: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarOtrosHuespedesPorMotivoYPorPisoYPorID_Huesped(aMotivo, aPiso, aID_Huesped);
end;



procedure TGestionCursistasHospedados.MostrarOtrosHuespedesPorPisoYPorID_Huesped(aPiso: AnsiString; aID_Huesped: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarOtrosHuespedesPorPisoYPorID_Huesped(aPiso, aID_Huesped);
end;



procedure TGestionCursistasHospedados.MostrarOtrosHuespedesTotalesPorID_Huesped(aID_Huesped: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarOtrosHuespedesTotalesPorID_Huesped(aID_Huesped);
end;



function TGestionCursistasHospedados.CantidadDeOtrosHuespedesPorMotivoYPorID_Huesped: Integer;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadDeOtrosHuespedesPorMotivoYPorID_Huesped;
end;



function TGestionCursistasHospedados.CantidadDeOtrosHuespedesPorMotivoYPorPisoYPorID_Huesped: Integer;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadDeOtrosHuespedesPorMotivoYPorPisoYPorID_Huesped;
end;



function TGestionCursistasHospedados.CantidadDeOtrosHuespedesPorPisoYPorID_Huesped: Integer;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadDeOtrosHuespedesPorPisoYPorID_Huesped;
end;



function TGestionCursistasHospedados.CantidadDeOtrosHuespedesTotalesPorID_Huesped: Integer;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadDeOtrosHuespedesTotalesPorID_Huesped;
end;



procedure TGestionCursistasHospedados.MostrarHabitacionesVaciasParaAlertas;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarHabitacionesVaciasParaAlertas;
end;



function TGestionCursistasHospedados.CantidadHabitacionesVaciasParaAlertas: Integer;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadHabitacionesVaciasParaAlertas;
end;



procedure TGestionCursistasHospedados.EliminarTodasLasAlertasDelSistema;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.EliminarTodasLasAlertasDelSistema;
end;



procedure TGestionCursistasHospedados.InsertarAlertaDelSistema(aMotivo, aDescripcion: AnsiString);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.InsertarAlertaDelSistema(aMotivo, aDescripcion);
end;



procedure TGestionCursistasHospedados.MostrarTodasAlertasDelSistema;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarTodasAlertasDelSistema;
end;
                                  


procedure TGestionCursistasHospedados.BuscarHuespedPorCarneIdentidad(aCarneIdentidad: AnsiString);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.BuscarHuespedPorCarneIdentidad(aCarneIdentidad);
end;



function TGestionCursistasHospedados.ExisteHuespedPorCarneIdentidad(aCarneIdentidad: AnsiString): Boolean;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloHospedaje.ExisteHuespedPorCarneIdentidad(aCarneIdentidad);
end;



function TGestionCursistasHospedados.CantidadAlertasDelSistema: Integer;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadAlertasDelSistema;
end;



function TGestionCursistasHospedados.CantidadHuespedesPasadosDeTiempoPorFechaActualParaAlerta: Integer;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadHuespedesPasadosDeTiempoPorFechaActualParaAlerta;
end;



procedure TGestionCursistasHospedados.MostrarHuespedesPasadosDeTiempoPorFechaActualParaAlertas(aFechaActual: TDateTime);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarHuespedesPasadosDeTiempoPorFechaActualParaAlertas(aFechaActual);
end;



function TGestionCursistasHospedados.NombreCompletoDelLoggeado: AnsiString;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloControlDelSistema.NombreCompletoDelLoggeado;
end;



function TGestionCursistasHospedados.CantidadLechosLibresTotales: Integer;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadLechosLibresTotales;
end;



function TGestionCursistasHospedados.CantidadLechosOcupadosTotales: Integer;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadLechosOcupadosTotales;
end;



function TGestionCursistasHospedados.CantidadLechosTotales: Integer;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadLechosTotales;
end;



procedure TGestionCursistasHospedados.MostrarLechosLibresTotales;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarLechosLibresTotales;
end;



procedure TGestionCursistasHospedados.MostrarLechosOcupadosTotales;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarLechosOcupadosTotales;
end;



procedure TGestionCursistasHospedados.MostrarLechosTotales;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarLechosTotales;
end;



procedure TGestionCursistasHospedados.BuscarHabitacionConOcupantesPorID_Habitacion(aID_Habitacion: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.BuscarHabitacionConOcupantesPorID_Habitacion(aID_Habitacion);
end;



function TGestionCursistasHospedados.ExisteLaHabitacionConOcupantesPorID_Habitacion(aID_Habitacion: Integer): Boolean;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloHospedaje.ExisteLaHabitacionConOcupantesPorID_Habitacion(aID_Habitacion);
end;



procedure TGestionCursistasHospedados.BuscarLechoOcupadoPorID_Cama(aID_Cama: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.BuscarlechoOcupadoPorID_Cama(aID_Cama);
end;



function TGestionCursistasHospedados.ExisteLechoOcupadoPorID_Cama(aID_Cama: Integer): Boolean;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloHospedaje.ExistelechoOcupadoPorID_Cama(aID_Cama);
end;



procedure TGestionCursistasHospedados.MostrarHuespedesConIncidenciasHistoricasYRecientes;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarHuespedesConIncidenciasHistoricasYRecientes;
end;



procedure TGestionCursistasHospedados.MostrarHuespedesConIncidenciasSoloHistoricas;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarHuespedesConIncidenciasSoloHistoricas;
end;



procedure TGestionCursistasHospedados.MostrarHuespedesConIncidenciasSoloRecientes;
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarHuespedesConIncidenciasSoloRecientes;
end;



function TGestionCursistasHospedados.CantidadHuespedesConIncidenciasHistoricasYRecientes: Integer;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadHuespedesConIncidenciasHistoricasYRecientes;
end;



function TGestionCursistasHospedados.CantidadHuespedesConIncidenciasSoloHistoricas: Integer;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadHuespedesConIncidenciasSoloHistoricas;
end;



function TGestionCursistasHospedados.CantidadHuespedesConIncidenciasSoloRecientes: Integer;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadHuespedesConIncidenciasSoloRecientes;
end;



procedure TGestionCursistasHospedados.ArchivarHuespedPorID_Huesped(aID_Huesped: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.ArchivarHuespedPorID_Huesped(aID_Huesped);
end;



procedure TGestionCursistasHospedados.MostrarRegistrosDeArchivoPorApellidos(aApellidos: AnsiString);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarRegistrosDeArchivoPorApellidos(aApellidos);
end;



procedure TGestionCursistasHospedados.MostrarRegistrosDeArchivoPorCarneIdentidad(aCarneIdentidad: AnsiString);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarRegistrosDeArchivoPorCarneIdentidad(aCarneIdentidad);
end;



procedure TGestionCursistasHospedados.MostrarRegistrosDeArchivoPorCarneIdentidadPorNombreYPorApellidos(aCarneIdentidad, aNombre, aApellidos: AnsiString);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarRegistrosDeArchivoPorCarneIdentidadPorNombreYPorApellidos(aCarneIdentidad, aNombre, aApellidos);
end;



procedure TGestionCursistasHospedados.MostrarRegistrosDeArchivoPorCarneIdentidadYPorApellidos(aCarneIdentidad, aApellidos: AnsiString);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarRegistrosDeArchivoPorCarneIdentidadYPorApellidos(aCarneIdentidad, aApellidos);
end;



procedure TGestionCursistasHospedados.MostrarRegistrosDeArchivoPorCarneIdentidadYPorNombre(aCarneIdentidad, aNombre: AnsiString);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarRegistrosDeArchivoPorCarneIdentidadYPorNombre(aCarneIdentidad, aNombre);
end;



procedure TGestionCursistasHospedados.MostrarRegistrosDeArchivoPorNombre(aNombre: AnsiString);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarRegistrosDeArchivoPorNombre(aNombre);
end;



procedure TGestionCursistasHospedados.MostrarRegistrosDeArchivoPorNombreYPorApellidos(aNombre, aApellidos: AnsiString);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarRegistrosDeArchivoPorNombreYPorApellidos(aNombre, aApellidos);
end;



function TGestionCursistasHospedados.CantidadRegistrosDeArchivoPorApellidos: Integer;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadRegistrosDeArchivoPorApellidos;
end;



function TGestionCursistasHospedados.CantidadRegistrosDeArchivoPorCarneIdentidad: Integer;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadRegistrosDeArchivoPorCarneIdentidad;
end;



function TGestionCursistasHospedados.CantidadRegistrosDeArchivoPorCarneIdentidadPorNombreYPorApellidos: Integer;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadRegistrosDeArchivoPorCarneIdentidadPorNombreYPorApellidos;
end;



function TGestionCursistasHospedados.CantidadRegistrosDeArchivoPorCarneIdentidadYPorApellidos: Integer;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadRegistrosDeArchivoPorCarneIdentidadYPorApellidos;
end;



function TGestionCursistasHospedados.CantidadRegistrosDeArchivoPorCarneIdentidadYPorNombre: Integer;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadRegistrosDeArchivoPorCarneIdentidadYPorNombre;
end;



function TGestionCursistasHospedados.CantidadRegistrosDeArchivoPorNombre: Integer;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadRegistrosDeArchivoPorNombre;
end;



function TGestionCursistasHospedados.CantidadRegistrosDeArchivoPorNombreYPorApellidos: Integer;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadRegistrosDeArchivoPorNombreYPorApellidos;
end;



procedure TGestionCursistasHospedados.MostrarRegistrosArchivadosEnIntervalosDeFechas(aFechaA, aFechaB: TDateTime);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarRegistrosArchivadosEnIntervalosDeFechas(aFechaA, aFechaB);
end;



procedure TGestionCursistasHospedados.MostrarRegistrosDeArchivoPorIntervalosDeFechaFinalHospedaje(aFechaA, aFechaB: TDateTime);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarRegistrosDeArchivoPorIntervalosDeFechaFinalHospedaje(aFechaA, aFechaB);
end;



procedure TGestionCursistasHospedados.MostrarRegistrosDeArchivoPorIntervalosDeFechaInicioHospedaje(aFechaA, aFechaB: TDateTime);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarRegistrosDeArchivoPorIntervalosDeFechaInicioHospedaje(aFechaA, aFechaB);
end;



function TGestionCursistasHospedados.CantidadRegistrosArchivadosEnIntervalosDeFechas: Integer;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadRegistrosArchivadosEnIntervalosDeFechas;
end;



function TGestionCursistasHospedados.CantidadRegistrosDeArchivoPorIntervalosDeFechaFinalHospedaje: Integer;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadRegistrosDeArchivoPorIntervalosDeFechaFinalHospedaje;
end;



function TGestionCursistasHospedados.CantidadRegistrosDeArchivoPorIntervalosDeFechaInicioHospedaje: Integer;
begin
  //Se invoca a la función del Módulo correspondiente
  Result:= ModuloHospedaje.CantidadRegistrosDeArchivoPorIntervalosDeFechaInicioHospedaje;
end;



procedure TGestionCursistasHospedados.MostrarRegistroArchivadoPorID_HuespedHistorico(aID_HuespedHistorico: Integer);
begin
  //Se invoca al procedimiento del Módulo correspondiente
  ModuloHospedaje.MostrarRegistroArchivadoPorID_HuespedHistorico(aID_HuespedHistorico);
end;



end.
