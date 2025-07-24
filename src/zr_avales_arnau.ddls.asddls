@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_AVALES_ARNAU
  as select from zaavales_arnau
{
  key num_aval as NumAval,
  @Consumption.valueHelpDefinition: [ {
        entity.name: 'I_BankVH',
        entity.element: 'BankCode',
        useForValidation: true
  } ]
  key num_banco as NumBanco,
  fecha as Fecha,
  @Consumption.valueHelpDefinition: [
    {
      entity.name: 'ZDA_VH_TIPOAVALES',
      entity.element: 'Descripcion',
      useForValidation: true
    }
  ]
  tipo_aval as TipoAval,
  importe_aval as ImporteAval,
  vencimiento as Vencimiento,
  saldo as Saldo,
  fecha_devolucion as FechaDevolucion,
  cancelado as Cancelado,
  descripcion as Descripcion,
  delegacion as Delegacion,
  comision_formalizacion as ComisionFormalizacion,
  comision_mantenimiento as ComisionMantenimiento,
  otros_avales as OtrosAvales,
  importe_aval_divad as ImporteAvalDivad,
  num_proyecto as NumProyecto,
  cod_cliente_principal as CodClientePrincipal,
  cod_agrupacion as CodAgrupacion,
  firma_digital as FirmaDigital,
  prorroga as Prorroga,
  num_prorrogas as NumProrrogas,
  duracion_inicial_contrato as DuracionInicialContrato,
  compania as Compania,
  cod_aval as CodAval,
  fecha_estimada_dev as FechaEstimadaDev,
  periodicidad_comision as PeriodicidadComision,
  @Semantics.largeObject: {
  mimeType: 'MimeType',
  fileName: 'Filename',
  contentDispositionPreference: #INLINE,
  acceptableMimeTypes: [ 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet' ] }
  attachment                as Attachment,

  @Semantics.mimeType: true
  mime_type                 as MimeType,
    
  file_name                  as Filename,
  @Semantics.user.createdBy: true
  created_by as CreatedBy,
  @Semantics.systemDateTime.createdAt: true
  created_at as CreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  local_last_changed_by as LocalLastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt
  
}

