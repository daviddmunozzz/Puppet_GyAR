class send_notification{
    file { '/tmp/notify.py':
    ensure  => present,
    content => file('/etc/notify/send_notification.py'),
    mode    => '0755',
    owner   => 'root',
    group   => 'root',

    }

    exec { 'send_notification':
    command => '/usr/bin/python3 /tmp/notify.py /etc/config/puppet_actions.log',
    logoutput => true,

    }
}
