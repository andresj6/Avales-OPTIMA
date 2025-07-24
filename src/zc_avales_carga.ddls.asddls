@Metadata.allowExtensions: true
@EndUserText.label: '###GENERATED Core Data Service Entity'
@AccessControl.authorizationCheck: #CHECK
define root view entity ZC_AVALES_CARGA
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_AVALES_CARGA
{
  key Id,
  Attachment,
  MimeType,
  FileName,
  CreatedBy,
  CreatedAt,
  LocalLastChangedBy,
  LocalLastChangedAt,
  LastChangedAt
  
}
