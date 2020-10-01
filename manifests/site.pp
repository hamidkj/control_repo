node default {
}
node 'master_puppet.vm' {
  include role::master_server
}

