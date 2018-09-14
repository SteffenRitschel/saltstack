dev:
  '*':
    - defaults  # hier werden alle defaults gesetzt.
    - data
    - profiles.basic
    - profiles.users
    - roles.salt
    - roles.bareos
    - local  # hier sind alle localen configs eingebunden
  '{{ grains['fqdn'] }}':  # hier werden alle configs für nodes eingebunden.
    - nodes/{{grains['domain']}}/{{ grains['host'] }}
 # 'role:dockermaster':
  #  - match: pillar
  #  - services.docker
  'roles:saltmaster':
    - roles.salt.master
  'roles:docker*':
    - roles.docker
  'roles:dockermaster':
    - roles.docker.master
  'roles:bareosdirector':
    - roles.bareos.director

