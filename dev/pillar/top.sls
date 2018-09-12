dev:
  '*':
    - defaults
    - data
    - users
    - services
    - profiles.base
  #  - strandsalz/{{grains['domain']}}
    - strandsalz/fischteich # TODO automatic includes
  '{{ grains['fqdn'] }}':
    - nodes/{{grains['domain']}}/{{ grains['host'] }}
   # - {{ grains['fqdn'] }}
  # - nodes/{{grains['domain']}}/{{ grains['fqdn'] }}
 # 'role:dockermaster':
  #  - match: pillar
  #  - services.docker
