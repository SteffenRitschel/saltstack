{%- set fqdn = grains['id'] %}
{%- if grains['os_family'] == 'Debian' %}
  {% set hostname = fqdn.split('.')[0] %}
{% else %}
  {% set hostname = fqdn %}
{% endif %}

{%- if grains['os_family'] == 'RedHat' %}
etc-sysconfig-network:
  cmd.run:
    - name: echo -e "NETWORKING=yes\nHOSTNAME={{ hostname }}\n" > /etc/sysconfig/network
    - unless: test -f /etc/sysconfig/network
  file.replace:
    - name: /etc/sysconfig/network
    - pattern: HOSTNAME=localhost.localdomain
    - repl: HOSTNAME={{ hostname }}
{% endif %}

{%- if grains['os_family'] == 'Suse' %}
/etc/HOSTNAME:
  file.managed:
    - contents: {{ hostname }}
    - backup: false
{% else %}
/etc/hostname:
  file.managed:
    - contents: {{ hostname }}
    - backup: false
{% endif %}

set-fqdn:
  cmd.run:
    {% if grains["init"] == "systemd" %}
    - name: hostnamectl set-hostname {{ hostname }}
    {% else %}
    - name: hostname {{ hostname }}
    {% endif %}
    - unless: test "{{ hostname }}" = "$(hostname)"
