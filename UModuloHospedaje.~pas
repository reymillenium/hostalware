unit UModuloHospedaje;

interface

uses

  Windows, Classes, DB, Dialogs, Winsock, SysUtils, StrUtils,

  {Units echas por mi}
  UHuesped,
  UPlazaReservada,
  UReservacion,
  
  UHabitacion, UCama,

  {DataModules echos por mi.}
  UDataModuleConexionGeneral, 
  UDataModuleAdminCapacidades,
  UDataModuleRegistroDeHuespedes,
  UDataModuleReservaciones,
  UDataModuleAlertasDelSistema,
  UDataModuleArchivoDeRegistros;

type
  TModuloHospedaje = Class(TObject)

  //*** Pestaña de Registro de Huespedes ***
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


  //*** Pestaña de Admin. de Capacidades ***

  procedure MostrarHabitaciones;
  procedure MostrarHabitacionesPorPiso(aPiso: String);

  procedure MostrarHabitacionesConVacantes;
  procedure MostrarHabitacionesSinVacantes;
  procedure MostrarHabitacionesPorPisoYConVacantes(aPiso: String);
  procedure MostrarHabitacionesPorPisoYSinVacantes(aPiso: String);

  procedure BuscarHabitacionPorID(aID_Habitacion: Integer);
  procedure BuscarHabitacionPorNumero(aNumeroHabitacion: Integer);
  procedure BuscarHabitacionConOcupantesPorID_Habitacion(aID_Habitacion: Integer);
  procedure BuscarLechoOcupadoPorID_Cama(aID_Cama: Integer);

  function ExisteLaHabitacionConID(ID_Habitacion: Integer): Boolean;
  function ExisteLaHabitacionConNumero(NumeroHabitacion: Integer): Boolean;
  function ExisteLaHabitacionConOcupantesPorID_Habitacion(aID_Habitacion: Integer): Boolean;
  function ExistelechoOcupadoPorID_Cama(aID_Cama: Integer): Boolean;

  function CantidadDeHabitacionesTotales: Integer;
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
  procedure ModificarCama(aNuevaCama: TCama); //No se usa (está vacío)
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

uses ConvUtils;


 




{ TModuloHospedaje }

procedure TModuloHospedaje.BuscarHabitacionPorID(aID_Habitacion: Integer);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionPorID_Habitacion.Active:= False;

  //Le pasamos el parámetro al StoredProc
  DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionPorID_Habitacion.Parameters.ParamByName('@vid_Habitacion').Value:= aID_Habitacion;

  //Aquí se ejecuta el StoredProc en la BD
  DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionPorID_Habitacion.Open; //Genera datos de respuesta, por eso se pone
  DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionPorID_Habitacion.ExecProc;
end;



procedure TModuloHospedaje.BuscarHabitacionPorNumero(aNumeroHabitacion: Integer);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionPorNumero.Active:= False;

  //Le pasamos el parámetro al StoredProc
  DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionPorNumero.Parameters.ParamByName('@vNumeroHabitacion').Value:= aNumeroHabitacion;

  //Aquí se ejecuta el StoredProc en la BD
  DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionPorNumero.Open; //Genera datos de respuesta, por eso se pone
  DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionPorNumero.ExecProc;
end;



