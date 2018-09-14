dev:
  '*':
    - grains
    - linux
    - profiles.basic
    - profiles.users
    - rkhunter
  #'environment:dev':
  #  - match: pillar
   # - /formulas/salt-motd-formula/salt/
  #  - profiles.saltstack
  #- formulas.salt-formula-linux.linux
  'roles:docker*'
    - roles.docker
  'roles:dockermaster'
    - roles.docker.master
