object DataModuleArchivoDeRegistros: TDataModuleArchivoDeRegistros
  OldCreateOrder = False
  Top = 154
  Height = 533
  Width = 768
  object spSelecRegistrosDeArchivoPorCarneIdentidadPorNombreYPorApellido: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 
      'SelecRegistrosArchivadosPorCarneIdentidadPorNombreYPorApellidos;' +
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
        Name = '@vCarneIdentidad'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end
      item
        Name = '@vNombre'
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
      end>
    Left = 48
    Top = 8
  end
  object spSelecRegistrosDeArchivoPorCarneIdentidadYPorNombre: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecRegistrosArchivadosPorCarneIdentidadYPorNombre;1'
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
      end
      item
        Name = '@vNombre'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end>
    Left = 48
    Top = 56
  end
  object spSelecRegistrosDeArchivoPorCarneIdentidadYPorApellidos: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecRegistrosArchivadosPorCarneIdentidadYPorApellidos;1'
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
      end
      item
        Name = '@vApellidos'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end>
    Left = 48
    Top = 104
  end
  object spSelecRegistrosDeArchivoPorNombreYPorApellidos: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecRegistrosArchivadosPorNombreYPorApellidos;1'
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
        Name = '@vApellidos'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end>
    Left = 48
    Top = 160
  end
  object spSelecRegistrosDeArchivoPorCarneIdentidad: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecRegistrosArchivadosPorCarneIdentidad;1'
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
    Left = 48
    Top = 216
  end
  object spSelecRegistrosDeArchivoPorNombre: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecRegistrosArchivadosPorNombre;1'
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
      end>
    Left = 48
    Top = 272
  end
  object spSelecRegistrosDeArchivoPorApellidos: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecRegistrosArchivadosPorApellidos;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vApellidos'
        Attributes = [paNullable]
        DataType = ftString
        Size = 2147483647
        Value = ''
      end>
    Left = 48
    Top = 328
  end
  object dsSelecRegistrosDeArchivoPorCarneIdentidadPorNombreYPorApellido: TDataSource
    DataSet = spSelecRegistrosDeArchivoPorCarneIdentidadPorNombreYPorApellido
    Left = 240
    Top = 24
  end
  object dsSelecRegistrosDeArchivoPorCarneIdentidadYPorNombre: TDataSource
    DataSet = spSelecRegistrosDeArchivoPorCarneIdentidadYPorNombre
    Left = 240
    Top = 72
  end
  object dsSelecRegistrosDeArchivoPorCarneIdentidadYPorApellidos: TDataSource
    DataSet = spSelecRegistrosDeArchivoPorCarneIdentidadYPorApellidos
    Left = 240
    Top = 120
  end
  object dsSelecRegistrosDeArchivoPorNombreYPorApellidos: TDataSource
    DataSet = spSelecRegistrosDeArchivoPorNombreYPorApellidos
    Left = 240
    Top = 176
  end
  object dsSelecRegistrosDeArchivoPorCarneIdentidad: TDataSource
    DataSet = spSelecRegistrosDeArchivoPorCarneIdentidad
    Left = 240
    Top = 232
  end
  object dsSelecRegistrosDeArchivoPorNombre: TDataSource
    DataSet = spSelecRegistrosDeArchivoPorNombre
    Left = 240
    Top = 288
  end
  object dsSelecRegistrosDeArchivoPorApellidos: TDataSource
    DataSet = spSelecRegistrosDeArchivoPorApellidos
    Left = 240
    Top = 344
  end
  object spSelecRegistrosArchivadosPorIntervalosDeFechasFinalHospedaje: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecRegistrosArchivadosPorIntervalosDeFechasFinalHospedaje;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vFechaA'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 0d
      end
      item
        Name = '@vFechaB'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 0d
      end>
    Left = 496
    Top = 8
  end
  object spSelecRegistrosArchivadosPorIntervalosDeFechasInicioHospedaje: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecRegistrosArchivadosPorIntervalosDeFechasInicioHospedaje;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vFechaA'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 0d
      end
      item
        Name = '@vFechaB'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 0d
      end>
    Left = 496
    Top = 88
  end
  object dsSelecRegistrosArchivadosPorIntervalosDeFechasFinalHospedaje: TDataSource
    DataSet = spSelecRegistrosArchivadosPorIntervalosDeFechasFinalHospedaje
    Left = 680
    Top = 24
  end
  object dsSelecRegistrosArchivadosPorIntervalosDeFechasInicioHospedaje: TDataSource
    DataSet = spSelecRegistrosArchivadosPorIntervalosDeFechasInicioHospedaje
    Left = 680
    Top = 104
  end
  object spSelecRegistrosArchivadosEnIntervalosDeFechas: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecRegistrosArchivadosEnIntervalosDeFechas;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vFechaA'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 0d
      end
      item
        Name = '@vFechaB'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 0d
      end>
    Left = 496
    Top = 168
  end
  object dsSelecRegistrosArchivadosEnIntervalosDeFechas: TDataSource
    DataSet = spSelecRegistrosArchivadosEnIntervalosDeFechas
    Left = 680
    Top = 184
  end
  object spSelecRegistroArchivadoPorID_HuespedHistorico: TADOStoredProc
    Connection = DataModuleConexionGeneral.ADOConnectionGeneral
    ProcedureName = 'SelecRegistroArchivadoPorID_HuespedHistorico;1'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = Null
      end
      item
        Name = '@vID_HuespedHistorico'
        Attributes = [paNullable]
        DataType = ftLargeint
        Precision = 19
        Value = '0'
      end>
    Left = 504
    Top = 280
  end
  object dsSelecRegistroArchivadoPorID_HuespedHistorico: TDataSource
    DataSet = spSelecRegistroArchivadoPorID_HuespedHistorico
    Left = 680
    Top = 296
  end
end
