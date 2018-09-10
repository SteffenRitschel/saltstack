# FIXME: MC Only when configured to install
mc.packages:
  pkg.installed:
    - pkgs:
      - mc:

/etc/skel/.config:
  file.directory:
    - user: root
    - group: root
    - mode: 755
    - makedirs: True

/etc/skel/.config/mc:
  file.directory:
    - user: root
    - group: root
    - mode: 755
    - makedirs: True

/etc/skel/.config/mc/ini:
  file.managed:
    - source: salt://profiles/basic/mc/files/skel.mc.ini
    - user: root
    - group: root
    - mode: '0644'

/etc/skel/.config/mc/panels.ini:
  file.managed:
    - source: salt://profiles/basic/mc/files/skel.mc.panels.ini
    - user: root
    - group: root
    - mode: '0644'
