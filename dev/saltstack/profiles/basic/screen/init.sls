screen:
  pkg.installed

/etc/screenrc:
  file:
  - managed
  - source: salt://profiles/basic/screen/files/screenrc
  - require:
    - pkg: screen
