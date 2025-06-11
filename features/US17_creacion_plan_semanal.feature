Feature: Creación de un plan semanal de comidas US17
  Como usuario, quiero poder crear y visualizar un plan
   semanal de comidas, para organizar mi alimentación con anticipación

  Scenario: Gestión del plan semanal de comidas
    Given que el usuario accede al plan semanal
    When agrega, edita o elimina comidas
    Then los cambios se guardan correctamente

  Scenario: Reutilización de planes de comida anteriores
    Given que el usuario tiene planes anteriores
    When selecciona la opción de copiar
    Then puede reutilizar planes anteriores
