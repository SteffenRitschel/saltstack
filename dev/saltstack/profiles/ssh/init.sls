{% set all_users = salt['user.list_users']() %}
{% if 'ssh' in all_users %}
include:
  - openssh
  - openssh.banner
  - openssh.client
  - openssh.config
  #- openssh.known_hosts  # FIXME ..https://github.com/SteffenRitschel/openssh-formula
{% endif %}

#TODO: create an error/errormessage if user does not exist
