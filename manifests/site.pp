node puppet.local {
  include role::master
}
node puppet.qualcomm.com {
  include role::master
  file {'/etc/secret_password.txt':
    ensure => file,
    content => lookup('secret_password'),
  }
}
node default {
  include role::master
}
