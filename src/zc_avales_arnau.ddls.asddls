@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@AccessControl.authorizationCheck: #CHECK
define root view entity ZC_AVALES_ARNAU
  provider contract transactional_query
  as projection on ZR_AVALES_ARNAU
{
  key NumAval,
  key NumBanco,
  Fecha,
  TipoAval,
  ImporteAval,
  Vencimiento,
  Saldo,
  FechaDevolucion,
  Cancelado,
  Descripcion,
  Delegacion,
  ComisionFormalizacion,
  ComisionMantenimiento,
  OtrosAvales,
  ImporteAvalDivad,
  NumProyecto,
  CodClientePrincipal,
  CodAgrupacion,
  FirmaDigital,
  Prorroga,
  NumProrrogas,
  DuracionInicialContrato,
  Compania,
  CodAval,
  FechaEstimadaDev,
  PeriodicidadComision,
  Attachment,
  MimeType,
  Filename,
  CreatedBy,
  CreatedAt,
  LocalLastChangedBy,
  LocalLastChangedAt,
  LastChangedAt
  
}
