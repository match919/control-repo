node puppet.local {
  include role::master
}
node puppet.qualcomm.com {
  include role::master
}
node default {
  include role::master
}
