Feature: Eliminar cuenta US26
  Como usuario, quiero poder eliminar permanentemente mi cuenta y todos mis datos,
  para tener control total sobre mi privacidad.

  Scenario: Borrar cuenta y cerrar sesión
    Given que el usuario accede a la opción de eliminar cuenta
    When confirma la acción
    Then la app borra la cuenta y cierra la sesión mostrando un mensaje de confirmación

  Scenario: Cancelar operación y regresar a pantalla anterior
    Given que el usuario accede a la opción de eliminar cuenta
    When cancela la operación
    Then la app no realiza ningún cambio y regresa a la pantalla anterior
