package{'mysql-server':
ensure =>installed,
require => Exec['aptget']
}
service {'mysql':
ensure => true,
enable => true,
require => Package['mysql-server'],
}

exec { 'aptget':
    command => '/usr/bin/apt-get update -y'
}
