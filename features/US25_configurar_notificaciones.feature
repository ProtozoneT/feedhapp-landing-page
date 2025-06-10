Feature: Configurar notificaciones US25
  Como usuario, quiero poder activar o desactivar las notificaciones de la aplicación según mis preferencias,
  para controlar las alertas que recibo.

  Scenario: Aplicar cambios y confirmar actualización
    Given que el usuario accede a la configuración de notificaciones
    When activa o desactiva una opción y guarda
    Then la app aplica los cambios y confirma la actualización
