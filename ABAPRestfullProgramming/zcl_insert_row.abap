CLASS zcl_insert_row DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.
CLASS zcl_insert_row IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA lt_clients TYPE STANDARD TABLE OF zclients.

    TRY.
        lt_clients = VALUE #( ( id = cl_system_uuid=>create_uuid_c22_static(  )
                                name = 'ABAP2'
                                last_name  = 'MACHINE'
                                gender = 'M'
                                age = '30'
                                credit_available = 1000
                                currency_key = 'USD'

                             ) ).
      CATCH cx_uuid_error INTO DATA(lr_excep).
        out->write(
            data   =  lr_excep->get_text(  )
        ).
    ENDTRY.

    INSERT zclients FROM TABLE @lt_clients.

    out->write(
        data   =  lt_clients
    ).

  ENDMETHOD.
ENDCLASS.