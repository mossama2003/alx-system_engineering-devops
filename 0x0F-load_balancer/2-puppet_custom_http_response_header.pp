# custom header response Nginx
exec {'update':
    command => '/usr/bin/apt-get update',
}
-> package { 'nginx':
    ensure => 'present',
}
-> file_line { 'http_header':
    path => '/etc/nginx/nginx.conf',
    match => 'http {',
    line  => "http {\n\tadd_header X-Served-By \"${hostname}\";",
}
-> exec {'restart':
    command => '/usr/sbin/service nginx restart',
}
