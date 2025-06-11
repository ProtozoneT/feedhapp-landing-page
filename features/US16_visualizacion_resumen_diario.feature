Feature: Visualización del resumen diario US16
  Como usuario, quiero ver un resumen diario de los 
  alimentos consumidos y los nutrientes ingeridos, para tener 
  control de mi dieta cada día.

  Scenario: Visualización del resumen diario de alimentos y nutrientes
    Given que el usuario ha registrado alimentos
    When consulta su resumen diario
    Then se muestra la lista de alimentos y los valores
     nutricionales acumulados del día

  Scenario: Consulta del resumen de un día anterior
    Given que el usuario desea revisar un día anterior
    When cambia la fecha
    Then el sistema muestra el resumen correspondiente a esa fecha
