object DataModuleRegistroDeHuespedes: TDataModuleRegistroDeHuespedes
  OldCreateOrder = False
  Top = 45
  Height = 665
  Width = 768
  object ADOStoredProcMostrarProvinciasCubanas: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecProvinciasCubanas;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end>
    Left = 40
    Top = 65429
  end
  object DataSourceMostrarProvinciasCubanas: TDataSource
    DataSet = ADOStoredProcMostrarProvinciasCubanas
    Left = 176
    Top = 65445
  end
  object ADOStoredProcMostrarMunicipiosPorID_Provincia: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecMunicipiosPorID_Provincia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@vID_Provincia'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end>
    Left = 40
    Top = 65477
  end
  object DataSourceMostrarMunicipiosPorID_Provincia: TDataSource
    DataSet = ADOStoredProcMostrarMunicipiosPorID_Provincia
    Left = 176
    Top = 65493
  end
  object ADOStoredProcInsertarHuesped: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'InsertarHuesped;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vNombre'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vCarneIdentidad'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vApellidos'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vTelefonoParticular'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vPais'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vEmailHuesped'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vProvinciaHuesped'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vMunicipioHuesped'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vDireccionParticular'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vNombreCentroLaboral'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vEmailCentroLaboral'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vTelefonoCentroLaboral'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vProvinciaCentroLaboral'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vMunicipioCentroLaboral'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vDireccionCentroLaboral'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vMotivoHospedaje'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vModalidad'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vFechaInicioActividad'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vFechaFinalActividad'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vTituloActividad'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vNombreInstitucionActividad'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vEmailActividad'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vTelefonoActividad'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vNombreCoordinadorActividad'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vDireccionActividad'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vID_Cama'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end
      item
        Name = '@vFechaInicioHospedaje'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 0d
      end
      item
        Name = '@vFechaFinalHospedaje'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 0d
      end
      item
        Name = '@vDerechoADesayuno'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vDerechoAAlmuerzo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vDerechoAComida'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vLugarConsumo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vNombreCompletoDeRegistrador'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vIncidencias'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end>
    Left = 576
    Top = 65529
  end
  object ADOStoredProcOcuparCamaPorID_Cama: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'OcuparCamaPorID_Cama;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vID_Cama'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end>
    Left = 344
    Top = 320
  end
  object ADOStoredProcLiberarCamaPorID_Cama: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'LiberarCamaPorID_Cama;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vID_Cama'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end>
    Left = 344
    Top = 376
  end
  object ADOStoredProcEliminarHuespedPorID_Huesped: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'EliminarHuespedPorID_Huesped;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vid_Huesped'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end>
    Left = 776
    Top = 65477
  end
  object ADOStoredProcMostrarHuespedesTotales: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecHuespedesTotales;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end>
    Left = 24
    Top = 5
  end
  object DataSourceMostrarHuespedesTotales: TDataSource
    DataSet = ADOStoredProcMostrarHuespedesTotales
    Left = 144
    Top = 21
  end
  object ADOStoredProcSelecHabitacionesConVacantesTotalesParaRegistro: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecHabitacionesConVacantesTotalesParaRegistro;1'
    Parameters = <>
    Left = 712
    Top = 5
  end
  object DataSourceSelecHabitacionesConVacantesTotalesParaRegistro: TDataSource
    DataSet = ADOStoredProcSelecHabitacionesConVacantesTotalesParaRegistro
    Left = 896
    Top = 21
  end
  object dsSelecLechosLibresPorID_HabitacionParaRegistro: TDataSource
    DataSet = spSelecLechosLibresPorID_HabitacionParaRegistro
    Left = 179
    Top = 277
  end
  object spSelecLechosLibresPorID_HabitacionParaRegistro: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecLechosLibresPorID_HabitacionParaRegistro;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vid_Habitacion'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end>
    Left = 27
    Top = 261
  end
  object spSelecHuespedesPorMotivo: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecHuespedesPorMotivo;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vMotivoHospedaje'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end>
    Left = 24
    Top = 53
  end
  object dsSelecHuespedesPorMotivo: TDataSource
    DataSet = spSelecHuespedesPorMotivo
    Left = 144
    Top = 69
  end
  object spSelecHuespedesPorPiso: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecHuespedesPorPiso;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vPiso'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end>
    Left = 24
    Top = 101
  end
  object dsSelecHuespedesPorPiso: TDataSource
    DataSet = spSelecHuespedesPorPiso
    Left = 144
    Top = 117
  end
  object spSelecHuespedesPorMotivoYPorPiso: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecHuespedesPorMotivoYPorPiso;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vMotivoHospedaje'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vPiso'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end>
    Left = 24
    Top = 149
  end
  object dsSelecHuespedesPorMotivoYPorPiso: TDataSource
    DataSet = spSelecHuespedesPorMotivoYPorPiso
    Left = 144
    Top = 165
  end
  object spMostrarProvinciasCubanasParaDatosLaborales: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecProvinciasCubanasParaDatosLaborales;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end>
    Left = 376
    Top = 65429
  end
  object dsMostrarProvinciasCubanasParaDatosLaborales: TDataSource
    DataSet = spMostrarProvinciasCubanasParaDatosLaborales
    Left = 528
    Top = 65445
  end
  object dsMostrarMunicipiosParaDatosLaboralesPorID_Provincia: TDataSource
    DataSet = spMostrarMunicipiosParaDatosLaboralesPorID_Provincia
    Left = 528
    Top = 65493
  end
  object spMostrarMunicipiosParaDatosLaboralesPorID_Provincia: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecMunicipiosParaDatosLaboralesPorID_Provincia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vID_Provincia'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end>
    Left = 376
    Top = 65477
  end
  object spSelecHabConVacantesTotalesYConCamasParaRegistro: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecHabitacionesConVacantesTotalesYConCamasParaRegistro;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end>
    Left = 720
    Top = 62
  end
  object spSelecHabConVacantesTotalesYConLiterasParaRegistro: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecHabitacionesConVacantesTotalesYConLiterasParaRegistro;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end>
    Left = 720
    Top = 118
  end
  object spSelecHabConVacantesTotalesYConLiterasAbajoParaRegistro: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 
      'SelecHabitacionesConVacantesTotalesYConLiterasAbajoParaRegistro;' +
      '1'
    Parameters = <>
    Left = 720
    Top = 174
  end
  object spSelecHabConVacantesTotalesYConLiterasArribaParaRegistro: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 
      'SelecHabitacionesConVacantesTotalesYConLiterasArribaParaRegistro' +
      ';1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end>
    Left = 720
    Top = 230
  end
  object spSelecHabConVacantesPorPisoParaRegistro: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecHabitacionesConVacantesPorPisoParaRegistro;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vPiso'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end>
    Left = 720
    Top = 286
  end
  object spSelecHabConVacantesPorPisoYConCamasParaRegistro: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecHabitacionesConVacantesPorPisoYConCamasParaRegistro;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vPiso'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end>
    Left = 720
    Top = 342
  end
  object spSelecHabConVacantesPorPisoYConLiterasParaRegistro: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecHabitacionesConVacantesPorPisoYConLiterasParaRegistro;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vPiso'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end>
    Left = 720
    Top = 398
  end
  object spSelecHabConVacantesPorPisoYConLiterasAbajoParaRegistro: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 
      'SelecHabitacionesConVacantesPorPisoYConLiterasAbajoParaRegistro;' +
      '1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vPiso'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end>
    Left = 720
    Top = 451
  end
  object dsSelecHabConVacantesTotalesYConCamasParaRegistro: TDataSource
    DataSet = spSelecHabConVacantesTotalesYConCamasParaRegistro
    Left = 896
    Top = 78
  end
  object dsSelecHabConVacantesTotalesYConLiterasParaRegistro: TDataSource
    DataSet = spSelecHabConVacantesTotalesYConLiterasParaRegistro
    Left = 896
    Top = 132
  end
  object dsSelecHabConVacantesTotalesYConLiterasAbajoParaRegistro: TDataSource
    DataSet = spSelecHabConVacantesTotalesYConLiterasAbajoParaRegistro
    Left = 896
    Top = 188
  end
  object dsSelecHabConVacantesTotalesYConLiterasArribaParaRegistro: TDataSource
    DataSet = spSelecHabConVacantesTotalesYConLiterasArribaParaRegistro
    Left = 896
    Top = 244
  end
  object dsSelecHabConVacantesPorPisoParaRegistro: TDataSource
    DataSet = spSelecHabConVacantesPorPisoParaRegistro
    Left = 896
    Top = 300
  end
  object dsSelecHabConVacantesPorPisoYConCamasParaRegistro: TDataSource
    DataSet = spSelecHabConVacantesPorPisoYConCamasParaRegistro
    Left = 896
    Top = 355
  end
  object dsSelecHabConVacantesPorPisoYConLiterasParaRegistro: TDataSource
    DataSet = spSelecHabConVacantesPorPisoYConLiterasParaRegistro
    Left = 896
    Top = 412
  end
  object dsSelecHabConVacantesPorPisoYConLiterasAbajoParaRegistro: TDataSource
    DataSet = spSelecHabConVacantesPorPisoYConLiterasAbajoParaRegistro
    Left = 896
    Top = 467
  end
  object spSelecHabConVacantesPorPisoYConLiterasArribaParaRegistro: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 
      'SelecHabitacionesConVacantesPorPisoYConLiterasArribaParaRegistro' +
      ';1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vPiso'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end>
    Left = 720
    Top = 508
  end
  object dsSelecHabConVacantesPorPisoYConLiterasArribaParaRegistro: TDataSource
    DataSet = spSelecHabConVacantesPorPisoYConLiterasArribaParaRegistro
    Left = 896
    Top = 539
  end
  object spSelecCamasLibresPorID_HabitacionParaRegistro: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecCamasLibresPorID_HabitacionParaRegistro;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vid_Habitacion'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end>
    Left = 27
    Top = 325
  end
  object spSelecLiterasLibresPorID_HabitacionParaRegistro: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecLiterasLibresPorID_HabitacionParaRegistro;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vid_Habitacion'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end>
    Left = 27
    Top = 381
  end
  object spSelecLiterasArribaLibresPorID_HabitacionParaRegistro: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecLiterasArribaLibresPorID_HabitacionParaRegistro;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vid_Habitacion'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end>
    Left = 27
    Top = 437
  end
  object spSelecLiterasAbajoLibresPorID_HabitacionParaRegistro: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecLiterasAbajoLibresPorID_HabitacionParaRegistro;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vid_Habitacion'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end>
    Left = 27
    Top = 501
  end
  object dsSelecCamasLibresPorID_HabitacionParaRegistro: TDataSource
    DataSet = spSelecCamasLibresPorID_HabitacionParaRegistro
    Left = 179
    Top = 341
  end
  object dsSelecLiterasLibresPorID_HabitacionParaRegistro: TDataSource
    DataSet = spSelecLiterasLibresPorID_HabitacionParaRegistro
    Left = 179
    Top = 397
  end
  object dsSelecLiterasArribaLibresPorID_HabitacionParaRegistro: TDataSource
    DataSet = spSelecLiterasArribaLibresPorID_HabitacionParaRegistro
    Left = 179
    Top = 453
  end
  object dsSelecLiterasAbajoLibresPorID_HabitacionParaRegistro: TDataSource
    DataSet = spSelecLiterasAbajoLibresPorID_HabitacionParaRegistro
    Left = 179
    Top = 517
  end
  object spSelecHuespedPorID_Huesped: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecHuespedPorID_Huesped;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@vID_Huesped'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end>
    Left = 24
    Top = 197
  end
  object dsSelecHuespedPorID_Huesped: TDataSource
    DataSet = spSelecHuespedPorID_Huesped
    Left = 144
    Top = 213
  end
  object spModificarHuespedPorID_Huesped: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'ModificarHuespedPorID_Huesped;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vViejoID_Huesped'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end
      item
        Name = '@vNuevoNombre'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vNuevoCarneIdentidad'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vNuevoApellidos'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vNuevoTelefonoParticular'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vNuevoPais'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vNuevoEmailHuesped'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vNuevoProvinciaHuesped'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vNuevoMunicipioHuesped'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vNuevoDireccionParticular'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vNuevoNombreCentroLaboral'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vNuevoEmailCentroLaboral'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vNuevoTelefonoCentroLaboral'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vNuevoProvinciaCentroLaboral'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vNuevoMunicipioCentroLaboral'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vNuevoDireccionCentroLaboral'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vNuevoMotivoHospedaje'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vNuevoModalidad'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vNuevoFechaInicioActividad'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vNuevoFechaFinalActividad'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vNuevoTituloActividad'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vNuevoNombreInstitucionActividad'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vNuevoEmailActividad'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vNuevoTelefonoActividad'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vNuevoNombreCoordinadorActividad'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vNuevoDireccionActividad'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vNuevoDerechoADesayuno'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vNuevoDerechoAAlmuerzo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vNuevoDerechoAComida'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vNuevoLugarConsumo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vNuevoFechaFinalHospedaje'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 0d
      end
      item
        Name = '@vIncidencias'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end>
    Left = 544
    Top = 269
  end
  object spSelecID_ProvinciaCubanaHuespedPorNombreProvincia: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecID_ProvinciaCubanaHuespedPorNombreProvincia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@vNombreProvincia'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end>
    Left = 320
    Top = 7
  end
  object spSelecID_MunicipioCubanoHuespedPorNombreMunicipio: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecID_MunicipioCubanoHuespedPorNombreMunicipio;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vNombreMunicipio'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end>
    Left = 320
    Top = 58
  end
  object dsSelecID_ProvinciaCubanaHuespedPorNombreProvincia: TDataSource
    DataSet = spSelecID_ProvinciaCubanaHuespedPorNombreProvincia
    Left = 480
    Top = 21
  end
  object dsSelecID_MunicipioCubanoHuespedPorNombreMunicipio: TDataSource
    DataSet = spSelecID_MunicipioCubanoHuespedPorNombreMunicipio
    Left = 480
    Top = 69
  end
  object spSelecID_ProvinciaCubanaCentroLaboralPorNombreProvincia: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecID_ProvinciaCubanaCentroLaboralPorNombreProvincia;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vNombreProvincia'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end>
    Left = 320
    Top = 111
  end
  object spSelecID_MunicipioCubanoCentroLaboralPorNombreMunicipio: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecID_MunicipioCubanoCentroLaboralPorNombreMunicipio;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vNombreMunicipio'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end>
    Left = 320
    Top = 162
  end
  object dsSelecID_ProvinciaCubanaCentroLaboralPorNombreProvincia: TDataSource
    DataSet = spSelecID_ProvinciaCubanaCentroLaboralPorNombreProvincia
    Left = 480
    Top = 122
  end
  object dsSelecID_MunicipioCubanoCentroLaboralPorNombreMunicipio: TDataSource
    DataSet = spSelecID_MunicipioCubanoCentroLaboralPorNombreMunicipio
    Left = 480
    Top = 173
  end
  object spTrasladarHuespedDeCamaPorID_Huesped: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'TrasladarHuespedDeCamaPorID_Huesped;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vID_Huesped'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end
      item
        Name = '@vID_Cama'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end>
    Left = 544
    Top = 224
  end
  object spSelecCamaPorID_Cama: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecCamaPorID_Cama;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vID_Cama'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end>
    Left = 320
    Top = 280
  end
  object dsSelecCamaPorID_Cama: TDataSource
    DataSet = spSelecCamaPorID_Cama
    Left = 376
    Top = 280
  end
  object spSelecDatosTotalesDeHuespedPorID_Huesped: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecDatosTotalesDeHuespedPorID_Huesped;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@vID_Huesped'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end>
    Left = 256
    Top = 216
  end
  object dsSelecDatosTotalesDeHuespedPorID_Huesped: TDataSource
    DataSet = spSelecDatosTotalesDeHuespedPorID_Huesped
    Left = 392
    Top = 232
  end
  object spSelecOtrosHuespedesTotalesPorID_Huesped: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecOtrosHuespedesTotalesPorID_Huesped;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vID_Huesped'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end>
    Left = 384
    Top = 416
  end
  object spSelecOtrosHuespedesPorMotivoYPorID_Huesped: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecOtrosHuespedesPorMotivoYPorID_Huesped;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vMotivoHospedaje'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vID_Huesped'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end>
    Left = 384
    Top = 461
  end
  object spSelecOtrosHuespedesPorPisoYPorID_Huesped: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecOtrosHuespedesPorPisoYPorID_Huesped;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vPiso'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vID_Huesped'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end>
    Left = 384
    Top = 506
  end
  object spSelecOtrosHuespedesPorMotivoYPorPisoYPorID_Huesped: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecOtrosHuespedesPorMotivoYPorPisoYPorID_Huesped;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vMotivoHospedaje'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vPiso'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vID_Huesped'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end>
    Left = 384
    Top = 550
  end
  object dsSelecOtrosHuespedesTotalesPorID_Huesped: TDataSource
    DataSet = spSelecOtrosHuespedesTotalesPorID_Huesped
    Left = 523
    Top = 429
  end
  object dsSelecOtrosHuespedesPorMotivoYPorID_Huesped: TDataSource
    DataSet = spSelecOtrosHuespedesPorMotivoYPorID_Huesped
    Left = 524
    Top = 472
  end
  object dsSelecOtrosHuespedesPorPisoYPorID_Huesped: TDataSource
    DataSet = spSelecOtrosHuespedesPorPisoYPorID_Huesped
    Left = 524
    Top = 517
  end
  object dsSelecOtrosHuespedesPorMotivoYPorPisoYPorID_Huesped: TDataSource
    DataSet = spSelecOtrosHuespedesPorMotivoYPorPisoYPorID_Huesped
    Left = 524
    Top = 560
  end
  object spSelecHuespedPorCarneIdentidad: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecHuespedPorCarneIdentidad;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vCarneIdentidad'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end>
    Left = 472
    Top = 328
  end
  object dsSelecHuespedPorCarneIdentidad: TDataSource
    DataSet = spSelecHuespedPorCarneIdentidad
    Left = 576
    Top = 336
  end
  object spArchivarHuespedPorID_Huesped: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'ArchivarHuespedPorID_Huesped;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vID_Huesped'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end>
    Left = 568
    Top = 120
  end
end
