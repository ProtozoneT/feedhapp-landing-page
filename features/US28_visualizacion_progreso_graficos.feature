Feature: Visualización de Progreso con Gráficos US28
  Como usuario, quiero poder ver mi progreso nutricional representado en gráficos visuales,
  para poder comparar fácilmente mis avances en diferentes métricas.

  Scenario: Mostrar gráfico de evolución de métrica
    Given que el usuario accede a la sección de gráficos
    When selecciona la métrica deseada (peso, IMC, calorías, etc.)
    Then la app muestra un gráfico con la evolución de esa métrica a lo largo del tiempo

  Scenario: Ajustar gráfico por período de tiempo
    Given que el usuario está viendo el gráfico de su progreso
    When elige un período de tiempo (por ejemplo, semanal, mensual)
    Then la app ajusta el gráfico para mostrar los datos correspondientes al período seleccionado
