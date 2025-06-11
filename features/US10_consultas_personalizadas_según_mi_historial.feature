Feature: Consultas personalizadas según mi historial US10
Como usuario, quiero que el sistema experto utilice mi información personal y mis registros anteriores para darme respuestas adaptadas a mi situación.

Scenario 1:
Given el usuario tiene información personal y registros anteriores
 When  envía una consulta
 Then la respuesta hace referencia a sus datos específicos (por ejemplo: “según tu peso actual…”)
Scenario 2:
 Given el usuario no tiene suficiente historial
 When envía una consulta
 Then el sistema ofrece una respuesta general e invita a completar más datos