@EndUserText.label: 'Maintain Error Code Text'
@AccessControl.authorizationCheck: #MANDATORY
//@AccessControl.authorizationCheck: #NOT_ALLOWED
@Metadata.allowExtensions: true
define view entity ZAHK_C_ErrorCodeText
  as projection on ZAHK_I_ErrorCodeText
{
  @ObjectModel.text.element: [ 'LanguageName' ]
  @Consumption.valueHelpDefinition: [ {
    entity: {
      name: 'I_Language', 
      element: 'Language'
    }
  } ]
  key Langu,
  key ErrorCode,
  Description,
  @Consumption.hidden: true
  LocalLastChangedAt,
  @Consumption.hidden: true
  SingletonID,
  _LanguageText.LanguageName : localized,
  _ErrorCode : redirected to parent ZAHK_C_ErrorCode,
  _ErrorCodeAll : redirected to ZAHK_C_ErrorCode_S
}
