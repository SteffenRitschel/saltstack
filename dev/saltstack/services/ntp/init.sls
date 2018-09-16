{% set all_users = salt['user.list_users']() %}
{% if 'ntp' in all_users %}
include:
  - ntp
{% endif %}
