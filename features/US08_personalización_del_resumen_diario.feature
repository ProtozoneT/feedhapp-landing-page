Feature: Personalización del resumen diario US08
Como usuario, quiero poder personalizar qué datos se muestran en mi resumen diario (por ejemplo, solo calorías o incluir macros), para ver sólo la información que más me interesa.
Scenario 1:
 Given el usuario accede a la configuración
 When elige las métricas que desea mostrar en su resumen diario
 Then se guardan las preferencias seleccionadas.
Scenario 2:
 Given el usuario ha guardado preferencias
 When visualiza el resumen diario
 Then este se actualiza mostrando solo la información elegida