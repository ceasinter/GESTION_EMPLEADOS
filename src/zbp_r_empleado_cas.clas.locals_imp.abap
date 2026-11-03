CLASS lhc_Empleado DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      keys REQUEST requested_authorizations FOR Empleado RESULT result.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      REQUEST requested_authorizations FOR Empleado RESULT result.

    METHODS validateMandatory FOR VALIDATE ON SAVE
      IMPORTING keys FOR Empleado~validateMandatory.

ENDCLASS.

CLASS lhc_Empleado IMPLEMENTATION.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD validatemandatory.

    READ ENTITIES OF zr_empleado_cas IN LOCAL MODE
        ENTITY Empleado
          FIELDS ( Name )
          WITH CORRESPONDING #( keys )
        RESULT DATA(lt_empleados).

    LOOP AT lt_empleados INTO DATA(ls_empleado).
      IF ls_empleado-Name IS INITIAL.
        APPEND VALUE #( %tky = ls_empleado-%tky ) TO failed-empleado.
        APPEND VALUE #(
          %tky = ls_empleado-%tky
          %msg = new_message_with_text(
            severity = if_abap_behv_message=>severity-error
            text = 'El Campo Nombre es Obligatorio' )
          %element-Name = if_abap_behv=>mk-on
        ) to reported-empleado.

      ENDIF.
      ENDLOOP.
    ENDMETHOD.

ENDCLASS.
