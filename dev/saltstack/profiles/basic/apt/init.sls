
apt.packages:
  pkg.installed:
    - pkgs:
      - apt-show-versions:
      - apt-transport-https:
      - debian-goodies:
      - software-properties-common:

/etc/apt/apt.conf.d/80serverconf:
  file.managed:
    - source: salt://profiles/basic/apt/files/80serverconf
    - user: root
    - group: root
    - mode: '0644'

/etc/apt/apt.conf.d/90local:
  file.managed:
    - source: salt://profiles/basic/apt/files/90local
    - user: root
    - group: root
    - mode: '0644'

/etc/apt/sources.list:
  file.managed:
    - source: salt://profiles/basic/apt/files/sources.list
    - user: root
    - group: root
    - mode: '0644'

/usr/local/bin/autoupdate.sh:
  file.managed:
    - source: salt://profiles/basic/apt/files/autoupdate.sh
    - user: root
    - group: root
    - mode: '0644'
