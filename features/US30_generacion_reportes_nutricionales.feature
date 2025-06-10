Feature: Generación de Reportes Nutricionales US30
  Como usuario, quiero poder generar reportes nutricionales detallados sobre mi progreso,
  para tener un resumen claro de mis hábitos alimenticios y avances.

  Scenario: Generar reporte detallado y presentarlo
    Given que el usuario accede a la sección de reportes
    When selecciona el tipo de reporte que desea generar (por ejemplo, semanal, mensual)
    Then la app genera un reporte detallado y lo presenta en formato descargable o imprimible

  Scenario: Visualizar contenido detallado del reporte
    Given que el usuario ha generado un reporte
    When lo visualiza
    Then el reporte muestra información detallada como la cantidad de calorías consumidas, nutrientes, y comparaciones con los objetivos
