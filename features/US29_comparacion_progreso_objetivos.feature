Feature: Comparación de Progreso con Objetivos US29
  Como usuario, quiero poder comparar mi progreso con mis objetivos establecidos (peso, calorías, etc.),
  para saber si estoy alcanzando mis metas.

  Scenario: Mostrar comparación visual con objetivos
    Given que el usuario ha establecido objetivos en su perfil
    When consulta su progreso nutricional
    Then la app muestra una comparación visual entre sus resultados actuales y sus objetivos

  Scenario: Actualizar comparación al cambiar objetivos
    Given que el usuario está viendo su progreso comparado con los objetivos
    When cambia los objetivos en la sección de preferencias
    Then la app actualiza la comparación para reflejar los nuevos objetivos
