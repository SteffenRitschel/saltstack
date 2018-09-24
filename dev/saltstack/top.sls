dev:
  '*':
    - grains
    - profiles.users
    - profiles.basic
    - profiles.ssh
    - roles.salt
    - roles.bareos
    - linux
    - rkhunter
    - services
  #'environment:dev':
  #  - match: pillar
   # - /formulas/salt-motd-formula/salt/
  #  - profiles.saltstack
  #- formulas.salt-formula-linux.linux
  'roles:saltmaster':
    - match: grain
    - roles.salt.master
  'roles:docker*':
    - roles.docker
  'roles:dockermaster':
    - roles.docker.master
  'roles:bareosdirector':
    - roles.bareos.director

