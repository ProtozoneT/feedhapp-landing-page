Feature: Consulta general al sistema experto US09
Como usuario, quiero poder hacer preguntas generales sobre nutrición al sistema experto, para resolver mis dudas en cualquier momento.
Scenario 1:
 Given el usuario envía una consulta general
 When el sistema experto recibe la pregunta
 Then devuelve una respuesta adecuada y clara
 Scenario 2:
 Given la consulta enviada no puede ser respondida
 When el sistema experto procesa la pregunta
 Then informa al usuario que la consulta no está disponible