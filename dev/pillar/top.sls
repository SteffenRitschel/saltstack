dev:
  '*':
    - defaults  # hier werden alle defaults gesetzt.
    - data
    - profiles.base
    - profiles.users
    - roles
    - local  # hier sind alle localen configs eingebunden
  '{{ grains['fqdn'] }}':  # hier werden alle configs für nodes eingebunden.
    - nodes/{{grains['domain']}}/{{ grains['host'] }}
 # 'role:dockermaster':
  #  - match: pillar
  #  - services.docker
