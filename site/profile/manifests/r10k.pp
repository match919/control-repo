class profile::r10k {
  class {'r10k':
    version => '3.15.2',
    sources => {
     'puppet' => {
        'remote' => 'https://github.com/match919/control-repo/',
        'basedir' => "${::settings::confdir}/environments",
        'prefix'  => false,
     },
    },
    manage_modulepath => false
  }
  class {'r10k::webhook':
    user  => 'root',
    group => '0',
    R10k::Webhook::Config::Server::Tls $tls    = {
      enabled     => false,
      certificate => undef,
      key         => undef,
    },
  }
}
