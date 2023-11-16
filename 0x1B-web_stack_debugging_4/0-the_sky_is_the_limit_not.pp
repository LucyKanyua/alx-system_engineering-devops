# The below script enables nginx to serve a load of http requests

exec { 'increase_ulimit':
  command => '/bin/sed -i "s/15/4096/" /etc/default/nginx'
}

exec { 'restart_nginx':
  command => '/usr/sbin/service nginx restart'
}
