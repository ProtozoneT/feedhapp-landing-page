Feature: Historial de consultas anteriores US13
  Como usuario, quiero poder revisar mis consultas anteriores
  con el sistema experto para recordar las recomendaciones recibidas.

  Scenario: Visualización del historial de consultas del sistema experto
    Given que el usuario accede al historial del sistema experto
    When consulta la lista
    Then puede ver sus consultas y respuestas anteriores ordenadas

  Scenario: Eliminación del historial de consultas del sistema experto
    Given que el usuario desea eliminar el historial
    When pulsa la opción de limpieza
    Then el historial se borra correctamente
