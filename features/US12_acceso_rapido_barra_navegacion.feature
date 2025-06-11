Feature: Acceso rápido desde la barra de navegación US12
   Como usuario, quiero poder acceder fácilmente al sistema experto
   desde la barra inferior para iniciar consultas rápidas.

  Scenario: Acceso al sistema experto desde la barra de navegación
    Given que el usuario está navegando por la app
    When pulsa el botón del sistema experto en la barra inferior
    Then es redirigido al chat del sistema experto

  Scenario: Error de conexión al intentar acceder al sistema experto
    Given que hay problemas de conexión
    When el usuario intenta acceder al sistema experto
    Then se muestra un mensaje de error


