class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service {'sshd':
    ensure => 'running',
    enable => 'true',
  }
 ssh_authorized_key { 'root@master.puppet.vm':
   ensure  => present,
   user    => 'root',
   type    => 'ssh-rsa',
   key     => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDnmP/l3gyLL2JmjdU0tLG9GJ4q5lJUxev0Ga4srx08GzyG57BMmri2Xfj1he4JU09+GoNVbz8+wVuZMI8JFqXCONrqu1x4uRadC3gZu8PEcpgF8o9u/hzRGKSSbQjl8I5AbNHcD2vkdlBVAm0BSSLbqOcMJqULuBWmTCYdn7e6Whrfs1IeFoAOb3OWmhPC7V8g34+AmxO0P4Aqf+n8y/1MeloGj7CVlYAZLEMWgxxZ2WS+guhBm7ueYv3kCwikIuIW3yW/Md8G/1P60hHGs98pejQ8nACgJLr56YbRzwHAhKMFkL1jU3yk6jOv6uImwmvIN5O5Kpt0XJuY19gXWBtr',
  }
}
