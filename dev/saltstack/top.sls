dev:
  '*':
    - grains
    - roles.salt
    - linux
    - profiles.basic
    - profiles.users
    - rkhunter
    - services
  #'environment:dev':
  #  - match: pillar
   # - /formulas/salt-motd-formula/salt/
  #  - profiles.saltstack
  #- formulas.salt-formula-linux.linux
  'roles:saltmaster':
    - roles.salt.master
  'roles:docker*':
    - roles.docker
  'roles:dockermaster':
    - roles.docker.master
