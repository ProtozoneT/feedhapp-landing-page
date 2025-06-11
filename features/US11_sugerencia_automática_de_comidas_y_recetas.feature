Feature: Sugerencia automática de comidas y recetas US11
Como usuario, quiero que el sistema experto me sugiera comidas o recetas adecuadas según mis necesidades y preferencias registradas.

Scenario 1:
Given el usuario solicita sugerencias
 When el sistema experto procesa la solicitud
 Then se muestran comidas o recetas personalizadas
Scenario 2:
 Given no hay suficientes datos registrados
 When  el usuario solicita sugerencias
 Then el sistema pide completar información relevante
