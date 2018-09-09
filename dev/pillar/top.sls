dev:
  '*':
    - defaults
    - data
    - users
    - profiles.base
    - strandsalz/{{grains['domain']}}
  '{{ grains['fqdn'] }}':
    - nodes/{{grains['domain']}}/{{ grains['host'] }}
   # - {{ grains['fqdn'] }}
  # - nodes/{{grains['domain']}}/{{ grains['fqdn'] }}

