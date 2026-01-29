@EndUserText.label: 'Error Code Singleton'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity ZAHK_I_ErrorCode_S
  as select from I_Language
    left outer join ZAHKERRCODE on 0 = 0
  composition [0..*] of ZAHK_I_ErrorCode as _ErrorCode
{
  key 1 as SingletonID,
  _ErrorCode,
  max( ZAHKERRCODE.LAST_CHANGED_AT ) as LastChangedAtMax
}
where I_Language.Language = $session.system_language
