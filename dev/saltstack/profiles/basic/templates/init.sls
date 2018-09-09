ndom-config:
  file.managed:
    - name: /etc/random.conf
    - source: salt://profiles/basic/motd/templates/motd.tails
    #- source: salt://module/templates/random.conf.j2
    - template: jinja
    - defaults:
        host_list: ["host-1.domain.com","host-2.domain.com","host-3.domain.com"]


