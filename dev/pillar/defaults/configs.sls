#{%- set fqdn = grains['id'] %}
#{%- set name = fqdn.split('.')[0] %}
#{%- set domain = grains['domain'] %}

linux:
  system:
    enabled: true
    name: {{grains['id'].split('.')[0]}}
    domain: {{grains['domain']}}
motd.filename: /etc/update-motd.d/20-salt 

