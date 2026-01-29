@EndUserText.label: 'Error Code'
@AccessControl.authorizationCheck: #MANDATORY
//@AccessControl.authorizationCheck: #NOT_ALLOWED
define view entity ZAHK_I_ErrorCode
  as select from ZAHKERRCODE
  association to parent ZAHK_I_ErrorCode_S as _ErrorCodeAll on $projection.SingletonID = _ErrorCodeAll.SingletonID
  composition [0..*] of ZAHK_I_ErrorCodeText as _ErrorCodeText
{
  key ERROR_CODE as ErrorCode,
  @Semantics.systemDateTime.lastChangedAt: true
  LAST_CHANGED_AT as LastChangedAt,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  LOCAL_LAST_CHANGED_AT as LocalLastChangedAt,
  1 as SingletonID,
  _ErrorCodeAll,
  _ErrorCodeText
}
