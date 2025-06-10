Feature: Visualización del resumen diario US01
  Como usuario, quiero ver en la pantalla de inicio un resumen diario de mis calorías, macronutrientes y progreso,
  para controlar fácilmente mi estado nutricional.

  Scenario: Resumen diario con datos actualizados
    Given que el usuario ha registrado comidas
    When ingresa a la pantalla de inicio
    Then se muestra el resumen diario con datos actualizados

  Scenario: Mensaje informativo sin datos
    Given que el usuario no ha registrado comidas
    When ingresa a la pantalla de inicio
    Then se muestra un mensaje informativo indicando que falta registrar información
