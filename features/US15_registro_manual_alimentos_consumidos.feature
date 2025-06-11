Feature: Registro manual de alimentos consumidos US15
  Como usuario, quiero poder ingresar manualmente los alimentos
   que consumo, para llevar un seguimiento diario de mi alimentación.

  Scenario: Registro manual de un alimento con datos completos
    Given que el usuario desea registrar un alimento
    When ingresa nombre, cantidad y hora
    Then el sistema guarda la información correctamente

  Scenario: Actualización automática del resumen diario tras registrar un alimento
    Given que el usuario ha registrado un alimento
    When vuelve a la pantalla principal
    Then el resumen diario se actualiza automáticamente