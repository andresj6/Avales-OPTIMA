@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@AccessControl.authorizationCheck: #CHECK
define root view entity ZC_AVALES_BANCO
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_AVALES_BANCO
{
  key NumBanco,
  key Compania,
  LimiteAvales,
  TotalImporteAvales,
  ComisionFormalizacion,
  MinimoFormalizacion,
  ComisionMantenimiento,
  MinimoMantenimiento,
  ImporteOtrosAvales,
  CreatedBy,
  CreatedAt,
  LocalLastChangedBy,
  LocalLastChangedAt,
  LastChangedAt
  
}
