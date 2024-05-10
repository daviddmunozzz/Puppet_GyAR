# Puppet
Para la ejecución de Puppet tenemos dos tipos de perfiles (defecto y alternativo), realizan la misma función realmente. El código de su manifiesto se encuentra en cada directorio respectivamente.  
Toda la información que se encuentra en el repositorio pertenece al nodo master.  

En el archivo `site.pp`, podemos ver en que casos se ejecuta la configuración para un perfil y para otro.

## Actualización
Hemos añadido la funcionalidad para que cuando termine la configuración, nos envíe una notificación a un canal de Telegram, que hemos creado previamente.
[Cómo crear un bot de telegram](https://sendpulse.com/latam/knowledge-base/chatbot/telegram/create-telegram-chatbot)  

Para realizar esta función he creado un script de python `send_notification.py` y un archivo de manifiesto send_notification, el cuál llama a la función. Explico más en detalle en el vídeo.  
[Enlace al vídeo](https://pruebasaluuclm-my.sharepoint.com/:v:/r/personal/david_munoz19_alu_uclm_es/Documents/Demo%20Eventos.mp4?csf=1&web=1&nav=eyJyZWZlcnJhbEluZm8iOnsicmVmZXJyYWxBcHAiOiJPbmVEcml2ZUZvckJ1c2luZXNzIiwicmVmZXJyYWxBcHBQbGF0Zm9ybSI6IldlYiIsInJlZmVycmFsTW9kZSI6InZpZXciLCJyZWZlcnJhbFZpZXciOiJNeUZpbGVzTGlua0NvcHkifX0&e=lTpEIv)
