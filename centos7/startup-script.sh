#cloud-config

#package_upgrade: true

#packages:
#  - git
#  - xrdp
#  -

#runcmd:
 #- [ sh, -c, "yum groupinstall -y 'GNOME Desktop' 'Graphical Administration Tools'" ]
 #- [ sh, -c, "ln -sf /lib/systemd/system/runlevel5.target /etc/systemd/system/default.target" ]
 #- [ sh, -c, "rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm" ]
 #- [ sh, -c, "yum -y install xrdp tigervnc-server" ]
 #- [ sh, -c, "systemctl start xrdp" ]
 #- [ sh, -c, "systemctl enable xrdp" ]
 #- [ sh, -c, "systemctl enable firewalld" ]
 #- [ sh, -c, "systemctl start firewalld" ]
 #- [ sh, -c, "firewall-cmd --permanent --add-port=3389/tcp" ]
 #- [ sh, -c, "firewall-cmd --reload" ]
# - [ sh, -c, "yum update -y"]
# - [ sh, -c, "sudo reboot" ]
# - [ sh, -c, "yum install -y git"]
# - [ sh, -c, "mkdir -p $HOME/go/src/github.com/keti-openfx"]
# - [ sh, -c, "git clone https://github.com/keti-openfx/openfx.git $HOME/go/src/github.com/keti-openfx"]

#if something goes wrong this is the issue
write_files:
-   content: |
        # My new /etc/sysconfig/samba file
        #
        #         SMBDOPTIONS="-D"
    owner: root:root
    path: /etc/sysconfig/64bit_strstr_via_64bit_strstr_sse2_unaligned

users:
  - name: centos
    gecos: centos
    password: password
    lock-passwd: false
    sudo: ALL=(ALL) NOPASSWD:ALL
    ssh_authorized_keys:
      - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC5VnWrMdT5VijMka2AKXZjAdV9iycLh6HYWcXy1dqenReZujB9wwpDbnkWHVZ3jJ4I/IYFr9cQpOVCltS1JVnpv+7RtoHW6Jk86wUKijq3lSJXIrIUncbL8E9nhAmtrrWT+UxNLoSvKiLEaJTKxXLMdzPhSkuGNRK1YIvT/UgiqDfZWL57ZfQsSDhkSrxLmpzwiM6X/jSYwv7N3Z5MDy0vRKnXucmzr6dK7QvuJGKjmOOTlh6CSCaKgSFpK7wGdrYL8xyxmx3LmjWe4TSQbYkXAEYZsWmhhdJhcwYDx+m1p0M3HFY4Q4lEzs8KAUtI4U7/A/Dnm41+xZ/BZJBGcdGF root@master 
