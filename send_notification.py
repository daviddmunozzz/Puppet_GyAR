import requests
import sys

def enviar_notificacion(token, chat_id, mensaje):
    url = f"https://api.telegram.org/bot{token}/sendMessage"
    datos = {"chat_id": chat_id, "text": mensaje}
    requests.post(url, json=datos)

if __name__ == "__main__":
    ruta = sys.argv[1]

    with open(ruta, 'r') as archivo:
        mensaje = archivo.read()

    token = "6929988814:AAHRrVSZp8c_dbqG4CYo6ofZS8pL-JFG62E"
    chat_id = "662399950"

    enviar_notificacion(token, chat_id, mensaje)
