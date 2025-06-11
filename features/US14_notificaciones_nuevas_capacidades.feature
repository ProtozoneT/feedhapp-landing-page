Feature: Notificación de nuevas capacidades del sistema experto US14
   Como usuario, quiero recibir notificaciones cuando el sistema
   experto tenga nuevas funciones o actualizaciones importantes
   para aprovecharlas al máximo.

 Scenario: Notificación de nuevas funcionalidades del sistema experto
    Given que hay nuevas funciones en el sistema experto
    When se habilitan
    Then el usuario recibe notificaciones claras sobre las nuevas funcionalidades

Scenario: Gestión de preferencias de notificación en configuración
    Given que el usuario accede a configuración
    When modifica las opciones de notificaciones
    Then puede activar o desactivar las notificaciones sobre el sistema experto