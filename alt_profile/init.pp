class alt_profile {
    # Crear directorios
    file { ['/tmp/html', '/etc/configAlt', '/tmp/documents']:
        ensure => directory,
        mode   => '0755',
        owner  => 'root',
        group  => 'root',
    }

    # Instalar paquetes
    package { ['nginx', 'mysql-server', 'git', 'python3']:
        ensure => installed,
    }

    # Crear archivo con cadena indicando acciones realizadas
    file { '/etc/config/puppet_actions.log':
        ensure  => present,
        content => "[ALT]Se crearon los directorios /home/alt/html, /etc/configAlt y /home/alt/documents. Se instalaron los paquetes nginx, mysqle-sever y git.",
        mode    => '0644',
        owner   => 'root',
        group   => 'root',
    }
}
