class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service {'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user => 'root',
    type => 'ssh-rsa',
    key => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCois0R5irjEyLOQPCAWzC0sb4IZe2upwHBxYte3g5FSL2GOck744jsUZxvBm60VCfq8ridPcnvwZFNYt2Nmv+Dp302TjsP6lJhiAFm+m0iq9eTq97NZq01+OemRFKN0Pd8ls0F57RkPTbIv7cL39Z9OIGf1IchheLX7edFX5NvOw5wirqC1QhiaRkZ3F1fDznf2jJA1oHgUgYQrJiVQ14Rt6GC7ZAF2gfjyvtX5Y/gFxQp6ht5dQuVjANAMRhSxQAzY0nrCXhQxE2gRDdj5TTr4oGWasPALFNEoEus+ZRDMXVUlpDLmUDbESIfgIPy6MXUg5Yt3Vn0RuwF7NLxkNCz',
  }
}
