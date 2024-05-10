class default_profile {
    # Crear directorios
    file { ['/tmp/php', '/etc/config', '/tmp/photos']:
        ensure => directory,
        mode   => '0755',
        owner  => 'root',
        group  => 'root',
    }

    # Instalar paquetes
    package { ['htop', 'gimp', 'vim', 'python3']:
        ensure => installed,
    }

    # Crear archivo con cadena indicando acciones realizadas
    file { '/etc/config/puppet_actions.log':
        ensure  => present,
        content => "[DEF]Se crearon los directorios /tmp/php, /etc/config y /tmp/photos. Se instalaron los paquetes htop, gimp y vim",
        mode    => '0644',
        owner   => 'root',
        group   => 'root',
    }

}
