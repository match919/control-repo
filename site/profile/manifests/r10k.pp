class profile::r10k {
  class {'r10k':
    remote => 'https://github.com/match919/control-repo/',
  }
  class {'r10k:webhook':
    user  => 'root',
    group => 'root',
  }  
}
