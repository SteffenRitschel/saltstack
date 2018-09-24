users:
# www-data:x:33:33:www-data:/var/www:/usr/sbin/nologin
  www-data: 
    system: True
    unique: False
    uid: 33
    home: /var/www
    createhome: False
    shell: /usr/sbin/nologin
    prime_group:
      name: www-data
      gid: 33
# sshd:x:106:65534::/run/sshd:/usr/sbin/nologin
  sshd: 
    system: True
    unique: False
    uid: 110
    home: /run/sshd
    homedir_owner: root
    homedir_group: ssh
    user_dir_mode: 700
    createhome: True
    shell: /usr/sbin/nologin
    prime_group:
      name: ssh
      gid: 110
# dnsmasq:x:107:65534:dnsmasq,,,:/var/lib/misc:/bin/false
  dnsmasq: ##FIXME still to define
    # unique: True allows user to have non unique uid
    system: True
    unique: False
    uid: 116 
    home: /var/lib/misc
    #createhome: False
    shell: /bin/false
    prime_group:
      name: nogroup
# postfix:x:112:112::/var/spool/postfix:/bin/false
#postfix:x:112:
  postfix: 
    system: True
    unique: False
    uid: 114 
    home: /var/spool/postfix
    #createhome: False
    shell: /bin/false
    prime_group:
      name: postfix
      gid: 114
# docker:x:999:999::/nonexistend:/bin/false
  docker: 
    system: True
    unique: False
    uid: 999
    home: /nonexistent
    homedir_owner: root
    homedir_group: root
    user_dir_mode: 755
    shell: /bin/false
    prime_group:
      name: docker
      gid: 999
# uid=64055(libvirt-qemu) gid=111(kvm) groups=111(kvm),64055(libvirt-qemu)
#libvirt-qemu:x:64055:111:Libvirt Qemu,,,:/var/lib/libvirt:/bin/false
# kvm:x:111:
# libvirt:x:112:
# libvirt-qemu:x:64055:libvirt-qemu
  kvm: 
    system: True
    unique: False
    uid: 111
    home: /nonexistent
    homedir_owner: root
    homedir_group: root
    user_dir_mode: 755
    prime_group:
      name: kvm
      gid: 111
  libvirt: 
    system: True
    unique: False
    uid: 112
    home: /nonexistent
    homedir_owner: root
    homedir_group: root
    user_dir_mode: 755
    shell: /bin/false
    prime_group:
      name: libvirt
      gid: 112
  libvirt-qemu-dummy: 
    system: True
    unique: False
    uid: 113
    shell: /bin/false
    home: /nonexistent
    homedir_owner: root
    homedir_group: root
    user_dir_mode: 755
    prime_group:
      name: libvirt-qemu
      gid: 113
  libvirt-qemu: 
    system: True
    unique: False
    uid: 64055 
    home: /var/lib/libvirt
    homedir_owner: root
    homedir_group: root
    user_dir_mode: 755
    shell: /bin/false
    prime_group:
      name: kvm
      gid: 111
    groups:
      - libvirt-qemu
  ssl-cert: 
    unique: False
    system: True
    uid: 115
    home: /nonexistent
    homedir_owner: root
    homedir_group: root
    user_dir_mode: 755
    createhome: True
    shell: /bin/false
    prime_group:
      name: ssl-cert
      gid: 115
  ntp: 
    unique: False
    system: True
    uid: 117
    home: /home/ntp
    homedir_owner: ntp
    homedir_group: ntp
    user_dir_mode: 755
    createhome: False
    shell: /bin/false
    prime_group:
      name: ntp
      gid: 117
  mysql: 
    unique: False
    system: True
    fullname: MySQL Server
    uid: 118
    home: /nonexistent
    homedir_owner: root
    homedir_group: root
    user_dir_mode: 755
    createhome: False
    shell: /bin/false
    prime_group:
      name: mysql
      gid: 118

