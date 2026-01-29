CLASS lhc_zahk_i_errorcode_s DEFINITION INHERITING FROM cl_abap_behavior_handler FINAL.
  PUBLIC SECTION.
    CONSTANTS co_entity               TYPE abp_entity_name                        VALUE `ZAHK_I_ERRORCODE_S`.
    CONSTANTS co_transport_object     TYPE mbc_cp_api=>indiv_transaction_obj_name VALUE `ZAHKERRORCODE`.
    CONSTANTS co_authorization_entity TYPE abp_entity_name                        VALUE `ZAHK_I_ERRORCODE`.

  PRIVATE SECTION.
    METHODS get_instance_features FOR INSTANCE FEATURES
              IMPORTING
                keys REQUEST requested_features FOR ErrorCodeAll
              RESULT result.
    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
              IMPORTING
                 REQUEST requested_authorizations FOR ErrorCodeAll
              RESULT result.
ENDCLASS.


CLASS lhc_zahk_i_errorcode_s IMPLEMENTATION.
  METHOD get_instance_features.
    mbc_cp_api=>rap_bc_api( )->get_instance_features( transport_object   = co_transport_object
                                                      entity             = co_entity
                                                      keys               = REF #( keys )
                                                      requested_features = REF #( requested_features )
                                                      result             = REF #( result )
                                                      failed             = REF #( failed )
                                                      reported           = REF #( reported ) ).
  ENDMETHOD.

  METHOD get_global_authorizations.
*    mbc_cp_api=>rap_bc_api( )->get_global_authorizations( entity                   = co_authorization_entity
*                                                          requested_authorizations = REF #( requested_authorizations )
*                                                          result                   = REF #( result )
*                                                          reported                 = REF #( reported ) ).
  ENDMETHOD.
ENDCLASS.


CLASS lsc_zahk_i_errorcode_s DEFINITION INHERITING FROM cl_abap_behavior_saver FINAL.
  PROTECTED SECTION.
    METHODS save_modified REDEFINITION.
ENDCLASS.


CLASS lsc_zahk_i_errorcode_s IMPLEMENTATION.
  METHOD save_modified ##NEEDED.
  ENDMETHOD.
ENDCLASS.


CLASS lhc_zahk_i_errorcodetext DEFINITION INHERITING FROM cl_abap_behavior_handler FINAL.
  PUBLIC SECTION.
    CONSTANTS co_entity TYPE sxco_cds_object_name VALUE `ZAHK_I_ERRORCODETEXT`.

  PRIVATE SECTION.
    METHODS get_global_features FOR GLOBAL FEATURES
              IMPORTING
                REQUEST requested_features FOR ErrorCodeText
              RESULT result.
ENDCLASS.


CLASS lhc_zahk_i_errorcodetext IMPLEMENTATION.
  METHOD get_global_features.
    mbc_cp_api=>rap_bc_api( )->get_global_features( transport_object   = lhc_ZAHK_I_ErrorCode_S=>co_transport_object
                                                    entity             = co_entity
                                                    requested_features = REF #( requested_features )
                                                    result             = REF #( result )
                                                    reported           = REF #( reported ) ).
  ENDMETHOD.
ENDCLASS.


CLASS lhc_zahk_i_errorcode DEFINITION INHERITING FROM cl_abap_behavior_handler FINAL.
  PUBLIC SECTION.
    CONSTANTS co_entity TYPE sxco_cds_object_name VALUE `ZAHK_I_ERRORCODE`.

  PRIVATE SECTION.
    METHODS get_global_features FOR GLOBAL FEATURES
              IMPORTING
                REQUEST requested_features FOR ErrorCode
              RESULT result.
    METHODS copy FOR MODIFY
              IMPORTING
                keys FOR ACTION ErrorCode~Copy.
    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
              IMPORTING
                 REQUEST requested_authorizations FOR ErrorCode
              RESULT result.
    METHODS get_instance_features FOR INSTANCE FEATURES
              IMPORTING
                keys REQUEST requested_features FOR ErrorCode
              RESULT result.
ENDCLASS.


CLASS lhc_zahk_i_errorcode IMPLEMENTATION.
  METHOD get_global_features.
    mbc_cp_api=>rap_bc_api( )->get_global_features( transport_object   = lhc_ZAHK_I_ErrorCode_S=>co_transport_object
                                                    entity             = co_entity
                                                    requested_features = REF #( requested_features )
                                                    result             = REF #( result )
                                                    reported           = REF #( reported ) ).
  ENDMETHOD.

  METHOD copy.
    mbc_cp_api=>rap_bc_api( )->copy_by_association( entity   = co_entity
                                                    keys     = REF #( keys )
                                                    mapped   = REF #( mapped )
                                                    failed   = REF #( failed )
                                                    reported = REF #( reported ) ).
  ENDMETHOD.

  METHOD get_global_authorizations.
*    mbc_cp_api=>rap_bc_api( )->get_global_authorizations(
*        entity                   = lhc_ZAHK_I_ErrorCode_S=>co_authorization_entity
*        requested_authorizations = REF #( requested_authorizations )
*        result                   = REF #( result )
*        reported                 = REF #( reported ) ).
  ENDMETHOD.

  METHOD get_instance_features.
    mbc_cp_api=>rap_bc_api( )->get_action_features( entity             = co_entity
                                                    keys               = REF #( keys )
                                                    requested_features = REF #( requested_features )
                                                    result             = REF #( result )
                                                    failed             = REF #( failed )
                                                    reported           = REF #( reported ) ).
  ENDMETHOD.
ENDCLASS.
