Feature: Registro rápido de alimentos desde el resumen diario US02
  Como usuario, quiero tener la opción de ingresar alimentos directamente desde la pantalla de inicio,
  para registrar rápidamente lo que voy comiendo.

  Scenario: Redirección a pantalla de registro
    Given que el usuario está en la pantalla de inicio
    When pulsa el botón "Ingresar comida"
    Then es redirigido a la pantalla de registro con el campo de alimento listo para completar

  Scenario: Actualización automática del resumen diario
    Given que el usuario ha registrado un alimento
    When completa el registro
    Then el resumen diario se actualiza automáticamente