function TModuloHospedaje.CantidadDeHabitacionesTotales: Integer;
begin
  //Cuento la cantidad de habitaciones que existen
  if (DataModuleAdminCapacidades.DataSourceSelecHabitaciones.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleAdminCapacidades.DataSourceSelecHabitaciones.DataSet.RecordCount
        else
          Result:= 0;
end;



procedure TModuloHospedaje.EliminarHabitacion(aID_Habitacion: Integer);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleAdminCapacidades.ADOStoredProcEliminarHabitacion.Active:= False;

  //Le pasamos los parámetros al StoreProcedure.
  DataModuleAdminCapacidades.ADOStoredProcEliminarHabitacion.Parameters.ParamByName('@vid_Habitacion').Value:= aID_Habitacion;

  //Aquí se hace la eliminación en la BD
  //DataModuleControlDelSistema.ADOStoredProcEliminarUsuario.Open;
  DataModuleAdminCapacidades.ADOStoredProcEliminarHabitacion.ExecProc;
end;



function TModuloHospedaje.ExisteLaHabitacionConID(ID_Habitacion: Integer): Boolean;
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleAdminCapacidades.ADOStoredProcExisteHabitacionConID.Active:= False;

  //Le pasamos el usuario del Puesto de Trabajo, al StoredProc.
  DataModuleAdminCapacidades.ADOStoredProcExisteHabitacionConID.Parameters.ParamByName('@vid_Habitacion').Value:= ID_Habitacion;

  //Aquí se hace la búsqueda en la BD
  DataModuleAdminCapacidades.ADOStoredProcExisteHabitacionConID.Open;
  DataModuleAdminCapacidades.ADOStoredProcExisteHabitacionConID.ExecProc;

  //Aquí se verifica si se halló algún Puesto de Trabajo
  if (DataModuleAdminCapacidades.DataSourceExisteHabitacionConID.DataSet.RecordCount<>0)
    then
      Result:= True
        else
          Result:= False;
end;



procedure TModuloHospedaje.InsertarHabitacion(aHabitacion: THabitacion);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleAdminCapacidades.ADOStoredProcInsertarHabitacion.Active:= False;

  //*** Le pasamos los parámetros al StoredProc ***
  //Ubicacion
  DataModuleAdminCapacidades.ADOStoredProcInsertarHabitacion.Parameters.ParamByName('@vNumeroHabitacion').Value:= aHabitacion.NumeroHabitacion;
  DataModuleAdminCapacidades.ADOStoredProcInsertarHabitacion.Parameters.ParamByName('@vPiso').Value:= aHabitacion.Piso;

  //Equipos
  DataModuleAdminCapacidades.ADOStoredProcInsertarHabitacion.Parameters.ParamByName('@vTelevisores').Value:= aHabitacion.Televisores;
  DataModuleAdminCapacidades.ADOStoredProcInsertarHabitacion.Parameters.ParamByName('@vRefrigeradores').Value:= aHabitacion.Refrigeradores;
  DataModuleAdminCapacidades.ADOStoredProcInsertarHabitacion.Parameters.ParamByName('@vVentiladores').Value:= aHabitacion.Ventiladores;
  DataModuleAdminCapacidades.ADOStoredProcInsertarHabitacion.Parameters.ParamByName('@vCalentadoresAgua').Value:= aHabitacion.CalentadoresAgua;
  DataModuleAdminCapacidades.ADOStoredProcInsertarHabitacion.Parameters.ParamByName('@vSecadorPelo').Value:= aHabitacion.SecadorPelo;
  DataModuleAdminCapacidades.ADOStoredProcInsertarHabitacion.Parameters.ParamByName('@vSillasYSillones').Value:= aHabitacion.SillasYSillones;

  //Moviliario
  DataModuleAdminCapacidades.ADOStoredProcInsertarHabitacion.Parameters.ParamByName('@vMesasGrandes').Value:= aHabitacion.MesasGrandes;
  DataModuleAdminCapacidades.ADOStoredProcInsertarHabitacion.Parameters.ParamByName('@vMesitasNoche').Value:= aHabitacion.MesitasNoche;
  DataModuleAdminCapacidades.ADOStoredProcInsertarHabitacion.Parameters.ParamByName('@vMesasPC').Value:= aHabitacion.MesasPC;
  DataModuleAdminCapacidades.ADOStoredProcInsertarHabitacion.Parameters.ParamByName('@vArmario').Value:= aHabitacion.Armario;
  DataModuleAdminCapacidades.ADOStoredProcInsertarHabitacion.Parameters.ParamByName('@vCloset').Value:= aHabitacion.Closet;
  DataModuleAdminCapacidades.ADOStoredProcInsertarHabitacion.Parameters.ParamByName('@vEspejo').Value:= aHabitacion.Espejo;

  //Servicios
  DataModuleAdminCapacidades.ADOStoredProcInsertarHabitacion.Parameters.ParamByName('@vAireAcondicionado').Value:= aHabitacion.AireAcondicionado;
  DataModuleAdminCapacidades.ADOStoredProcInsertarHabitacion.Parameters.ParamByName('@vAguaCaliente').Value:= aHabitacion.AguaCaliente;
  DataModuleAdminCapacidades.ADOStoredProcInsertarHabitacion.Parameters.ParamByName('@vTomasElectricas').Value:= aHabitacion.TomasElectricas;
  DataModuleAdminCapacidades.ADOStoredProcInsertarHabitacion.Parameters.ParamByName('@vTelefonoInterno').Value:= aHabitacion.TelefonoInterno;
  DataModuleAdminCapacidades.ADOStoredProcInsertarHabitacion.Parameters.ParamByName('@vTelefonoDirecto').Value:= aHabitacion.TelefonoDirecto;
  DataModuleAdminCapacidades.ADOStoredProcInsertarHabitacion.Parameters.ParamByName('@vInternet').Value:= aHabitacion.Internet;
  DataModuleAdminCapacidades.ADOStoredProcInsertarHabitacion.Parameters.ParamByName('@vTVSatelite').Value:= aHabitacion.TVSatelite;

  //Aquí se hace la inserción en la BD
  //DataModuleAdminCapacidades.ADOStoredProcInsertarHabitacion.Open;  <- No genera datos de respuesta el StoredProc, por eso se omite esto.
  DataModuleAdminCapacidades.ADOStoredProcInsertarHabitacion.ExecProc;
end;




procedure TModuloHospedaje.ModificarHabitacion(aNuevaHabitacion: THabitacion);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleAdminCapacidades.ADOStoredProcModificarHabitacion.Active:= False;

  //*** Le pasamos los parámetros al StoredProc ***
  //Posicionamiento
  DataModuleAdminCapacidades.ADOStoredProcModificarHabitacion.Parameters.ParamByName('@vViejoID_Habitacion').Value:= aNuevaHabitacion.ID_Habitacion;

  //Ubicacion
  DataModuleAdminCapacidades.ADOStoredProcModificarHabitacion.Parameters.ParamByName('@vNuevoNumeroHabitacion').Value:= aNuevaHabitacion.NumeroHabitacion;
  DataModuleAdminCapacidades.ADOStoredProcModificarHabitacion.Parameters.ParamByName('@vNuevoPiso').Value:= aNuevaHabitacion.Piso;

  //Equipos
  DataModuleAdminCapacidades.ADOStoredProcModificarHabitacion.Parameters.ParamByName('@vNuevoTelevisores').Value:= aNuevaHabitacion.Televisores;
  DataModuleAdminCapacidades.ADOStoredProcModificarHabitacion.Parameters.ParamByName('@vNuevoRefrigeradores').Value:= aNuevaHabitacion.Refrigeradores;
  DataModuleAdminCapacidades.ADOStoredProcModificarHabitacion.Parameters.ParamByName('@vNuevoVentiladores').Value:= aNuevaHabitacion.Ventiladores;
  DataModuleAdminCapacidades.ADOStoredProcModificarHabitacion.Parameters.ParamByName('@vNuevoCalentadoresAgua').Value:= aNuevaHabitacion.CalentadoresAgua;
  DataModuleAdminCapacidades.ADOStoredProcModificarHabitacion.Parameters.ParamByName('@vNuevoSecadorPelo').Value:= aNuevaHabitacion.SecadorPelo;
  DataModuleAdminCapacidades.ADOStoredProcModificarHabitacion.Parameters.ParamByName('@vNuevoSillasYSillones').Value:= aNuevaHabitacion.SillasYSillones;

  //Moviliario
  DataModuleAdminCapacidades.ADOStoredProcModificarHabitacion.Parameters.ParamByName('@vNuevoMesasGrandes').Value:= aNuevaHabitacion.MesasGrandes;
  DataModuleAdminCapacidades.ADOStoredProcModificarHabitacion.Parameters.ParamByName('@vNuevoMesitasNoche').Value:= aNuevaHabitacion.MesitasNoche;
  DataModuleAdminCapacidades.ADOStoredProcModificarHabitacion.Parameters.ParamByName('@vNuevoMesasPC').Value:= aNuevaHabitacion.MesasPC;
  DataModuleAdminCapacidades.ADOStoredProcModificarHabitacion.Parameters.ParamByName('@vNuevoArmario').Value:= aNuevaHabitacion.Armario;
  DataModuleAdminCapacidades.ADOStoredProcModificarHabitacion.Parameters.ParamByName('@vNuevoCloset').Value:= aNuevaHabitacion.Closet;
  DataModuleAdminCapacidades.ADOStoredProcModificarHabitacion.Parameters.ParamByName('@vNuevoEspejo').Value:= aNuevaHabitacion.Espejo;

  //Servicios
  DataModuleAdminCapacidades.ADOStoredProcModificarHabitacion.Parameters.ParamByName('@vNuevoAireAcondicionado').Value:= aNuevaHabitacion.AireAcondicionado;
  DataModuleAdminCapacidades.ADOStoredProcModificarHabitacion.Parameters.ParamByName('@vNuevoAguaCaliente').Value:= aNuevaHabitacion.AguaCaliente;
  DataModuleAdminCapacidades.ADOStoredProcModificarHabitacion.Parameters.ParamByName('@vNuevoTomasElectricas').Value:= aNuevaHabitacion.TomasElectricas;
  DataModuleAdminCapacidades.ADOStoredProcModificarHabitacion.Parameters.ParamByName('@vNuevoTelefonoInterno').Value:= aNuevaHabitacion.TelefonoInterno;
  DataModuleAdminCapacidades.ADOStoredProcModificarHabitacion.Parameters.ParamByName('@vNuevoTelefonoDirecto').Value:= aNuevaHabitacion.TelefonoDirecto;
  DataModuleAdminCapacidades.ADOStoredProcModificarHabitacion.Parameters.ParamByName('@vNuevoInternet').Value:= aNuevaHabitacion.Internet;
  DataModuleAdminCapacidades.ADOStoredProcModificarHabitacion.Parameters.ParamByName('@vNuevoTVSatelite').Value:= aNuevaHabitacion.TVSatelite;

  //Aquí se hace la modificación en la BD
  //DataModule1.ADOStoredProcModificarHabitacion.Open;  <- No genera datos de respuesta el StoredProc, por eso se omite esto.
  DataModuleAdminCapacidades.ADOStoredProcModificarHabitacion.ExecProc;
end;



procedure TModuloHospedaje.MostrarHabitaciones;
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones.Active:= False;

  //*** No hay que pasarle parámetros al StoredProc ***

  //Aquí se hace la búsqueda en la BD
  DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones.Open; //<- Sí genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleAdminCapacidades.ADOStoredProcSelecHabitaciones.ExecProc;
end;


procedure TModuloHospedaje.InsertarCama(aCama: TCama);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleAdminCapacidades.ADOStoredProcInsertarCama.Active:= False;

  //*** Le pasamos los parámetros al StoredProc ***
  DataModuleAdminCapacidades.ADOStoredProcInsertarCama.Parameters.ParamByName('@vID_Habitacion').Value:= aCama.ID_Habitacion;
  DataModuleAdminCapacidades.ADOStoredProcInsertarCama.Parameters.ParamByName('@vTipoCama').Value:= aCama.TipoCama;
  DataModuleAdminCapacidades.ADOStoredProcInsertarCama.Parameters.ParamByName('@vNumeroSerie').Value:= aCama.NumeroSerie;
  DataModuleAdminCapacidades.ADOStoredProcInsertarCama.Parameters.ParamByName('@vEstadoOcupacional').Value:= aCama.EstadoOcupacional;


  //Aquí se hace la inserción en la BD
  //DataModule1.ADOStoredProcInsertarCama.Open;  <- No genera datos de respuesta el StoredProc, por eso se omite esto.
  DataModuleAdminCapacidades.ADOStoredProcInsertarCama.ExecProc;
end;



procedure TModuloHospedaje.ModificarCama(aNuevaCama: TCama);
begin
  //
end;



procedure TModuloHospedaje.EliminarCamasLibresPorID_Habitacion(aID_Habitacion: Integer);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleAdminCapacidades.ADOStoredProcEliminarCamasLibresPorID_Habitacion.Active:= False;

  //*** Le pasamos los parámetros al StoredProc ***
  DataModuleAdminCapacidades.ADOStoredProcEliminarCamasLibresPorID_Habitacion.Parameters.ParamByName('@vID_Habitacion').Value:= aID_Habitacion;


  //Aquí se hace la inserción en la BD
  //DataModule1.ADOStoredProcEliminarCamasPorID_Habitacion.Open;  <- No genera datos de respuesta el StoredProc, por eso se omite esto.
  DataModuleAdminCapacidades.ADOStoredProcEliminarCamasLibresPorID_Habitacion.ExecProc;
end;



function TModuloHospedaje.ExisteLaHabitacionConNumero(NumeroHabitacion: Integer): Boolean;
begin
  //Primero busco la habitacion por el número especificado
  BuscarHabitacionPorNumero(NumeroHabitacion);

  //Luego verifico si la encontró
  if (DataModuleAdminCapacidades.DataSourceSelecHabitacionPorNumero.DataSet.RecordCount <> 0)
    then
      begin
        Result:= True
      end
        else
          begin
            Result:= False;
          end;
end;



procedure TModuloHospedaje.MostrarHabitacionesPorPiso(aPiso: String);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso.Active:= False;

  //*** Le pasamos los parámetros al StoredProc ***
  DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso.Parameters.ParamByName('@vPiso').Value:= aPiso;

  //Aquí se hace la búsqueda en la BD
  DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso.Open; //<- Sí genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPiso.ExecProc;
end;



function TModuloHospedaje.CantidadDeHabitacionesPorPiso: Integer;
begin
  //Cuento la cantidad de habitaciones que existen
  if (DataModuleAdminCapacidades.DataSourceSelecHabitacionesPorPiso.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleAdminCapacidades.DataSourceSelecHabitacionesPorPiso.DataSet.RecordCount
        else
          Result:= 0;
end;



procedure TModuloHospedaje.CopiarCamasPorID_Habitacion(aID_Habitacion: Integer);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleAdminCapacidades.ADOStoredProcCopiarCamasPorID_Habitacion.Active:= False;

  //*** Le pasamos los parámetros al StoredProc ***
  DataModuleAdminCapacidades.ADOStoredProcCopiarCamasPorID_Habitacion.Parameters.ParamByName('@vID_Habitacion').Value:= aID_Habitacion;

  //Aquí se hace el traslado de datos (copiado), en la BD
  //DataModuleAdminCapacidades.ADOStoredProcCopiarCamasPorID_Habitacion.Open; //<- NO genera datos de respuesta el StoredProc, por eso no se muestra esto.
  DataModuleAdminCapacidades.ADOStoredProcCopiarCamasPorID_Habitacion.ExecProc;
end;



procedure TModuloHospedaje.EliminarCamasTemporalesPorID_Habitacion(aID_Habitacion: Integer);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleAdminCapacidades.ADOStoredProcEliminarCamasTemporalesPorID_Habitacion.Active:= False;

  //*** Le pasamos los parámetros al StoredProc ***
  DataModuleAdminCapacidades.ADOStoredProcEliminarCamasTemporalesPorID_Habitacion.Parameters.ParamByName('@vID_Habitacion').Value:= aID_Habitacion;

  //Aquí se hace la eliminacion de datos, en la BD
  //DataModuleAdminCapacidades.ADOStoredProcEliminarCamasTemporalesPorID_Habitacion.Open; //<- NO genera datos de respuesta el StoredProc, por eso no se muestra esto.
  DataModuleAdminCapacidades.ADOStoredProcEliminarCamasTemporalesPorID_Habitacion.ExecProc;
end;



procedure TModuloHospedaje.EliminarCamaTemporalPorID_Cama(aID_Cama: Integer);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleAdminCapacidades.ADOStoredProcEliminarCamaTemporalPorID_Cama.Active:= False;

  //*** Le pasamos los parámetros al StoredProc ***
  DataModuleAdminCapacidades.ADOStoredProcEliminarCamaTemporalPorID_Cama.Parameters.ParamByName('@vID_Cama').Value:= aID_Cama;

  //Aquí se hace la eliminacion de datos, en la BD
  //DataModuleAdminCapacidades.ADOStoredProcEliminarCamaTemporalPorID_Cama.Open; //<- NO genera datos de respuesta el StoredProc, por eso no se muestra esto.
  DataModuleAdminCapacidades.ADOStoredProcEliminarCamaTemporalPorID_Cama.ExecProc;
end;



procedure TModuloHospedaje.MostrarCamasPorID_Habitacion(aID_Habitacion: Integer);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleAdminCapacidades.ADOStoredProcSelecCamasPorID_Habitacion.Active:= False;

  //*** Le pasamos los parámetros al StoredProc ***
  DataModuleAdminCapacidades.ADOStoredProcSelecCamasPorID_Habitacion.Parameters.ParamByName('@vID_Habitacion').Value:= aID_Habitacion;

  //Aquí se hace la busqueda de datos, en la BD
  DataModuleAdminCapacidades.ADOStoredProcSelecCamasPorID_Habitacion.Open; //<- SÍ genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleAdminCapacidades.ADOStoredProcSelecCamasPorID_Habitacion.ExecProc;
end;



procedure TModuloHospedaje.MostrarCamasTemporalesPorID_Habitacion(aID_Habitacion: Integer);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleAdminCapacidades.ADOStoredProcSelecCamasTemporalesPorID_Habitacion.Active:= False;

  //*** Le pasamos los parámetros al StoredProc ***
  DataModuleAdminCapacidades.ADOStoredProcSelecCamasTemporalesPorID_Habitacion.Parameters.ParamByName('@vID_Habitacion').Value:= aID_Habitacion;

  //Aquí se hace la busqueda de datos, en la BD
  DataModuleAdminCapacidades.ADOStoredProcSelecCamasTemporalesPorID_Habitacion.Open; //<- SÍ genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleAdminCapacidades.ADOStoredProcSelecCamasTemporalesPorID_Habitacion.ExecProc;
end;



function TModuloHospedaje.CantidadDeCamasTemporales: Integer;
begin
  //Cuento la cantidad de camas temporales que existen
  if (DataModuleAdminCapacidades.DataSourceSelecCamasTemporalesPorID_Habitacion.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleAdminCapacidades.DataSourceSelecCamasTemporalesPorID_Habitacion.DataSet.RecordCount
        else
          Result:= 0;
end;



function TModuloHospedaje.CantidadDeCamas: Integer;
begin
  //Cuento la cantidad de camas que existen
  if (DataModuleAdminCapacidades.DataSourceSelecCamasPorID_Habitacion.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleAdminCapacidades.DataSourceSelecCamasPorID_Habitacion.DataSet.RecordCount
        else
          Result:= 0;
end;



procedure TModuloHospedaje.InsertarCamaTemporal(aCama: TCama);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleAdminCapacidades.ADOStoredProcInsertarCamaTemporal.Active:= False;

  //*** Le pasamos los parámetros al StoredProc ***
  DataModuleAdminCapacidades.ADOStoredProcInsertarCamaTemporal.Parameters.ParamByName('@vID_Habitacion').Value:= aCama.ID_Habitacion;
  DataModuleAdminCapacidades.ADOStoredProcInsertarCamaTemporal.Parameters.ParamByName('@vTipoCama').Value:= aCama.TipoCama;
  DataModuleAdminCapacidades.ADOStoredProcInsertarCamaTemporal.Parameters.ParamByName('@vNumeroSerie').Value:= aCama.NumeroSerie;
  DataModuleAdminCapacidades.ADOStoredProcInsertarCamaTemporal.Parameters.ParamByName('@vEstadoOcupacional').Value:= aCama.EstadoOcupacional;


  //Aquí se hace la inserción en la BD
  //DataModule1.ADOStoredProcInsertarCamaTemporal.Open;  <- No genera datos de respuesta el StoredProc, por eso se omite esto.
  DataModuleAdminCapacidades.ADOStoredProcInsertarCamaTemporal.ExecProc;
end;



function TModuloHospedaje.ExisteCamaTemporalConNumeroSerie(aNumeroSerie: AnsiString): Boolean;
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleAdminCapacidades.ADOStoredProcSelecCamaTemporalPorNumeroSerie.Active:= False;

  //*** Le pasamos los parámetros al StoredProc ***
  DataModuleAdminCapacidades.ADOStoredProcSelecCamaTemporalPorNumeroSerie.Parameters.ParamByName('@vNumeroSerie').Value:= aNumeroSerie;

  //Aquí se hace la busqueda de datos, en la BD
  DataModuleAdminCapacidades.ADOStoredProcSelecCamaTemporalPorNumeroSerie.Open; //<- SÍ genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleAdminCapacidades.ADOStoredProcSelecCamaTemporalPorNumeroSerie.ExecProc;

  //Veo si existe la cama con ese numero de serie (si se encontró)
  if (DataModuleAdminCapacidades.DataSourceSelecCamaTemporalPorNumeroSerie.DataSet.RecordCount <> 0)
    then
      Result:= True
        else
          Result:= False;
end;



procedure TModuloHospedaje.RellenarCamasLibresDesdeTemporales;
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleAdminCapacidades.ADOStoredProcRellenarCamasLibresDesdeTemporales.Active:= False;

  //*** No hay que pasarle parámetros al StoredProc ***

  //Aquí se hace el traspaso de datos (relleno), en la BD
  //DataModule1.ADOStoredProcRellenarCamasLibresDesdeTemporales.Open;  <- No genera datos de respuesta el StoredProc, por eso se omite esto.
  DataModuleAdminCapacidades.ADOStoredProcRellenarCamasLibresDesdeTemporales.ExecProc;
end;



procedure TModuloHospedaje.EliminarTodasLasCamasTemporales;
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleAdminCapacidades.ADOStoredProcEliminarTodasLasCamasTemporales.Active:= False;

  //*** No hay que pasarle parámetros al StoredProc ***

  //Aquí se hace el traspaso de datos (relleno), en la BD
  //DataModule1.ADOStoredProcEliminarTodasLasCamasTemporales.Open;  <- No genera datos de respuesta el StoredProc, por eso se omite esto.
  DataModuleAdminCapacidades.ADOStoredProcEliminarTodasLasCamasTemporales.ExecProc;
end;



procedure TModuloHospedaje.MostrarHabitacionesConVacantes;
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes.Active:= False;

  //*** No hay que pasarle parámetros al StoredProc ***

  //Aquí se hace la búsqueda en la BD
  DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes.Open; //<- Sí genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesConVacantes.ExecProc;
end;



procedure TModuloHospedaje.MostrarHabitacionesPorPisoYConVacantes(aPiso: String);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes.Active:= False;

  //*** Le pasamos los parámetros al StoredProc ***
  DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes.Parameters.ParamByName('@vPiso').Value:= aPiso;

  //Aquí se hace la búsqueda en la BD
  DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes.Open; //<- Sí genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYConVacantes.ExecProc;
end;



procedure TModuloHospedaje.MostrarHabitacionesPorPisoYSinVacantes(aPiso: String);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes.Active:= False;

  //*** Le pasamos los parámetros al StoredProc ***
  DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes.Parameters.ParamByName('@vPiso').Value:= aPiso;

  //Aquí se hace la búsqueda en la BD
  DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes.Open; //<- Sí genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesPorPisoYSinVacantes.ExecProc;
end;



procedure TModuloHospedaje.MostrarHabitacionesSinVacantes;
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes.Active:= False;

  //*** No hay que pasarle parámetros al StoredProc ***

  //Aquí se hace la búsqueda en la BD
  DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes.Open; //<- Sí genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleAdminCapacidades.ADOStoredProcSelecHabitacionesSinVacantes.ExecProc;
end;



function TModuloHospedaje.CantidadDeHabitacionesPorPisoYConVacantes: Integer;
begin
  //Cuento la cantidad de habitaciones por piso y con vacantes que existen
  if (DataModuleAdminCapacidades.DataSourceSelecHabitacionesPorPisoYConVacantes.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleAdminCapacidades.DataSourceSelecHabitacionesPorPisoYConVacantes.DataSet.RecordCount
        else
          Result:= 0;
end;



function TModuloHospedaje.CantidadDeHabitacionesPorPisoYSinVacantes: Integer;
begin
  //Cuento la cantidad de habitaciones por piso y sin vacantes que existen
  if (DataModuleAdminCapacidades.DataSourceSelecHabitacionesPorPisoYSinVacantes.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleAdminCapacidades.DataSourceSelecHabitacionesPorPisoYSinVacantes.DataSet.RecordCount
        else
          Result:= 0;
end;



function TModuloHospedaje.CantidadDeHabitacionesTotalesYConVacantes: Integer;
begin
  //Cuento la cantidad de habitaciones con vacantes que existen
  if (DataModuleAdminCapacidades.DataSourceSelecHabitacionesConVacantes.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleAdminCapacidades.DataSourceSelecHabitacionesConVacantes.DataSet.RecordCount
        else
          Result:= 0;
end;



function TModuloHospedaje.CantidadDeHabitacionesTotalesYSinVacantes: Integer;
begin
  //Cuento la cantidad de habitaciones sin vacantes que existen
  if (DataModuleAdminCapacidades.DataSourceSelecHabitacionesSinVacantes.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleAdminCapacidades.DataSourceSelecHabitacionesSinVacantes.DataSet.RecordCount
        else
          Result:= 0;
end;



procedure TModuloHospedaje.MostrarProvinciasCubanas;
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleRegistroDeHuespedes.ADOStoredProcMostrarProvinciasCubanas.Active:= False;

  //*** No hay que pasarle parámetros al StoredProc ***

  //Aquí se hace la búsqueda en la BD
  DataModuleRegistroDeHuespedes.ADOStoredProcMostrarProvinciasCubanas.Open; //<- Sí genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleRegistroDeHuespedes.ADOStoredProcMostrarProvinciasCubanas.ExecProc;
end;




procedure TModuloHospedaje.MostrarMunicipiosPorID_Provincia(aID_Provincia: Integer);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleRegistroDeHuespedes.ADOStoredProcMostrarMunicipiosPorID_Provincia.Active:= False;

  //Le pasamos el parámetro al StoredProc
  DataModuleRegistroDeHuespedes.ADOStoredProcMostrarMunicipiosPorID_Provincia.Parameters.ParamByName('@vID_Provincia').Value:= aID_Provincia;

  //Aquí se ejecuta el StoredProc en la BD
  DataModuleRegistroDeHuespedes.ADOStoredProcMostrarMunicipiosPorID_Provincia.Open; //Genera datos de respuesta, por eso se pone
  DataModuleRegistroDeHuespedes.ADOStoredProcMostrarMunicipiosPorID_Provincia.ExecProc;
end;



procedure TModuloHospedaje.InsertarHuesped(aHuesped: THuesped);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleRegistroDeHuespedes.ADOStoredProcInsertarHuesped.Active:= False;

  //Le pasamos los parámetros al StoredProc
  DataModuleRegistroDeHuespedes.ADOStoredProcInsertarHuesped.Parameters.ParamByName('@vNombre').Value:= aHuesped.Nombre;
  DataModuleRegistroDeHuespedes.ADOStoredProcInsertarHuesped.Parameters.ParamByName('@vCarneIdentidad').Value:= aHuesped.CarneIdentidad;
  DataModuleRegistroDeHuespedes.ADOStoredProcInsertarHuesped.Parameters.ParamByName('@vApellidos').Value:= aHuesped.Apellidos;
  DataModuleRegistroDeHuespedes.ADOStoredProcInsertarHuesped.Parameters.ParamByName('@vTelefonoParticular').Value:= aHuesped.TelefonoParticular;
  DataModuleRegistroDeHuespedes.ADOStoredProcInsertarHuesped.Parameters.ParamByName('@vPais').Value:= aHuesped.Pais;
  DataModuleRegistroDeHuespedes.ADOStoredProcInsertarHuesped.Parameters.ParamByName('@vEmailHuesped').Value:= aHuesped.EmailHuesped;
  DataModuleRegistroDeHuespedes.ADOStoredProcInsertarHuesped.Parameters.ParamByName('@vProvinciaHuesped').Value:= aHuesped.ProvinciaHuesped;
  DataModuleRegistroDeHuespedes.ADOStoredProcInsertarHuesped.Parameters.ParamByName('@vMunicipioHuesped').Value:= aHuesped.MunicipioHuesped;
  DataModuleRegistroDeHuespedes.ADOStoredProcInsertarHuesped.Parameters.ParamByName('@vDireccionParticular').Value:= aHuesped.DireccionParticular;
  DataModuleRegistroDeHuespedes.ADOStoredProcInsertarHuesped.Parameters.ParamByName('@vNombreCentroLaboral').Value:= aHuesped.NombreCentroLaboral;
  DataModuleRegistroDeHuespedes.ADOStoredProcInsertarHuesped.Parameters.ParamByName('@vEmailCentroLaboral').Value:= aHuesped.EmailCentroLaboral;
  DataModuleRegistroDeHuespedes.ADOStoredProcInsertarHuesped.Parameters.ParamByName('@vTelefonoCentroLaboral').Value:= aHuesped.TelefonoCentroLaboral;
  DataModuleRegistroDeHuespedes.ADOStoredProcInsertarHuesped.Parameters.ParamByName('@vProvinciaCentroLaboral').Value:= aHuesped.ProvinciaCentroLaboral;
  DataModuleRegistroDeHuespedes.ADOStoredProcInsertarHuesped.Parameters.ParamByName('@vMunicipioCentroLaboral').Value:= aHuesped.MunicipioCentroLaboral;
  DataModuleRegistroDeHuespedes.ADOStoredProcInsertarHuesped.Parameters.ParamByName('@vDireccionCentroLaboral').Value:= aHuesped.DireccionCentroLaboral;
  DataModuleRegistroDeHuespedes.ADOStoredProcInsertarHuesped.Parameters.ParamByName('@vMotivoHospedaje').Value:= aHuesped.MotivoHospedaje;
  DataModuleRegistroDeHuespedes.ADOStoredProcInsertarHuesped.Parameters.ParamByName('@vModalidad').Value:= aHuesped.Modalidad;
  DataModuleRegistroDeHuespedes.ADOStoredProcInsertarHuesped.Parameters.ParamByName('@vFechaInicioActividad').Value:= aHuesped.FechaInicioActividad;
  DataModuleRegistroDeHuespedes.ADOStoredProcInsertarHuesped.Parameters.ParamByName('@vFechaFinalActividad').Value:= aHuesped.FechaFinalActividad;
  DataModuleRegistroDeHuespedes.ADOStoredProcInsertarHuesped.Parameters.ParamByName('@vTituloActividad').Value:= aHuesped.TituloActividad;
  DataModuleRegistroDeHuespedes.ADOStoredProcInsertarHuesped.Parameters.ParamByName('@vNombreInstitucionActividad').Value:= aHuesped.NombreInstitucionActividad;
  DataModuleRegistroDeHuespedes.ADOStoredProcInsertarHuesped.Parameters.ParamByName('@vEmailActividad').Value:= aHuesped.EmailActividad;
  DataModuleRegistroDeHuespedes.ADOStoredProcInsertarHuesped.Parameters.ParamByName('@vTelefonoActividad').Value:= aHuesped.TelefonoActividad;
  DataModuleRegistroDeHuespedes.ADOStoredProcInsertarHuesped.Parameters.ParamByName('@vNombreCoordinadorActividad').Value:= aHuesped.NombreCoordinadorActividad;
  DataModuleRegistroDeHuespedes.ADOStoredProcInsertarHuesped.Parameters.ParamByName('@vDireccionActividad').Value:= aHuesped.DireccionActividad;
  DataModuleRegistroDeHuespedes.ADOStoredProcInsertarHuesped.Parameters.ParamByName('@vID_Cama').Value:= aHuesped.ID_Cama;
  DataModuleRegistroDeHuespedes.ADOStoredProcInsertarHuesped.Parameters.ParamByName('@vFechaInicioHospedaje').Value:= aHuesped.FechaInicioHospedaje;
  DataModuleRegistroDeHuespedes.ADOStoredProcInsertarHuesped.Parameters.ParamByName('@vFechaFinalHospedaje').Value:= aHuesped.FechaFinalHospedaje;
  //DataModuleRegistroDeHuespedes.ADOStoredProcInsertarHuesped.Parameters.ParamByName('@vHoraInicioHospedaje').Value:= aHuesped.HoraInicioHospedaje;
  //DataModuleRegistroDeHuespedes.ADOStoredProcInsertarHuesped.Parameters.ParamByName('@vHoraFinalHospedaje').Value:= aHuesped.HoraFinalHospedaje;
  DataModuleRegistroDeHuespedes.ADOStoredProcInsertarHuesped.Parameters.ParamByName('@vDerechoADesayuno').Value:= aHuesped.DerechoADesayuno;
  DataModuleRegistroDeHuespedes.ADOStoredProcInsertarHuesped.Parameters.ParamByName('@vDerechoAAlmuerzo').Value:= aHuesped.DerechoAAlmuerzo;
  DataModuleRegistroDeHuespedes.ADOStoredProcInsertarHuesped.Parameters.ParamByName('@vDerechoAComida').Value:= aHuesped.DerechoAComida;
  DataModuleRegistroDeHuespedes.ADOStoredProcInsertarHuesped.Parameters.ParamByName('@vLugarConsumo').Value:= aHuesped.LugarConsumo;
  DataModuleRegistroDeHuespedes.ADOStoredProcInsertarHuesped.Parameters.ParamByName('@vNombreCompletoDeRegistrador').Value:= aHuesped.NombreCompletoDeRegistrador;
  DataModuleRegistroDeHuespedes.ADOStoredProcInsertarHuesped.Parameters.ParamByName('@vIncidencias').Value:= aHuesped.Incidencias;

  //Aquí se ejecuta el StoredProc en la BD
  //DataModuleRegistroDeHuespedes.ADOStoredProcInsertarHuesped.Open; //No genera datos de respuesta, por eso se esconde
  DataModuleRegistroDeHuespedes.ADOStoredProcInsertarHuesped.ExecProc;
end;



procedure TModuloHospedaje.LiberarCamaPorID_Cama(aID_Cama: Integer);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleRegistroDeHuespedes.ADOStoredProcLiberarCamaPorID_Cama.Active:= False;

  //Le pasamos el parámetro al StoredProc
  DataModuleRegistroDeHuespedes.ADOStoredProcLiberarCamaPorID_Cama.Parameters.ParamByName('@vID_Cama').Value:= aID_Cama;

  //Aquí se ejecuta el StoredProc en la BD
  //DataModuleRegistroDeHuespedes.ADOStoredProcLiberarCamaPorID_Cama.Open; //No genera datos de respuesta, por eso se oculta
  DataModuleRegistroDeHuespedes.ADOStoredProcLiberarCamaPorID_Cama.ExecProc;
end;



procedure TModuloHospedaje.OcuparCamaPorID_Cama(aID_Cama: Integer);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleRegistroDeHuespedes.ADOStoredProcOcuparCamaPorID_Cama.Active:= False;

  //Le pasamos el parámetro al StoredProc
  DataModuleRegistroDeHuespedes.ADOStoredProcOcuparCamaPorID_Cama.Parameters.ParamByName('@vID_Cama').Value:= aID_Cama;

  //Aquí se ejecuta el StoredProc en la BD
  //DataModuleRegistroDeHuespedes.ADOStoredProcOcuparCamaPorID_Cama.Open; //No genera datos de respuesta, por eso se oculta
  DataModuleRegistroDeHuespedes.ADOStoredProcOcuparCamaPorID_Cama.ExecProc;
end;



procedure TModuloHospedaje.EliminarHuespedPorID_Huesped(aID_Huesped: Integer);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleRegistroDeHuespedes.ADOStoredProcEliminarHuespedPorID_Huesped.Active:= False;

  //Le pasamos el parámetro al StoredProc
  DataModuleRegistroDeHuespedes.ADOStoredProcEliminarHuespedPorID_Huesped.Parameters.ParamByName('@vID_Huesped').Value:= aID_Huesped;

  //Aquí se ejecuta el StoredProc en la BD
  //DataModuleRegistroDeHuespedes.ADOStoredProcEliminarHuespedPorID_Huesped.Open; //No genera datos de respuesta, por eso se oculta
  DataModuleRegistroDeHuespedes.ADOStoredProcEliminarHuespedPorID_Huesped.ExecProc;
end;



procedure TModuloHospedaje.ModificarHuesped(aNuevoHuesped: THuesped);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleRegistroDeHuespedes.spModificarHuespedPorID_Huesped.Active:= False;

  //ShowMessage('El ID_Huesped es ' + IntToStr(aNuevoHuesped.ID_Huesped));
  
  //Le pasamos el parámetro al StoredProc
  DataModuleRegistroDeHuespedes.spModificarHuespedPorID_Huesped.Parameters.ParamByName('@vViejoID_Huesped').Value:= aNuevoHuesped.ID_Huesped;

  //Datos Personales
  DataModuleRegistroDeHuespedes.spModificarHuespedPorID_Huesped.Parameters.ParamByName('@vNuevoNombre').Value:= aNuevoHuesped.Nombre;
  DataModuleRegistroDeHuespedes.spModificarHuespedPorID_Huesped.Parameters.ParamByName('@vNuevoCarneIdentidad').Value:= aNuevoHuesped.CarneIdentidad;
  DataModuleRegistroDeHuespedes.spModificarHuespedPorID_Huesped.Parameters.ParamByName('@vNuevoApellidos').Value:= aNuevoHuesped.Apellidos;
  DataModuleRegistroDeHuespedes.spModificarHuespedPorID_Huesped.Parameters.ParamByName('@vNuevoTelefonoParticular').Value:= aNuevoHuesped.TelefonoParticular;
  DataModuleRegistroDeHuespedes.spModificarHuespedPorID_Huesped.Parameters.ParamByName('@vNuevoPais').Value:= aNuevoHuesped.Pais;
  DataModuleRegistroDeHuespedes.spModificarHuespedPorID_Huesped.Parameters.ParamByName('@vNuevoEmailHuesped').Value:= aNuevoHuesped.EmailHuesped;
  DataModuleRegistroDeHuespedes.spModificarHuespedPorID_Huesped.Parameters.ParamByName('@vNuevoProvinciaHuesped').Value:= aNuevoHuesped.ProvinciaHuesped;
  DataModuleRegistroDeHuespedes.spModificarHuespedPorID_Huesped.Parameters.ParamByName('@vNuevoMunicipioHuesped').Value:= aNuevoHuesped.MunicipioHuesped;
  DataModuleRegistroDeHuespedes.spModificarHuespedPorID_Huesped.Parameters.ParamByName('@vNuevoDireccionParticular').Value:= aNuevoHuesped.DireccionParticular;

  //Datos Laborales
  DataModuleRegistroDeHuespedes.spModificarHuespedPorID_Huesped.Parameters.ParamByName('@vNuevoNombreCentroLaboral').Value:= aNuevoHuesped.NombreCentroLaboral;
  DataModuleRegistroDeHuespedes.spModificarHuespedPorID_Huesped.Parameters.ParamByName('@vNuevoEmailCentroLaboral').Value:= aNuevoHuesped.EmailCentroLaboral;
  DataModuleRegistroDeHuespedes.spModificarHuespedPorID_Huesped.Parameters.ParamByName('@vNuevoTelefonoCentroLaboral').Value:= aNuevoHuesped.TelefonoCentroLaboral;
  DataModuleRegistroDeHuespedes.spModificarHuespedPorID_Huesped.Parameters.ParamByName('@vNuevoProvinciaCentroLaboral').Value:= aNuevoHuesped.ProvinciaCentroLaboral;
  DataModuleRegistroDeHuespedes.spModificarHuespedPorID_Huesped.Parameters.ParamByName('@vNuevoMunicipioCentroLaboral').Value:= aNuevoHuesped.MunicipioCentroLaboral;
  DataModuleRegistroDeHuespedes.spModificarHuespedPorID_Huesped.Parameters.ParamByName('@vNuevoDireccionCentroLaboral').Value:= aNuevoHuesped.DireccionCentroLaboral;

  //Actividades
  DataModuleRegistroDeHuespedes.spModificarHuespedPorID_Huesped.Parameters.ParamByName('@vNuevoMotivoHospedaje').Value:= aNuevoHuesped.MotivoHospedaje;
  DataModuleRegistroDeHuespedes.spModificarHuespedPorID_Huesped.Parameters.ParamByName('@vNuevoModalidad').Value:= aNuevoHuesped.Modalidad;
  DataModuleRegistroDeHuespedes.spModificarHuespedPorID_Huesped.Parameters.ParamByName('@vNuevoFechaInicioActividad').Value:= aNuevoHuesped.FechaInicioActividad;
  DataModuleRegistroDeHuespedes.spModificarHuespedPorID_Huesped.Parameters.ParamByName('@vNuevoFechaFinalActividad').Value:= aNuevoHuesped.FechaFinalActividad;
  DataModuleRegistroDeHuespedes.spModificarHuespedPorID_Huesped.Parameters.ParamByName('@vNuevoTituloActividad').Value:= aNuevoHuesped.TituloActividad;
  DataModuleRegistroDeHuespedes.spModificarHuespedPorID_Huesped.Parameters.ParamByName('@vNuevoNombreInstitucionActividad').Value:= aNuevoHuesped.NombreInstitucionActividad;
  DataModuleRegistroDeHuespedes.spModificarHuespedPorID_Huesped.Parameters.ParamByName('@vNuevoEmailActividad').Value:= aNuevoHuesped.EmailActividad;
  DataModuleRegistroDeHuespedes.spModificarHuespedPorID_Huesped.Parameters.ParamByName('@vNuevoTelefonoActividad').Value:= aNuevoHuesped.TelefonoActividad;
  DataModuleRegistroDeHuespedes.spModificarHuespedPorID_Huesped.Parameters.ParamByName('@vNuevoNombreCoordinadorActividad').Value:= aNuevoHuesped.NombreCoordinadorActividad;
  DataModuleRegistroDeHuespedes.spModificarHuespedPorID_Huesped.Parameters.ParamByName('@vNuevoDireccionActividad').Value:= aNuevoHuesped.DireccionActividad;

  //Consumo
  DataModuleRegistroDeHuespedes.spModificarHuespedPorID_Huesped.Parameters.ParamByName('@vNuevoDerechoADesayuno').Value:= aNuevoHuesped.DerechoADesayuno;
  DataModuleRegistroDeHuespedes.spModificarHuespedPorID_Huesped.Parameters.ParamByName('@vNuevoDerechoAAlmuerzo').Value:= aNuevoHuesped.DerechoAAlmuerzo;
  DataModuleRegistroDeHuespedes.spModificarHuespedPorID_Huesped.Parameters.ParamByName('@vNuevoDerechoAComida').Value:= aNuevoHuesped.DerechoAComida;
  DataModuleRegistroDeHuespedes.spModificarHuespedPorID_Huesped.Parameters.ParamByName('@vNuevoLugarConsumo').Value:= aNuevoHuesped.LugarConsumo;

  //Hospedaje
  DataModuleRegistroDeHuespedes.spModificarHuespedPorID_Huesped.Parameters.ParamByName('@vNuevoFechaFinalHospedaje').Value:= aNuevoHuesped.FechaFinalHospedaje;
  DataModuleRegistroDeHuespedes.spModificarHuespedPorID_Huesped.Parameters.ParamByName('@vIncidencias').Value:= aNuevoHuesped.Incidencias;  
  //DataModuleRegistroDeHuespedes.spModificarHuespedPorID_Huesped.Parameters.ParamByName('@vNuevoHoraFinalHospedaje').Value:= aNuevoHuesped.HoraFinalHospedaje;

  //Aquí se hace la modificacion en la BD
  //DataModuleRegistroDeHuespedes.spModificarHuespedPorID_Huesped.Open; //<- No genera datos de respuesta el StoredProc, por eso se oculta esto.
  DataModuleRegistroDeHuespedes.spModificarHuespedPorID_Huesped.ExecProc;
end;



procedure TModuloHospedaje.MostrarHuespedesTotales;
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleRegistroDeHuespedes.ADOStoredProcMostrarHuespedesTotales.Active:= False;

  //*** No hay que pasarle parámetros al StoredProc ***

  //Aquí se hace la búsqueda en la BD
  DataModuleRegistroDeHuespedes.ADOStoredProcMostrarHuespedesTotales.Open; //<- Sí genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleRegistroDeHuespedes.ADOStoredProcMostrarHuespedesTotales.ExecProc;
end;



procedure TModuloHospedaje.MostrarHabitacionesConVacantesTotalesParaRegistro;
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleRegistroDeHuespedes.ADOStoredProcSelecHabitacionesConVacantesTotalesParaRegistro.Active:= False;

  //*** No hay que pasarle parámetros al StoredProc ***

  //Aquí se hace la búsqueda en la BD
  DataModuleRegistroDeHuespedes.ADOStoredProcSelecHabitacionesConVacantesTotalesParaRegistro.Open; //<- Sí genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleRegistroDeHuespedes.ADOStoredProcSelecHabitacionesConVacantesTotalesParaRegistro.ExecProc;
end;



procedure TModuloHospedaje.MostrarLechosLibresPorID_HabitacionParaRegistro(aID_Habitacion: Integer);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleRegistroDeHuespedes.spSelecLechosLibresPorID_HabitacionParaRegistro.Active:= False;

  //*** Le pasamos los parámetros al StoredProc ***
  DataModuleRegistroDeHuespedes.spSelecLechosLibresPorID_HabitacionParaRegistro.Parameters.ParamByName('@vID_Habitacion').Value:= aID_Habitacion;

  //Aquí se hace la busqueda de datos, en la BD
  DataModuleRegistroDeHuespedes.spSelecLechosLibresPorID_HabitacionParaRegistro.Open; //<- SÍ genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleRegistroDeHuespedes.spSelecLechosLibresPorID_HabitacionParaRegistro.ExecProc;
end;



procedure TModuloHospedaje.MostrarHuespedesPorMotivo(aMotivo: AnsiString);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivo.Active:= False;

  //*** Se le pasa el parámetro al StoredProc ***
  DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivo.Parameters.ParamByName('@vMotivoHospedaje').Value:= aMotivo;

  //Aquí se hace la búsqueda en la BD
  DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivo.Open; //<- Sí genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivo.ExecProc;
end;



procedure TModuloHospedaje.MostrarHuespedesPorMotivoYPorPiso(aMotivo: AnsiString; aPiso: AnsiString);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivoYPorPiso.Active:= False;

  //*** Se le pasa el parámetro al StoredProc ***
  DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivoYPorPiso.Parameters.ParamByName('@vPiso').Value:= aPiso;
  DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivoYPorPiso.Parameters.ParamByName('@vMotivoHospedaje').Value:= aMotivo;

  //Aquí se hace la búsqueda en la BD
  DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivoYPorPiso.Open; //<- Sí genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleRegistroDeHuespedes.spSelecHuespedesPorMotivoYPorPiso.ExecProc;
end;



procedure TModuloHospedaje.MostrarHuespedesPorPiso(aPiso: AnsiString);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleRegistroDeHuespedes.spSelecHuespedesPorPiso.Active:= False;

  //*** Se le pasa el parámetro al StoredProc ***
  DataModuleRegistroDeHuespedes.spSelecHuespedesPorPiso.Parameters.ParamByName('@vPiso').Value:= aPiso;

  //Aquí se hace la búsqueda en la BD
  DataModuleRegistroDeHuespedes.spSelecHuespedesPorPiso.Open; //<- Sí genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleRegistroDeHuespedes.spSelecHuespedesPorPiso.ExecProc;
end;



function TModuloHospedaje.CantidadDeHuespedesPorMotivo: Integer;
begin
  //Cuento la cantidad de huespedes que existen por un motivo en especifico
  if (DataModuleRegistroDeHuespedes.dsSelecHuespedesPorMotivo.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleRegistroDeHuespedes.dsSelecHuespedesPorMotivo.DataSet.RecordCount
        else
          Result:= 0;
end;



function TModuloHospedaje.CantidadDeHuespedesPorMotivoYPorPiso: Integer;
begin
  //Cuento la cantidad de huespedes que existen por un motivo y en un piso en especifico
  if (DataModuleRegistroDeHuespedes.dsSelecHuespedesPorMotivoYPorPiso.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleRegistroDeHuespedes.dsSelecHuespedesPorMotivoYPorPiso.DataSet.RecordCount
        else
          Result:= 0;
end;



function TModuloHospedaje.CantidadDeHuespedesPorPiso: Integer;
begin
  //Cuento la cantidad de huespedes que existen en un piso en especifico
  if (DataModuleRegistroDeHuespedes.dsSelecHuespedesPorPiso.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleRegistroDeHuespedes.dsSelecHuespedesPorPiso.DataSet.RecordCount
        else
          Result:= 0;
end;



function TModuloHospedaje.CantidadDeHuespedesTotales: Integer;
begin
  //Cuento la cantidad de huespedes totales que existen
  if (DataModuleRegistroDeHuespedes.DataSourceMostrarHuespedesTotales.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleRegistroDeHuespedes.DataSourceMostrarHuespedesTotales.DataSet.RecordCount
        else
          Result:= 0;
end;



procedure TModuloHospedaje.MostrarMunicipiosParaDatosLaboralesPorID_Provincia(aID_Provincia: Integer);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleRegistroDeHuespedes.spMostrarMunicipiosParaDatosLaboralesPorID_Provincia.Active:= False;

  //Le pasamos el parámetro al StoredProc
  DataModuleRegistroDeHuespedes.spMostrarMunicipiosParaDatosLaboralesPorID_Provincia.Parameters.ParamByName('@vID_Provincia').Value:= aID_Provincia;

  //Aquí se ejecuta el StoredProc en la BD
  DataModuleRegistroDeHuespedes.spMostrarMunicipiosParaDatosLaboralesPorID_Provincia.Open; //Genera datos de respuesta, por eso se pone
  DataModuleRegistroDeHuespedes.spMostrarMunicipiosParaDatosLaboralesPorID_Provincia.ExecProc;
end;



procedure TModuloHospedaje.MostrarProvinciasCubanasParaDatosLaborales;
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleRegistroDeHuespedes.spMostrarProvinciasCubanasParaDatosLaborales.Active:= False;

  //*** No hay que pasarle parámetros al StoredProc ***

  //Aquí se hace la búsqueda en la BD
  DataModuleRegistroDeHuespedes.spMostrarProvinciasCubanasParaDatosLaborales.Open; //<- Sí genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleRegistroDeHuespedes.spMostrarProvinciasCubanasParaDatosLaborales.ExecProc;
end;



procedure TModuloHospedaje.MostrarHabitacionesConVacantesPorPisoParaRegistro(aPiso: String);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleRegistroDeHuespedes.spSelecHabConVacantesPorPisoParaRegistro.Active:= False;

  //*** Le pasamos el parametro al StoredProc ***
DataModuleRegistroDeHuespedes.spSelecHabConVacantesPorPisoParaRegistro.Parameters.ParamByName('@vPiso').Value:= aPiso;

  //Aquí se hace la búsqueda en la BD
  DataModuleRegistroDeHuespedes.spSelecHabConVacantesPorPisoParaRegistro.Open; //<- Sí genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleRegistroDeHuespedes.spSelecHabConVacantesPorPisoParaRegistro.ExecProc;
end;



procedure TModuloHospedaje.MostrarHabitacionesConVacantesPorPisoYConCamasParaRegistro(aPiso: String);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleRegistroDeHuespedes.spSelecHabConVacantesPorPisoYConCamasParaRegistro.Active:= False;

  //*** Le pasamos el parametro al StoredProc ***
  DataModuleRegistroDeHuespedes.spSelecHabConVacantesPorPisoYConCamasParaRegistro.Parameters.ParamByName('@vPiso').Value:= aPiso;

  //Aquí se hace la búsqueda en la BD
  DataModuleRegistroDeHuespedes.spSelecHabConVacantesPorPisoYConCamasParaRegistro.Open; //<- Sí genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleRegistroDeHuespedes.spSelecHabConVacantesPorPisoYConCamasParaRegistro.ExecProc;
end;



procedure TModuloHospedaje.MostrarHabitacionesConVacantesPorPisoYConLiterasAbajoParaRegistro(aPiso: String);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleRegistroDeHuespedes.spSelecHabConVacantesPorPisoYConLiterasAbajoParaRegistro.Active:= False;

  //*** Le pasamos el parametro al StoredProc ***
  DataModuleRegistroDeHuespedes.spSelecHabConVacantesPorPisoYConLiterasAbajoParaRegistro.Parameters.ParamByName('@vPiso').Value:= aPiso;

  //Aquí se hace la búsqueda en la BD
  DataModuleRegistroDeHuespedes.spSelecHabConVacantesPorPisoYConLiterasAbajoParaRegistro.Open; //<- Sí genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleRegistroDeHuespedes.spSelecHabConVacantesPorPisoYConLiterasAbajoParaRegistro.ExecProc;
end;



procedure TModuloHospedaje.MostrarHabitacionesConVacantesPorPisoYConLiterasArribaParaRegistro(aPiso: String);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleRegistroDeHuespedes.spSelecHabConVacantesPorPisoYConLiterasArribaParaRegistro.Active:= False;

  //*** Le pasamos el parametro al StoredProc ***
  DataModuleRegistroDeHuespedes.spSelecHabConVacantesPorPisoYConLiterasArribaParaRegistro.Parameters.ParamByName('@vPiso').Value:= aPiso;

  //Aquí se hace la búsqueda en la BD
  DataModuleRegistroDeHuespedes.spSelecHabConVacantesPorPisoYConLiterasArribaParaRegistro.Open; //<- Sí genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleRegistroDeHuespedes.spSelecHabConVacantesPorPisoYConLiterasArribaParaRegistro.ExecProc;
end;



procedure TModuloHospedaje.MostrarHabitacionesConVacantesPorPisoYConLiterasParaRegistro(aPiso: String);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleRegistroDeHuespedes.spSelecHabConVacantesPorPisoYConLiterasParaRegistro.Active:= False;

  //*** Le pasamos el parametro al StoredProc ***
  DataModuleRegistroDeHuespedes.spSelecHabConVacantesPorPisoYConLiterasParaRegistro.Parameters.ParamByName('@vPiso').Value:= aPiso;

  //Aquí se hace la búsqueda en la BD
  DataModuleRegistroDeHuespedes.spSelecHabConVacantesPorPisoYConLiterasParaRegistro.Open; //<- Sí genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleRegistroDeHuespedes.spSelecHabConVacantesPorPisoYConLiterasParaRegistro.ExecProc;
end;



procedure TModuloHospedaje.MostrarHabitacionesConVacantesTotalesYConCamasParaRegistro;
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleRegistroDeHuespedes.spSelecHabConVacantesTotalesYConCamasParaRegistro.Active:= False;

  //*** No hay que pasarle parámetros al StoredProc ***

  //Aquí se hace la búsqueda en la BD
  DataModuleRegistroDeHuespedes.spSelecHabConVacantesTotalesYConCamasParaRegistro.Open; //<- Sí genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleRegistroDeHuespedes.spSelecHabConVacantesTotalesYConCamasParaRegistro.ExecProc;
end;



procedure TModuloHospedaje.MostrarHabitacionesConVacantesTotalesYConLiterasAbajoParaRegistro;
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleRegistroDeHuespedes.spSelecHabConVacantesTotalesYConLiterasAbajoParaRegistro.Active:= False;

  //*** No hay que pasarle parámetros al StoredProc ***

  //Aquí se hace la búsqueda en la BD
  DataModuleRegistroDeHuespedes.spSelecHabConVacantesTotalesYConLiterasAbajoParaRegistro.Open; //<- Sí genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleRegistroDeHuespedes.spSelecHabConVacantesTotalesYConLiterasAbajoParaRegistro.ExecProc;
end;



procedure TModuloHospedaje.MostrarHabitacionesConVacantesTotalesYConLiterasArribaParaRegistro;
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleRegistroDeHuespedes.spSelecHabConVacantesTotalesYConLiterasArribaParaRegistro.Active:= False;

  //*** No hay que pasarle parámetros al StoredProc ***

  //Aquí se hace la búsqueda en la BD
  DataModuleRegistroDeHuespedes.spSelecHabConVacantesTotalesYConLiterasArribaParaRegistro.Open; //<- Sí genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleRegistroDeHuespedes.spSelecHabConVacantesTotalesYConLiterasArribaParaRegistro.ExecProc;
end;



procedure TModuloHospedaje.MostrarHabitacionesConVacantesTotalesYConLiterasParaRegistro;
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleRegistroDeHuespedes.spSelecHabConVacantesTotalesYConLiterasParaRegistro.Active:= False;

  //*** No hay que pasarle parámetros al StoredProc ***

  //Aquí se hace la búsqueda en la BD
  DataModuleRegistroDeHuespedes.spSelecHabConVacantesTotalesYConLiterasParaRegistro.Open; //<- Sí genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleRegistroDeHuespedes.spSelecHabConVacantesTotalesYConLiterasParaRegistro.ExecProc;
end;



function TModuloHospedaje.CantidadHabitacionesConVacantesPorPisoParaRegistro: Integer;
begin
  //Cuento la cantidad de habitaciones vacantes por piso que existen
  if (DataModuleRegistroDeHuespedes.dsSelecHabConVacantesPorPisoParaRegistro.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleRegistroDeHuespedes.dsSelecHabConVacantesPorPisoParaRegistro.DataSet.RecordCount
        else
          Result:= 0;
end;



function TModuloHospedaje.CantidadHabitacionesConVacantesPorPisoYConCamasParaRegistro: Integer;
begin
  //Cuento la cantidad de habitaciones vacantes, por piso y con camas, que existen
  if (DataModuleRegistroDeHuespedes.dsSelecHabConVacantesPorPisoYConCamasParaRegistro.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleRegistroDeHuespedes.dsSelecHabConVacantesPorPisoYConCamasParaRegistro.DataSet.RecordCount
        else
          Result:= 0;
end;



function TModuloHospedaje.CantidadHabitacionesConVacantesPorPisoYConLiterasAbajoParaRegistro: Integer;
begin
  //Cuento la cantidad de habitaciones vacantes, por piso y con literas abajo, que existen
  if (DataModuleRegistroDeHuespedes.dsSelecHabConVacantesPorPisoYConLiterasAbajoParaRegistro.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleRegistroDeHuespedes.dsSelecHabConVacantesPorPisoYConLiterasAbajoParaRegistro.DataSet.RecordCount
        else
          Result:= 0;
end;



function TModuloHospedaje.CantidadHabitacionesConVacantesPorPisoYConLiterasArribaParaRegistro: Integer;
begin
  //Cuento la cantidad de habitaciones vacantes, por piso y con literas arriba, que existen
  if (DataModuleRegistroDeHuespedes.dsSelecHabConVacantesPorPisoYConLiterasArribaParaRegistro.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleRegistroDeHuespedes.dsSelecHabConVacantesPorPisoYConLiterasArribaParaRegistro.DataSet.RecordCount
        else
          Result:= 0;
end;



function TModuloHospedaje.CantidadHabitacionesConVacantesPorPisoYConLiterasParaRegistro: Integer;
begin
  //Cuento la cantidad de habitaciones vacantes, por piso y con literas, que existen
  if (DataModuleRegistroDeHuespedes.dsSelecHabConVacantesPorPisoYConLiterasParaRegistro.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleRegistroDeHuespedes.dsSelecHabConVacantesPorPisoYConLiterasParaRegistro.DataSet.RecordCount
        else
          Result:= 0;
end;



function TModuloHospedaje.CantidadHabitacionesConVacantesTotalesParaRegistro: Integer;
begin
  //Cuento la cantidad de habitaciones vacantes totales que existen
  if (DataModuleRegistroDeHuespedes.DataSourceSelecHabitacionesConVacantesTotalesParaRegistro.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleRegistroDeHuespedes.DataSourceSelecHabitacionesConVacantesTotalesParaRegistro.DataSet.RecordCount
        else
          Result:= 0;
end;



function TModuloHospedaje.CantidadHabitacionesConVacantesTotalesYConCamasParaRegistro: Integer;
begin
  //Cuento la cantidad de habitaciones vacantes totales y con camas que existen
  if (DataModuleRegistroDeHuespedes.dsSelecHabConVacantesTotalesYConCamasParaRegistro.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleRegistroDeHuespedes.dsSelecHabConVacantesTotalesYConCamasParaRegistro.DataSet.RecordCount
        else
          Result:= 0;
end;



function TModuloHospedaje.CantidadHabitacionesConVacantesTotalesYConLiterasAbajoParaRegistro: Integer;
begin
  //Cuento la cantidad de habitaciones vacantes totales y con literas abajo que existen
  if (DataModuleRegistroDeHuespedes.dsSelecHabConVacantesTotalesYConLiterasAbajoParaRegistro.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleRegistroDeHuespedes.dsSelecHabConVacantesTotalesYConLiterasAbajoParaRegistro.DataSet.RecordCount
        else
          Result:= 0;
end;



function TModuloHospedaje.CantidadHabitacionesConVacantesTotalesYConLiterasArribaParaRegistro: Integer;
begin
  //Cuento la cantidad de habitaciones vacantes totales y con literas arriba que existen
  if (DataModuleRegistroDeHuespedes.dsSelecHabConVacantesTotalesYConLiterasArribaParaRegistro.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleRegistroDeHuespedes.dsSelecHabConVacantesTotalesYConLiterasArribaParaRegistro.DataSet.RecordCount
        else
          Result:= 0;
end;



function TModuloHospedaje.CantidadHabitacionesConVacantesTotalesYConLiterasParaRegistro: Integer;
begin
  //Cuento la cantidad de habitaciones vacantes totales y con literas que existen
  if (DataModuleRegistroDeHuespedes.dsSelecHabConVacantesTotalesYConLiterasParaRegistro.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleRegistroDeHuespedes.dsSelecHabConVacantesTotalesYConLiterasParaRegistro.DataSet.RecordCount
        else
          Result:= 0;
end;



function TModuloHospedaje.CantidadCamasLibresParaRegistro: Integer;
begin
  //Cuento la cantidad de camas libres que existen
  if (DataModuleRegistroDeHuespedes.dsSelecCamasLibresPorID_HabitacionParaRegistro.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleRegistroDeHuespedes.dsSelecCamasLibresPorID_HabitacionParaRegistro.DataSet.RecordCount
        else
          Result:= 0;
end;



function TModuloHospedaje.CantidadLechosLibresParaRegistro: Integer;
begin
  //Cuento la cantidad de lechos libres que existen
  if (DataModuleRegistroDeHuespedes.dsSelecLechosLibresPorID_HabitacionParaRegistro.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleRegistroDeHuespedes.dsSelecLechosLibresPorID_HabitacionParaRegistro.DataSet.RecordCount
        else
          Result:= 0;
end;



function TModuloHospedaje.CantidadLiterasAbajoLibresParaRegistro: Integer;
begin
  //Cuento la cantidad de literas libres que existen
  if (DataModuleRegistroDeHuespedes.dsSelecLiterasAbajoLibresPorID_HabitacionParaRegistro.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleRegistroDeHuespedes.dsSelecLiterasAbajoLibresPorID_HabitacionParaRegistro.DataSet.RecordCount
        else
          Result:= 0;
end;



function TModuloHospedaje.CantidadLiterasArribaLibresParaRegistro: Integer;
begin
  //Cuento la cantidad de literas libres que existen
  if (DataModuleRegistroDeHuespedes.dsSelecLiterasArribaLibresPorID_HabitacionParaRegistro.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleRegistroDeHuespedes.dsSelecLiterasArribaLibresPorID_HabitacionParaRegistro.DataSet.RecordCount
        else
          Result:= 0;
end;



function TModuloHospedaje.CantidadLiterasLibresParaRegistro: Integer;
begin
  //Cuento la cantidad de literas libres que existen
  if (DataModuleRegistroDeHuespedes.dsSelecLiterasLibresPorID_HabitacionParaRegistro.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleRegistroDeHuespedes.dsSelecLiterasLibresPorID_HabitacionParaRegistro.DataSet.RecordCount
        else
          Result:= 0;
end;



procedure TModuloHospedaje.MostrarCamasLibresPorID_HabitacionParaRegistro(aID_Habitacion: Integer);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleRegistroDeHuespedes.spSelecCamasLibresPorID_HabitacionParaRegistro.Active:= False;

  //*** Le pasamos los parámetros al StoredProc ***
  DataModuleRegistroDeHuespedes.spSelecCamasLibresPorID_HabitacionParaRegistro.Parameters.ParamByName('@vID_Habitacion').Value:= aID_Habitacion;

  //Aquí se hace la busqueda de datos, en la BD
  DataModuleRegistroDeHuespedes.spSelecCamasLibresPorID_HabitacionParaRegistro.Open; //<- SÍ genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleRegistroDeHuespedes.spSelecCamasLibresPorID_HabitacionParaRegistro.ExecProc;
end;



procedure TModuloHospedaje.MostrarLiterasAbajoLibresPorID_HabitacionParaRegistro(aID_Habitacion: Integer);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleRegistroDeHuespedes.spSelecLiterasAbajoLibresPorID_HabitacionParaRegistro.Active:= False;

  //*** Le pasamos los parámetros al StoredProc ***
  DataModuleRegistroDeHuespedes.spSelecLiterasAbajoLibresPorID_HabitacionParaRegistro.Parameters.ParamByName('@vID_Habitacion').Value:= aID_Habitacion;

  //Aquí se hace la busqueda de datos, en la BD
  DataModuleRegistroDeHuespedes.spSelecLiterasAbajoLibresPorID_HabitacionParaRegistro.Open; //<- SÍ genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleRegistroDeHuespedes.spSelecLiterasAbajoLibresPorID_HabitacionParaRegistro.ExecProc;
end;



procedure TModuloHospedaje.MostrarLiterasArribaLibresPorID_HabitacionParaRegistro(aID_Habitacion: Integer);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleRegistroDeHuespedes.spSelecLiterasArribaLibresPorID_HabitacionParaRegistro.Active:= False;

  //*** Le pasamos los parámetros al StoredProc ***
  DataModuleRegistroDeHuespedes.spSelecLiterasArribaLibresPorID_HabitacionParaRegistro.Parameters.ParamByName('@vID_Habitacion').Value:= aID_Habitacion;

  //Aquí se hace la busqueda de datos, en la BD
  DataModuleRegistroDeHuespedes.spSelecLiterasArribaLibresPorID_HabitacionParaRegistro.Open; //<- SÍ genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleRegistroDeHuespedes.spSelecLiterasArribaLibresPorID_HabitacionParaRegistro.ExecProc;
end;



procedure TModuloHospedaje.MostrarLiterasLibresPorID_HabitacionParaRegistro(aID_Habitacion: Integer);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleRegistroDeHuespedes.spSelecLiterasLibresPorID_HabitacionParaRegistro.Active:= False;

  //*** Le pasamos los parámetros al StoredProc ***
  DataModuleRegistroDeHuespedes.spSelecLiterasLibresPorID_HabitacionParaRegistro.Parameters.ParamByName('@vID_Habitacion').Value:= aID_Habitacion;

  //Aquí se hace la busqueda de datos, en la BD
  DataModuleRegistroDeHuespedes.spSelecLiterasLibresPorID_HabitacionParaRegistro.Open; //<- SÍ genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleRegistroDeHuespedes.spSelecLiterasLibresPorID_HabitacionParaRegistro.ExecProc;
end;



procedure TModuloHospedaje.MostrarHuespedPorID_Huesped(aID_Huesped: Integer);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleRegistroDeHuespedes.spSelecHuespedPorID_Huesped.Active:= False;

  //Le pasamos el parámetro al StoredProc
  DataModuleRegistroDeHuespedes.spSelecHuespedPorID_Huesped.Parameters.ParamByName('@vID_Huesped').Value:= aID_Huesped;

  //Aquí se ejecuta el StoredProc en la BD
  DataModuleRegistroDeHuespedes.spSelecHuespedPorID_Huesped.Open; //Sí genera datos de respuesta, por eso se muestra
  DataModuleRegistroDeHuespedes.spSelecHuespedPorID_Huesped.ExecProc;
end;



procedure TModuloHospedaje.BuscarID_MunicipioCubanoHuespedPorNombreMunicipio(aNombreMunicipio: AnsiString);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleRegistroDeHuespedes.spSelecID_MunicipioCubanoHuespedPorNombreMunicipio.Active:= False;

  //Le pasamos el parámetro al StoredProc
  DataModuleRegistroDeHuespedes.spSelecID_MunicipioCubanoHuespedPorNombreMunicipio.Parameters.ParamByName('@vNombreMunicipio').Value:= aNombreMunicipio;

  //Aquí se ejecuta el StoredProc en la BD
  DataModuleRegistroDeHuespedes.spSelecID_MunicipioCubanoHuespedPorNombreMunicipio.Open; //Sí genera datos de respuesta, por eso se muestra
  DataModuleRegistroDeHuespedes.spSelecID_MunicipioCubanoHuespedPorNombreMunicipio.ExecProc;
end;



procedure TModuloHospedaje.BuscarID_ProvinciaCubanaHuespedPorNombreProvincia(aNombreProvincia: AnsiString);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleRegistroDeHuespedes.spSelecID_ProvinciaCubanaHuespedPorNombreProvincia.Active:= False;

  //Le pasamos el parámetro al StoredProc
  DataModuleRegistroDeHuespedes.spSelecID_ProvinciaCubanaHuespedPorNombreProvincia.Parameters.ParamByName('@vNombreProvincia').Value:= aNombreProvincia;

  //Aquí se ejecuta el StoredProc en la BD
  DataModuleRegistroDeHuespedes.spSelecID_ProvinciaCubanaHuespedPorNombreProvincia.Open; //Sí genera datos de respuesta, por eso se muestra
  DataModuleRegistroDeHuespedes.spSelecID_ProvinciaCubanaHuespedPorNombreProvincia.ExecProc;
end;



procedure TModuloHospedaje.BuscarID_MunicipioCubanoCentroLaboralPorNombreMunicipio(aNombreMunicipio: AnsiString);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleRegistroDeHuespedes.spSelecID_MunicipioCubanoCentroLaboralPorNombreMunicipio.Active:= False;

  //Le pasamos el parámetro al StoredProc
  DataModuleRegistroDeHuespedes.spSelecID_MunicipioCubanoCentroLaboralPorNombreMunicipio.Parameters.ParamByName('@vNombreMunicipio').Value:= aNombreMunicipio;

  //Aquí se ejecuta el StoredProc en la BD
  DataModuleRegistroDeHuespedes.spSelecID_MunicipioCubanoCentroLaboralPorNombreMunicipio.Open; //Sí genera datos de respuesta, por eso se muestra
  DataModuleRegistroDeHuespedes.spSelecID_MunicipioCubanoCentroLaboralPorNombreMunicipio.ExecProc;
end;



procedure TModuloHospedaje.BuscarID_ProvinciaCubanaCentroLaboralPorNombreProvincia(aNombreProvincia: AnsiString);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleRegistroDeHuespedes.spSelecID_ProvinciaCubanaCentroLaboralPorNombreProvincia.Active:= False;

  //Le pasamos el parámetro al StoredProc
  DataModuleRegistroDeHuespedes.spSelecID_ProvinciaCubanaCentroLaboralPorNombreProvincia.Parameters.ParamByName('@vNombreProvincia').Value:= aNombreProvincia;

  //Aquí se ejecuta el StoredProc en la BD
  DataModuleRegistroDeHuespedes.spSelecID_ProvinciaCubanaCentroLaboralPorNombreProvincia.Open; //Sí genera datos de respuesta, por eso se muestra
  DataModuleRegistroDeHuespedes.spSelecID_ProvinciaCubanaCentroLaboralPorNombreProvincia.ExecProc;
end;



procedure TModuloHospedaje.TrasladarHuespedDeCamaPorID_Huesped(aID_Cama, aID_Huesped: Integer);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleRegistroDeHuespedes.spTrasladarHuespedDeCamaPorID_Huesped.Active:= False;

  //Le pasamos el parámetro al StoredProc
  DataModuleRegistroDeHuespedes.spTrasladarHuespedDeCamaPorID_Huesped.Parameters.ParamByName('@vID_Cama').Value:= aID_Cama;
  DataModuleRegistroDeHuespedes.spTrasladarHuespedDeCamaPorID_Huesped.Parameters.ParamByName('@vID_Huesped').Value:= aID_Huesped;

  //Aquí se ejecuta el StoredProc en la BD
  //DataModuleRegistroDeHuespedes.spTrasladarHuespedDeCamaPorID_Huesped.Open; //No genera datos de respuesta, por eso se oculta
  DataModuleRegistroDeHuespedes.spTrasladarHuespedDeCamaPorID_Huesped.ExecProc;
end;



procedure TModuloHospedaje.BuscarCamaPorID_Cama(aID_Cama: Integer);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleRegistroDeHuespedes.spSelecCamaPorID_Cama.Active:= False;

  //Le pasamos el parámetro al StoredProc
  DataModuleRegistroDeHuespedes.spSelecCamaPorID_Cama.Parameters.ParamByName('@vID_Cama').Value:= aID_Cama;

  //Aquí se ejecuta el StoredProc en la BD
  DataModuleRegistroDeHuespedes.spSelecCamaPorID_Cama.Open; //Sí genera datos de respuesta, por eso se muetsra
  DataModuleRegistroDeHuespedes.spSelecCamaPorID_Cama.ExecProc;
end;



procedure TModuloHospedaje.MostrarDatosTotalesDeHuespedPorID_Huesped(aID_Huesped: Integer);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleRegistroDeHuespedes.spSelecDatosTotalesDeHuespedPorID_Huesped.Active:= False;

  //Le pasamos el parámetro al StoredProc
  DataModuleRegistroDeHuespedes.spSelecDatosTotalesDeHuespedPorID_Huesped.Parameters.ParamByName('@vID_Huesped').Value:= aID_Huesped;

  //Aquí se ejecuta el StoredProc en la BD
  DataModuleRegistroDeHuespedes.spSelecDatosTotalesDeHuespedPorID_Huesped.Open; //Sí genera datos de respuesta, por eso se muetsra
  DataModuleRegistroDeHuespedes.spSelecDatosTotalesDeHuespedPorID_Huesped.ExecProc;
end;



procedure TModuloHospedaje.MostrarOtrosHuespedesPorMotivoYPorID_Huesped(aMotivo: AnsiString; aID_Huesped: Integer);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleRegistroDeHuespedes.spSelecOtrosHuespedesPorMotivoYPorID_Huesped.Active:= False;

  //*** Se le pasa el parámetro al StoredProc ***
  DataModuleRegistroDeHuespedes.spSelecOtrosHuespedesPorMotivoYPorID_Huesped.Parameters.ParamByName('@vMotivoHospedaje').Value:= aMotivo;
  DataModuleRegistroDeHuespedes.spSelecOtrosHuespedesPorMotivoYPorID_Huesped.Parameters.ParamByName('@vID_Huesped').Value:= aID_Huesped;

  //Aquí se hace la búsqueda en la BD
  DataModuleRegistroDeHuespedes.spSelecOtrosHuespedesPorMotivoYPorID_Huesped.Open; //<- Sí genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleRegistroDeHuespedes.spSelecOtrosHuespedesPorMotivoYPorID_Huesped.ExecProc;
end;



procedure TModuloHospedaje.MostrarOtrosHuespedesPorMotivoYPorPisoYPorID_Huesped(aMotivo, aPiso: AnsiString; aID_Huesped: Integer);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleRegistroDeHuespedes.spSelecOtrosHuespedesPorMotivoYPorPisoYPorID_Huesped.Active:= False;

  //*** Se le pasan los parámetros al StoredProc ***
  DataModuleRegistroDeHuespedes.spSelecOtrosHuespedesPorMotivoYPorPisoYPorID_Huesped.Parameters.ParamByName('@vPiso').Value:= aPiso;
  DataModuleRegistroDeHuespedes.spSelecOtrosHuespedesPorMotivoYPorPisoYPorID_Huesped.Parameters.ParamByName('@vMotivoHospedaje').Value:= aMotivo;
  DataModuleRegistroDeHuespedes.spSelecOtrosHuespedesPorMotivoYPorPisoYPorID_Huesped.Parameters.ParamByName('@vID_Huesped').Value:= aID_Huesped;
  
  //Aquí se hace la búsqueda en la BD
  DataModuleRegistroDeHuespedes.spSelecOtrosHuespedesPorMotivoYPorPisoYPorID_Huesped.Open; //<- Sí genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleRegistroDeHuespedes.spSelecOtrosHuespedesPorMotivoYPorPisoYPorID_Huesped.ExecProc;
end;



procedure TModuloHospedaje.MostrarOtrosHuespedesPorPisoYPorID_Huesped(aPiso: AnsiString; aID_Huesped: Integer);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleRegistroDeHuespedes.spSelecOtrosHuespedesPorPisoYPorID_Huesped.Active:= False;

  //*** Se le pasan los parámetros al StoredProc ***
  DataModuleRegistroDeHuespedes.spSelecOtrosHuespedesPorPisoYPorID_Huesped.Parameters.ParamByName('@vPiso').Value:= aPiso;
  DataModuleRegistroDeHuespedes.spSelecOtrosHuespedesPorPisoYPorID_Huesped.Parameters.ParamByName('@vID_Huesped').Value:= aID_Huesped;

  //Aquí se hace la búsqueda en la BD
  DataModuleRegistroDeHuespedes.spSelecOtrosHuespedesPorPisoYPorID_Huesped.Open; //<- Sí genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleRegistroDeHuespedes.spSelecOtrosHuespedesPorPisoYPorID_Huesped.ExecProc;
end;



procedure TModuloHospedaje.MostrarOtrosHuespedesTotalesPorID_Huesped(aID_Huesped: Integer);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleRegistroDeHuespedes.spSelecOtrosHuespedesTotalesPorID_Huesped.Active:= False;

  //*** Se le pasa el parámetro al StoredProc ***
  DataModuleRegistroDeHuespedes.spSelecOtrosHuespedesTotalesPorID_Huesped.Parameters.ParamByName('@vID_Huesped').Value:= aID_Huesped;

  //Aquí se hace la búsqueda en la BD
  DataModuleRegistroDeHuespedes.spSelecOtrosHuespedesTotalesPorID_Huesped.Open; //<- Sí genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleRegistroDeHuespedes.spSelecOtrosHuespedesTotalesPorID_Huesped.ExecProc;
end;



function TModuloHospedaje.CantidadDeOtrosHuespedesPorMotivoYPorID_Huesped: Integer;
begin
  //Cuento la cantidad de otros huespedes que existen
  if (DataModuleRegistroDeHuespedes.dsSelecOtrosHuespedesPorMotivoYPorID_Huesped.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleRegistroDeHuespedes.dsSelecOtrosHuespedesPorMotivoYPorID_Huesped.DataSet.RecordCount
        else
          Result:= 0;
end;



function TModuloHospedaje.CantidadDeOtrosHuespedesPorMotivoYPorPisoYPorID_Huesped: Integer;
begin
  //Cuento la cantidad de otros huespedes que existen
  if (DataModuleRegistroDeHuespedes.dsSelecOtrosHuespedesPorMotivoYPorPisoYPorID_Huesped.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleRegistroDeHuespedes.dsSelecOtrosHuespedesPorMotivoYPorPisoYPorID_Huesped.DataSet.RecordCount
        else
          Result:= 0;
end;



function TModuloHospedaje.CantidadDeOtrosHuespedesPorPisoYPorID_Huesped: Integer;
begin
  //Cuento la cantidad de otros huespedes que existen
  if (DataModuleRegistroDeHuespedes.dsSelecOtrosHuespedesPorPisoYPorID_Huesped.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleRegistroDeHuespedes.dsSelecOtrosHuespedesPorPisoYPorID_Huesped.DataSet.RecordCount
        else
          Result:= 0;
end;



function TModuloHospedaje.CantidadDeOtrosHuespedesTotalesPorID_Huesped: Integer;
begin
  //Cuento la cantidad de otros huespedes que existen
  if (DataModuleRegistroDeHuespedes.dsSelecOtrosHuespedesTotalesPorID_Huesped.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleRegistroDeHuespedes.dsSelecOtrosHuespedesTotalesPorID_Huesped.DataSet.RecordCount
        else
          Result:= 0;
end;



procedure TModuloHospedaje.MostrarHabitacionesVaciasParaAlertas;
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleAlertasDelSistema.spSelecHabitacionesVacias.Active:= False;

  //*** No hay que pasarle parámetro alguno al StoredProc ***


  //Aquí se hace la busqueda de datos, en la BD
  DataModuleAlertasDelSistema.spSelecHabitacionesVacias.Open; //<- SÍ genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleAlertasDelSistema.spSelecHabitacionesVacias.ExecProc;
end;



function TModuloHospedaje.CantidadHabitacionesVaciasParaAlertas: Integer;
begin
  //Cuento la cantidad de habitaciones vacias para alertas
  if (DataModuleAlertasDelSistema.dsSelecHabitacionesVacias.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleAlertasDelSistema.dsSelecHabitacionesVacias.DataSet.RecordCount
        else
          Result:= 0;
end;



procedure TModuloHospedaje.EliminarTodasLasAlertasDelSistema;
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleAlertasDelSistema.spEliminarTodasLasAlertasDelSistema.Active:= False;

  //*** No hay que pasarle parámetro alguno al StoredProc ***

  //Aquí se hace la eliminacion en la BD
  //DataModuleAlertasDelSistema.spEliminarTodasLasAlertasDelSistema.Open; //<- No genera datos de respuesta el StoredProc, por eso se oculta esto.
  DataModuleAlertasDelSistema.spEliminarTodasLasAlertasDelSistema.ExecProc;
end;



procedure TModuloHospedaje.InsertarAlertaDelSistema(aMotivo, aDescripcion: AnsiString);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleAlertasDelSistema.spInsertarAlertaDelSistema.Active:= False;

  //*** Se le pasa el parámetro al StoredProc ***
  DataModuleAlertasDelSistema.spInsertarAlertaDelSistema.Parameters.ParamByName('@vMotivoDeAlerta').Value:= aMotivo;
  DataModuleAlertasDelSistema.spInsertarAlertaDelSistema.Parameters.ParamByName('@vDescripcionDeAlerta').Value:= aDescripcion;  

  //Aquí se hace la insercion en la BD
  //DataModuleAlertasDelSistema.spInsertarAlertaDelSistema.Open; //<- No genera datos de respuesta el StoredProc, por eso se oculta esto.
  DataModuleAlertasDelSistema.spInsertarAlertaDelSistema.ExecProc;
end;



procedure TModuloHospedaje.MostrarTodasAlertasDelSistema;
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleAlertasDelSistema.spSelecTodasLasAlertasDelSistema.Active:= False;

  //*** No hay que pasarle parámetro alguno al StoredProc ***


  //Aquí se hace la busqueda de datos, en la BD
  DataModuleAlertasDelSistema.spSelecTodasLasAlertasDelSistema.Open; //<- SÍ genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleAlertasDelSistema.spSelecTodasLasAlertasDelSistema.ExecProc;
end;



procedure TModuloHospedaje.BuscarHuespedPorCarneIdentidad(aCarneIdentidad: AnsiString);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleRegistroDeHuespedes.spSelecHuespedPorCarneIdentidad.Active:= False;

  //Le pasamos el parámetro al StoredProc
  DataModuleRegistroDeHuespedes.spSelecHuespedPorCarneIdentidad.Parameters.ParamByName('@vCarneIdentidad').Value:= aCarneIdentidad;

  //Aquí se ejecuta el StoredProc en la BD
  DataModuleRegistroDeHuespedes.spSelecHuespedPorCarneIdentidad.Open; //Sí genera datos de respuesta, por eso se muestra
  DataModuleRegistroDeHuespedes.spSelecHuespedPorCarneIdentidad.ExecProc;
end;



function TModuloHospedaje.ExisteHuespedPorCarneIdentidad(aCarneIdentidad: AnsiString): Boolean;
begin
  //Primero busco el huesped
  BuscarHuespedPorCarneIdentidad(aCarneIdentidad);

  //Ahora verifico si se encontró el huesped
  if (DataModuleRegistroDeHuespedes.dsSelecHuespedPorCarneIdentidad.DataSet.RecordCount <> 0)
    then
      begin
        Result:= True;
      end
        else
          begin
            Result:= False;
          end;
end;



function TModuloHospedaje.CantidadAlertasDelSistema: Integer;
begin
  //Cuento la cantidad de alertas que existen
  if (DataModuleAlertasDelSistema.dsSelecTodasLasAlertasDelSistema.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleAlertasDelSistema.dsSelecTodasLasAlertasDelSistema.DataSet.RecordCount
        else
          Result:= 0;
end;



procedure TModuloHospedaje.MostrarHuespedesPasadosDeTiempoPorFechaActualParaAlertas(aFechaActual: TDateTime);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleAlertasDelSistema.spSelecHuespedesPasadosDeTiempoPorFechaActual.Active:= False;

  //*** Le pasamos los parámetros al StoredProc ***
  DataModuleAlertasDelSistema.spSelecHuespedesPasadosDeTiempoPorFechaActual.Parameters.ParamByName('@vFechaActual').Value:= aFechaActual;

  //Aquí se hace la busqueda de datos, en la BD
  DataModuleAlertasDelSistema.spSelecHuespedesPasadosDeTiempoPorFechaActual.Open; //<- SÍ genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleAlertasDelSistema.spSelecHuespedesPasadosDeTiempoPorFechaActual.ExecProc;
end;



function TModuloHospedaje.CantidadHuespedesPasadosDeTiempoPorFechaActualParaAlerta: Integer;
begin
  //Cuento la cantidad de huéspedes pasados de tiempo
  if (DataModuleAlertasDelSistema.dsSelecHuespedesPasadosDeTiempoPorFechaActual.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleAlertasDelSistema.dsSelecHuespedesPasadosDeTiempoPorFechaActual.DataSet.RecordCount
        else
          Result:= 0;
end;



procedure TModuloHospedaje.MostrarLechosLibresTotales;
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleAlertasDelSistema.spSelecLechosLibresTotales.Active:= False;

  //*** No hay que pasarle parámetro alguno al StoredProc ***


  //Aquí se hace la busqueda de datos, en la BD
  DataModuleAlertasDelSistema.spSelecLechosLibresTotales.Open; //<- SÍ genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleAlertasDelSistema.spSelecLechosLibresTotales.ExecProc;
end;



procedure TModuloHospedaje.MostrarLechosOcupadosTotales;
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleAlertasDelSistema.spSelecLechosOcupadosTotales.Active:= False;

  //*** No hay que pasarle parámetro alguno al StoredProc ***


  //Aquí se hace la busqueda de datos, en la BD
  DataModuleAlertasDelSistema.spSelecLechosOcupadosTotales.Open; //<- SÍ genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleAlertasDelSistema.spSelecLechosOcupadosTotales.ExecProc;
end;



procedure TModuloHospedaje.MostrarLechosTotales;
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleAlertasDelSistema.spSelecLechosTotales.Active:= False;

  //*** No hay que pasarle parámetro alguno al StoredProc ***


  //Aquí se hace la busqueda de datos, en la BD
  DataModuleAlertasDelSistema.spSelecLechosTotales.Open; //<- SÍ genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleAlertasDelSistema.spSelecLechosTotales.ExecProc;
end;



function TModuloHospedaje.CantidadLechosLibresTotales: Integer;
begin
  //Se realiza la busqueda de los lechos libres totales
  MostrarLechosLibresTotales;

  //Cuento la cantidad de lechos libres totales
  if (DataModuleAlertasDelSistema.dsSelecLechosLibresTotales.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleAlertasDelSistema.dsSelecLechosLibresTotales.DataSet.RecordCount
        else
          Result:= 0;  
end;



function TModuloHospedaje.CantidadLechosOcupadosTotales: Integer;
begin
  //Se realiza la busqueda de los lechos ocupados totales
  MostrarLechosOcupadosTotales;

  //Cuento la cantidad de lechos ocupados totales
  if (DataModuleAlertasDelSistema.dsSelecLechosOcupadosTotales.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleAlertasDelSistema.dsSelecLechosOcupadosTotales.DataSet.RecordCount
        else
          Result:= 0;
end;



function TModuloHospedaje.CantidadLechosTotales: Integer;
begin
  //Se realiza la busqueda de los lechos totales
  MostrarLechosTotales;

  //Cuento la cantidad de lechos totales
  if (DataModuleAlertasDelSistema.dsSelecLechosTotales.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleAlertasDelSistema.dsSelecLechosTotales.DataSet.RecordCount
        else
          Result:= 0;
end;



procedure TModuloHospedaje.BuscarHabitacionConOcupantesPorID_Habitacion(aID_Habitacion: Integer);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleAdminCapacidades.spSelecHabitacionConOcupantesPorID_Habitacion.Active:= False;

  //Le pasamos el parámetro al StoredProc
  DataModuleAdminCapacidades.spSelecHabitacionConOcupantesPorID_Habitacion.Parameters.ParamByName('@vID_Habitacion').Value:= aID_Habitacion;

  //Aquí se ejecuta el StoredProc en la BD
  DataModuleAdminCapacidades.spSelecHabitacionConOcupantesPorID_Habitacion.Open; //Genera datos de respuesta, por eso se pone
  DataModuleAdminCapacidades.spSelecHabitacionConOcupantesPorID_Habitacion.ExecProc;
end;



function TModuloHospedaje.ExisteLaHabitacionConOcupantesPorID_Habitacion(aID_Habitacion: Integer): Boolean;
begin
  //Primero busco la habitacion con ocupantes
  BuscarHabitacionConOcupantesPorID_Habitacion(aID_Habitacion);

  //Luego verifico si la encontró
  if (DataModuleAdminCapacidades.dsSelecHabitacionConOcupantesPorID_Habitacion.DataSet.RecordCount <> 0)
    then
      begin
        Result:= True
      end
        else
          begin
            Result:= False;
          end;
end;



procedure TModuloHospedaje.BuscarLechoOcupadoPorID_Cama(aID_Cama: Integer);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleAdminCapacidades.spSelecLechoOcupadoPorID_Cama.Active:= False;

  //Le pasamos el parámetro al StoredProc
  DataModuleAdminCapacidades.spSelecLechoOcupadoPorID_Cama.Parameters.ParamByName('@vID_Cama').Value:= aID_Cama;

  //Aquí se ejecuta el StoredProc en la BD
  DataModuleAdminCapacidades.spSelecLechoOcupadoPorID_Cama.Open; //Genera datos de respuesta, por eso se pone
  DataModuleAdminCapacidades.spSelecLechoOcupadoPorID_Cama.ExecProc;
end;



function TModuloHospedaje.ExistelechoOcupadoPorID_Cama(aID_Cama: Integer): Boolean;
begin
  //Primero busco el lecho ocupado por el ID_Cama especificado
  BuscarlechoOcupadoPorID_Cama(aID_Cama);

  //Luego verifico si lo encontró
  if (DataModuleAdminCapacidades.dsSelecLechoOcupadoPorID_Cama.DataSet.RecordCount <> 0)
    then
      begin
        Result:= True
      end
        else
          begin
            Result:= False;
          end;
end;



procedure TModuloHospedaje.MostrarHuespedesConIncidenciasHistoricasYRecientes;
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleAlertasDelSistema.spSelecHuespedesConIncidenciasHistoricasYRecientes.Active:= False;

  //*** No hay que pasarle parámetro alguno al StoredProc ***


  //Aquí se hace la busqueda de datos, en la BD
  DataModuleAlertasDelSistema.spSelecHuespedesConIncidenciasHistoricasYRecientes.Open; //<- SÍ genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleAlertasDelSistema.spSelecHuespedesConIncidenciasHistoricasYRecientes.ExecProc;
end;



procedure TModuloHospedaje.MostrarHuespedesConIncidenciasSoloHistoricas;
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleAlertasDelSistema.spSelecHuespedesConIncidenciasSoloHistoricas.Active:= False;

  //*** No hay que pasarle parámetro alguno al StoredProc ***


  //Aquí se hace la busqueda de datos, en la BD
  DataModuleAlertasDelSistema.spSelecHuespedesConIncidenciasSoloHistoricas.Open; //<- SÍ genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleAlertasDelSistema.spSelecHuespedesConIncidenciasSoloHistoricas.ExecProc;
end;



procedure TModuloHospedaje.MostrarHuespedesConIncidenciasSoloRecientes;
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleAlertasDelSistema.spSelecHuespedesConIncidenciasSoloRecientes.Active:= False;

  //*** No hay que pasarle parámetro alguno al StoredProc ***


  //Aquí se hace la busqueda de datos, en la BD
  DataModuleAlertasDelSistema.spSelecHuespedesConIncidenciasSoloRecientes.Open; //<- SÍ genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleAlertasDelSistema.spSelecHuespedesConIncidenciasSoloRecientes.ExecProc;
end;



function TModuloHospedaje.CantidadHuespedesConIncidenciasHistoricasYRecientes: Integer;
begin
  //Cuento la cantidad de huéspedes con incidencias históricas y recientes
  if (DataModuleAlertasDelSistema.dsSelecHuespedesConIncidenciasHistoricasYRecientes.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleAlertasDelSistema.dsSelecHuespedesConIncidenciasHistoricasYRecientes.DataSet.RecordCount
        else
          Result:= 0;
end;



function TModuloHospedaje.CantidadHuespedesConIncidenciasSoloHistoricas: Integer;
begin
  //Cuento la cantidad de huéspedes con incidencias solo históricas
  if (DataModuleAlertasDelSistema.dsSelecHuespedesConIncidenciasSoloHistoricas.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleAlertasDelSistema.dsSelecHuespedesConIncidenciasSoloHistoricas.DataSet.RecordCount
        else
          Result:= 0;
end;



function TModuloHospedaje.CantidadHuespedesConIncidenciasSoloRecientes: Integer;
begin
  //Cuento la cantidad de huéspedes con incidencias solo recientes
  if (DataModuleAlertasDelSistema.dsSelecHuespedesConIncidenciasSoloRecientes.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleAlertasDelSistema.dsSelecHuespedesConIncidenciasSoloRecientes.DataSet.RecordCount
        else
          Result:= 0;
end;



procedure TModuloHospedaje.ArchivarHuespedPorID_Huesped(aID_Huesped: Integer);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleRegistroDeHuespedes.spArchivarHuespedPorID_Huesped.Active:= False;

  //Le pasamos el parámetro al StoredProc
  DataModuleRegistroDeHuespedes.spArchivarHuespedPorID_Huesped.Parameters.ParamByName('@vID_Huesped').Value:= aID_Huesped;

  //Aquí se ejecuta el StoredProc en la BD
  //DataModuleRegistroDeHuespedes.spArchivarHuespedPorID_Huesped.Open; //No genera datos de respuesta, por eso se oculta
  DataModuleRegistroDeHuespedes.spArchivarHuespedPorID_Huesped.ExecProc;
end;



procedure TModuloHospedaje.MostrarRegistrosDeArchivoPorApellidos(aApellidos: AnsiString);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorApellidos.Active:= False;

  //*** Le pasamos los parámetros al StoredProc ***
  DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorApellidos.Parameters.ParamByName('@vApellidos').Value:= aApellidos;

  //Aquí se hace la busqueda de datos, en la BD
  DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorApellidos.Open; //<- SÍ genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorApellidos.ExecProc;
end;



procedure TModuloHospedaje.MostrarRegistrosDeArchivoPorCarneIdentidad(aCarneIdentidad: AnsiString);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidad.Active:= False;

  //*** Le pasamos los parámetros al StoredProc ***
  DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidad.Parameters.ParamByName('@vCarneIdentidad').Value:= aCarneIdentidad;

  //Aquí se hace la busqueda de datos, en la BD
  DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidad.Open; //<- SÍ genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidad.ExecProc;
end;



procedure TModuloHospedaje.MostrarRegistrosDeArchivoPorCarneIdentidadYPorApellidos(aCarneIdentidad, aApellidos: AnsiString);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidadYPorApellidos.Active:= False;

  //*** Le pasamos los parámetros al StoredProc ***
  DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidadYPorApellidos.Parameters.ParamByName('@vCarneIdentidad').Value:= aCarneIdentidad;
  DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidadYPorApellidos.Parameters.ParamByName('@vApellidos').Value:= aApellidos;

  //Aquí se hace la busqueda de datos, en la BD
  DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidadYPorApellidos.Open; //<- SÍ genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidadYPorApellidos.ExecProc;
end;



procedure TModuloHospedaje.MostrarRegistrosDeArchivoPorCarneIdentidadPorNombreYPorApellidos(aCarneIdentidad, aNombre, aApellidos: AnsiString);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidadPorNombreYPorApellido.Active:= False;

  //*** Le pasamos los parámetros al StoredProc ***
  DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidadPorNombreYPorApellido.Parameters.ParamByName('@vCarneIdentidad').Value:= aCarneIdentidad;
  DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidadPorNombreYPorApellido.Parameters.ParamByName('@vNombre').Value:= aNombre;
  DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidadPorNombreYPorApellido.Parameters.ParamByName('@vApellidos').Value:= aApellidos;

  //Aquí se hace la busqueda de datos, en la BD
  DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidadPorNombreYPorApellido.Open; //<- SÍ genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidadPorNombreYPorApellido.ExecProc;
end;



procedure TModuloHospedaje.MostrarRegistrosDeArchivoPorCarneIdentidadYPorNombre(aCarneIdentidad, aNombre: AnsiString);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidadYPorNombre.Active:= False;

  //*** Le pasamos los parámetros al StoredProc ***
  DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidadYPorNombre.Parameters.ParamByName('@vCarneIdentidad').Value:= aCarneIdentidad;
  DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidadYPorNombre.Parameters.ParamByName('@vNombre').Value:= aNombre;

  //Aquí se hace la busqueda de datos, en la BD
  DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidadYPorNombre.Open; //<- SÍ genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorCarneIdentidadYPorNombre.ExecProc;
end;



procedure TModuloHospedaje.MostrarRegistrosDeArchivoPorNombre(aNombre: AnsiString);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorNombre.Active:= False;

  //*** Le pasamos los parámetros al StoredProc ***
  DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorNombre.Parameters.ParamByName('@vNombre').Value:= aNombre;

  //Aquí se hace la busqueda de datos, en la BD
  DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorNombre.Open; //<- SÍ genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorNombre.ExecProc;
end;



procedure TModuloHospedaje.MostrarRegistrosDeArchivoPorNombreYPorApellidos(aNombre, aApellidos: AnsiString);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorNombreYPorApellidos.Active:= False;

  //*** Le pasamos los parámetros al StoredProc ***
  DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorNombreYPorApellidos.Parameters.ParamByName('@vNombre').Value:= aNombre;
  DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorNombreYPorApellidos.Parameters.ParamByName('@vApellidos').Value:= aApellidos;

  //Aquí se hace la busqueda de datos, en la BD
  DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorNombreYPorApellidos.Open; //<- SÍ genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleArchivoDeRegistros.spSelecRegistrosDeArchivoPorNombreYPorApellidos.ExecProc;
end;



function TModuloHospedaje.CantidadRegistrosDeArchivoPorApellidos: Integer;
begin
  //Cuento la cantidad de lechos totales
  if (DataModuleArchivoDeRegistros.dsSelecRegistrosDeArchivoPorApellidos.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleArchivoDeRegistros.dsSelecRegistrosDeArchivoPorApellidos.DataSet.RecordCount
        else
          Result:= 0;
end;



function TModuloHospedaje.CantidadRegistrosDeArchivoPorCarneIdentidad: Integer;
begin
  //Cuento la cantidad de lechos totales
  if (DataModuleArchivoDeRegistros.dsSelecRegistrosDeArchivoPorCarneIdentidad.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleArchivoDeRegistros.dsSelecRegistrosDeArchivoPorCarneIdentidad.DataSet.RecordCount
        else
          Result:= 0;
end;



function TModuloHospedaje.CantidadRegistrosDeArchivoPorCarneIdentidadPorNombreYPorApellidos: Integer;
begin
  //Cuento la cantidad de lechos totales
  if (DataModuleArchivoDeRegistros.dsSelecRegistrosDeArchivoPorCarneIdentidadPorNombreYPorApellido.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleArchivoDeRegistros.dsSelecRegistrosDeArchivoPorCarneIdentidadPorNombreYPorApellido.DataSet.RecordCount
        else
          Result:= 0;
end;



function TModuloHospedaje.CantidadRegistrosDeArchivoPorCarneIdentidadYPorApellidos: Integer;
begin
  //Cuento la cantidad de lechos totales
  if (DataModuleArchivoDeRegistros.dsSelecRegistrosDeArchivoPorCarneIdentidadYPorApellidos.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleArchivoDeRegistros.dsSelecRegistrosDeArchivoPorCarneIdentidadYPorApellidos.DataSet.RecordCount
        else
          Result:= 0;
end;



function TModuloHospedaje.CantidadRegistrosDeArchivoPorCarneIdentidadYPorNombre: Integer;
begin
  //Cuento la cantidad de lechos totales
  if (DataModuleArchivoDeRegistros.dsSelecRegistrosDeArchivoPorCarneIdentidadYPorNombre.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleArchivoDeRegistros.dsSelecRegistrosDeArchivoPorCarneIdentidadYPorNombre.DataSet.RecordCount
        else
          Result:= 0;
end;



function TModuloHospedaje.CantidadRegistrosDeArchivoPorNombre: Integer;
begin
  //Cuento la cantidad de lechos totales
  if (DataModuleArchivoDeRegistros.dsSelecRegistrosDeArchivoPorNombre.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleArchivoDeRegistros.dsSelecRegistrosDeArchivoPorNombre.DataSet.RecordCount
        else
          Result:= 0;
end;



function TModuloHospedaje.CantidadRegistrosDeArchivoPorNombreYPorApellidos: Integer;
begin
  //Cuento la cantidad de lechos totales
  if (DataModuleArchivoDeRegistros.dsSelecRegistrosDeArchivoPorNombreYPorApellidos.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleArchivoDeRegistros.dsSelecRegistrosDeArchivoPorNombreYPorApellidos.DataSet.RecordCount
        else
          Result:= 0;
end;



procedure TModuloHospedaje.MostrarRegistrosDeArchivoPorIntervalosDeFechaFinalHospedaje(aFechaA, aFechaB: TDateTime);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleArchivoDeRegistros.spSelecRegistrosArchivadosPorIntervalosDeFechasFinalHospedaje.Active:= False;

  //*** Le pasamos los parámetros al StoredProc ***
  DataModuleArchivoDeRegistros.spSelecRegistrosArchivadosPorIntervalosDeFechasFinalHospedaje.Parameters.ParamByName('@vFechaA').Value:= aFechaA;
  DataModuleArchivoDeRegistros.spSelecRegistrosArchivadosPorIntervalosDeFechasFinalHospedaje.Parameters.ParamByName('@vFechaB').Value:= aFechaB;

  //Aquí se hace la busqueda de datos, en la BD
  DataModuleArchivoDeRegistros.spSelecRegistrosArchivadosPorIntervalosDeFechasFinalHospedaje.Open; //<- SÍ genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleArchivoDeRegistros.spSelecRegistrosArchivadosPorIntervalosDeFechasFinalHospedaje.ExecProc;
end;



procedure TModuloHospedaje.MostrarRegistrosDeArchivoPorIntervalosDeFechaInicioHospedaje(aFechaA, aFechaB: TDateTime);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleArchivoDeRegistros.spSelecRegistrosArchivadosPorIntervalosDeFechasInicioHospedaje.Active:= False;

  //*** Le pasamos los parámetros al StoredProc ***
  DataModuleArchivoDeRegistros.spSelecRegistrosArchivadosPorIntervalosDeFechasInicioHospedaje.Parameters.ParamByName('@vFechaA').Value:= aFechaA;
  DataModuleArchivoDeRegistros.spSelecRegistrosArchivadosPorIntervalosDeFechasInicioHospedaje.Parameters.ParamByName('@vFechaB').Value:= aFechaB;

  //Aquí se hace la busqueda de datos, en la BD
  DataModuleArchivoDeRegistros.spSelecRegistrosArchivadosPorIntervalosDeFechasInicioHospedaje.Open; //<- SÍ genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleArchivoDeRegistros.spSelecRegistrosArchivadosPorIntervalosDeFechasInicioHospedaje.ExecProc;
end;



procedure TModuloHospedaje.MostrarRegistrosArchivadosEnIntervalosDeFechas(aFechaA, aFechaB: TDateTime);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleArchivoDeRegistros.spSelecRegistrosArchivadosEnIntervalosDeFechas.Active:= False;

  //*** Le pasamos los parámetros al StoredProc ***
  DataModuleArchivoDeRegistros.spSelecRegistrosArchivadosEnIntervalosDeFechas.Parameters.ParamByName('@vFechaA').Value:= aFechaA;
  DataModuleArchivoDeRegistros.spSelecRegistrosArchivadosEnIntervalosDeFechas.Parameters.ParamByName('@vFechaB').Value:= aFechaB;

  //Aquí se hace la busqueda de datos, en la BD
  DataModuleArchivoDeRegistros.spSelecRegistrosArchivadosEnIntervalosDeFechas.Open; //<- SÍ genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleArchivoDeRegistros.spSelecRegistrosArchivadosEnIntervalosDeFechas.ExecProc;
end;



function TModuloHospedaje.CantidadRegistrosArchivadosEnIntervalosDeFechas: Integer;
begin
  //Cuento la cantidad de registros archivados
  if (DataModuleArchivoDeRegistros.dsSelecRegistrosArchivadosEnIntervalosDeFechas.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleArchivoDeRegistros.dsSelecRegistrosArchivadosEnIntervalosDeFechas.DataSet.RecordCount
        else
          Result:= 0;
end;



function TModuloHospedaje.CantidadRegistrosDeArchivoPorIntervalosDeFechaFinalHospedaje: Integer;
begin
  //Cuento la cantidad de registros archivados
  if (DataModuleArchivoDeRegistros.dsSelecRegistrosArchivadosPorIntervalosDeFechasFinalHospedaje.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleArchivoDeRegistros.dsSelecRegistrosArchivadosPorIntervalosDeFechasFinalHospedaje.DataSet.RecordCount
        else
          Result:= 0;
end;



function TModuloHospedaje.CantidadRegistrosDeArchivoPorIntervalosDeFechaInicioHospedaje: Integer;
begin
  //Cuento la cantidad de registros archivados
  if (DataModuleArchivoDeRegistros.dsSelecRegistrosArchivadosPorIntervalosDeFechasInicioHospedaje.DataSet.RecordCount <> 0)
    then
      Result:= DataModuleArchivoDeRegistros.dsSelecRegistrosArchivadosPorIntervalosDeFechasInicioHospedaje.DataSet.RecordCount
        else
          Result:= 0;
end;



procedure TModuloHospedaje.MostrarRegistroArchivadoPorID_HuespedHistorico(aID_HuespedHistorico: Integer);
begin
  //Se realiza la conexión con la BD
  DataModuleConexionGeneral.ADOConnectionGeneral.Connected:= True;
  DataModuleArchivoDeRegistros.spSelecRegistroArchivadoPorID_HuespedHistorico.Active:= False;

  //*** Le pasamos los parámetros al StoredProc ***
  DataModuleArchivoDeRegistros.spSelecRegistroArchivadoPorID_HuespedHistorico.Parameters.ParamByName('@vID_HuespedHistorico').Value:= aID_HuespedHistorico;

  //Aquí se hace la busqueda de datos, en la BD
  DataModuleArchivoDeRegistros.spSelecRegistroArchivadoPorID_HuespedHistorico.Open; //<- SÍ genera datos de respuesta el StoredProc, por eso se muestra esto.
  DataModuleArchivoDeRegistros.spSelecRegistroArchivadoPorID_HuespedHistorico.ExecProc;
end;



end.
