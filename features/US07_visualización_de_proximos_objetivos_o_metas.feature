Feature: Visualización de próximos objetivos o metas US07

Como usuario, quiero ver mis próximos objetivos de alimentación o salud en la pantalla de inicio, para estar siempre al tanto de mis metas.
Scenario 1:
 Given el usuario tiene metas definidas,
 When ingresa a la pantalla de inicio,
 Then se muestra una lista o tarjeta con la próxima meta o hito definido.
Scenario 2:
 Given no hay metas definidas,
 When el usuario ingresa a la pantalla de inicio,
 Then se invita al usuario a establecer nuevas metas.