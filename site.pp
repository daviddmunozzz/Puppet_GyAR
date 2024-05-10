# Obtener la dirección IP del nodo
$node_macaddress = $facts['macaddress']


# Verificar si la dirección IP coincide con la del nodo que requiere el perfil alternativo
if $node_macaddress == '08:00:27:41:d2:87' {
    include alt_profile
    include send_notification
} else {
     # Incluir el perfil por defecto para todos los nodos
    include default_profile
    include send_notification
}
