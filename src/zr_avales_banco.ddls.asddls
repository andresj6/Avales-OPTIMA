@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
define root view entity ZR_AVALES_BANCO
  as select from zaavales_banco
  association to ZR_AVALES_SUM as _SUMA_TOTAL on _SUMA_TOTAL.NumBanco = $projection.NumBanco and _SUMA_TOTAL.Compania = $projection.Compania
  association to ZR_AVALES_SUM_OTR as _SUMA_TOTAL_OTR on _SUMA_TOTAL_OTR.NumBanco = $projection.NumBanco and _SUMA_TOTAL_OTR.Compania = $projection.Compania
{
  key num_banco as NumBanco,
  key compania as Compania,
  limite_avales as LimiteAvales,
  _SUMA_TOTAL.ImporteAval as TotalImporteAvales,
  comision_formalizacion as ComisionFormalizacion,
  minimo_formalizacion as MinimoFormalizacion,
  comision_mantenimiento as ComisionMantenimiento,
  minimo_mantenimiento as MinimoMantenimiento,
  _SUMA_TOTAL_OTR.ImporteAval as ImporteOtrosAvales,
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
