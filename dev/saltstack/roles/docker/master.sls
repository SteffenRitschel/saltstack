#{% set all_users = salt['user.list_users']() %}
#{% if 'docker' in all_users %}
#include:
  #  - ntp
  #{% endif %}

#TODO: create an error/errormessage if user does not exist

