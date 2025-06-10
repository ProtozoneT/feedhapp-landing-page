Feature: Acceso directo al sistema experto desde la pantalla de inicio US03
  Como usuario, quiero poder consultar rápidamente al sistema experto desde la pantalla de inicio
  para resolver dudas sobre mi nutrición.

  Scenario: Abrir chat del sistema experto
    Given que el usuario está en la pantalla de inicio
    When pulsa el botón del sistema experto
    Then se abre la ventana de chat sin errores
