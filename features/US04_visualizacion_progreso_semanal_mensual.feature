Feature: Visualización de progreso semanal/mensual desde la pantalla de inicio US04
  Como usuario, quiero ver un resumen visual rápido (gráfico o barra) de mi progreso semanal/mensual en la pantalla de inicio
  para evaluar mi avance.

  Scenario: Mostrar gráfico de progreso con datos
    Given que el usuario ha registrado datos durante la semana o mes
    When visualiza la pantalla de inicio
    Then se muestra un gráfico o resumen visual integrado bajo los datos diarios

  Scenario: Informar falta de datos para el progreso
    Given que no hay suficientes datos registrados
    When el usuario visualiza la pantalla de inicio
    Then se informa que aún no se puede mostrar el progreso
