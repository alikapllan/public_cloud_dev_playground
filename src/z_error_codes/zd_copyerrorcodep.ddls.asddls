@EndUserText.label: 'Copy Error Code'
define abstract entity ZD_CopyErrorCodeP
{
  @EndUserText.label: 'New Error Code'
  @UI.defaultValue: #( 'ELEMENT_OF_REFERENCED_ENTITY: ErrorCode' )
  ErrorCode : zahk_error_codes;
}
