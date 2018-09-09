{% set adminemail  = salt['pillar.get']('adminemail', {}) -%}
uptimed.packages:
  pkg.installed:
    - pkgs:
      - uptimed:

uptimedconf:
  file.managed:
    - name: /etc/uptimed.conf
    - source: salt://profiles/basic/uptimed/templates/uptimed.conf.j2
    - template: jinja
    - user: root
    - group: root
    - mode: '0644'
    - context:
      adminemail: {{ adminemail }}

uptimed:
  service.running:
    - enable: True
    - reload: True
    - watch:
      - file: /etc/uptimed.conf
