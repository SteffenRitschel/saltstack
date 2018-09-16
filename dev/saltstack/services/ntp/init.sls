{% set all_users = salt['user.list_users']() %}
{% if 'ntp' in all_users %}
include:
  - ntp
{% endif %}

#TODO: create an error/errormessage if user does not exist
