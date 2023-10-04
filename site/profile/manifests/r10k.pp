class profile::r10k {
  class {'r10k':
    version => '1.5.1',
    sources => {
     'puppet' => {
        'remote' => 'https://github.com/match919/control-repo/',
        'basedir' => "${::settings::confdir}/environments",
        'prefix'  => false,
     },
    },
    manage_modulepath => false
  }
  class {'r10k::webhook::config':
    use_mcollective => false,
    enable_ssl => false,
  }
  class {'r10k:webhook':
    user  => 'root',
    group => '0',
  }
  Class['r10k::webhook::config'] -> Class['r10k::webhook']
}
