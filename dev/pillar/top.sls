{%- set mailjob = salt['grains.get']('roles', 'mail') %}
dev:
  '*':
    - defaults  # hier werden alle defaults gesetzt.
    - data
    - profiles.basic
    - profiles.users
    - profiles.ssh
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
  'roles:libvirt*':
    - roles.libvirt
  'roles:postgres':
    - roles.postgres
  'roles:mysql':
    - roles.mysql
  'roles:docker*':
    - roles.docker
  'roles:dockermaster':
    - roles.docker.master
  'roles:bareosdirector':
    - roles.bareos.director
  'roles:webnginx':
    - roles.web.nginx
  'roles:webapache':
    - roles.web.apache
  'roles:proxynginx':
    - roles.proxy.nginx
  'roles:proxyha':
    - roles.proxy.haproxy
  {%- if mailjob == 'mail*' %}
  'roles:mailmx':
    - roles.mail.mx
  'roles:mailserver':
    - roles.mail.server
  'roles:mailtarpit':
    - roles.mail.tarpit
  'roles:mailsympa':
    - roles.mail.sympa
  'roles:mailamavis':
    - roles.mail.amavis
  {%- else %}
    - roles.mail.basic
  {%- endif %}

