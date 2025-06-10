Feature: Notificaciones diarias para mantener constancia US05
  Como usuario, quiero recibir notificaciones diarias para registrar mis comidas y avances,
  ayudándome a mantener constancia.

  Scenario: Recibir notificaciones habilitadas
    Given que las notificaciones están habilitadas
    When llega la hora establecida
    Then el usuario recibe notificaciones diarias puntualmente

  Scenario: No recibir notificaciones deshabilitadas
    Given que las notificaciones están deshabilitadas en configuración
    When llega la hora establecida
    Then no se reciben notificaciones
