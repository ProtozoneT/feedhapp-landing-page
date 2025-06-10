Feature: Registro de Progreso Nutricional US27
  Como usuario, quiero poder registrar mi progreso nutricional (por ejemplo, peso, IMC, calorías consumidas)
  para que la aplicación lleve un control de mis avances a lo largo del tiempo.

  Scenario: Guardar información y mostrar confirmación
    Given que el usuario accede a la sección de progreso
    When ingresa los datos de su progreso nutricional
    Then la app guarda la información y muestra un mensaje de confirmación

  Scenario: Mostrar todos los registros anteriores
    Given que el usuario ha registrado su progreso nutricional
    When consulta su historial
    Then la app muestra todos los registros anteriores en orden cronológico
