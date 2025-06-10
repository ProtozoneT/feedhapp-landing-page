Feature: Mensajes motivacionales en la pantalla de inicio US06
  Como usuario, quiero recibir mensajes motivacionales o consejos cortos en la pantalla de inicio
  para mantenerme animado y enfocado en mi objetivo.

  Scenario: Mostrar mensaje motivacional
    Given que el usuario accede a la pantalla de inicio
    When visualiza su resumen nutricional
    Then se muestra un mensaje motivacional o consejo corto junto al resumen
