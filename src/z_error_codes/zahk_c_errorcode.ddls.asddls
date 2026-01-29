@EndUserText.label: 'Maintain Error Code'
@AccessControl.authorizationCheck: #MANDATORY
//@AccessControl.authorizationCheck: #NOT_ALLOWED
@Metadata.allowExtensions: true
define view entity ZAHK_C_ErrorCode
  as projection on ZAHK_I_ErrorCode
{
  key ErrorCode,
  LastChangedAt,
  @Consumption.hidden: true
  LocalLastChangedAt,
  @Consumption.hidden: true
  SingletonID,
  _ErrorCodeAll : redirected to parent ZAHK_C_ErrorCode_S,
  _ErrorCodeText : redirected to composition child ZAHK_C_ErrorCodeText,
  _ErrorCodeText.Description : localized
}
