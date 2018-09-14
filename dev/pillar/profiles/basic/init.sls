include:
  -  profiles.basic.apt
  -  profiles.basic.git
#  -  profiles.basic.hostname # zum Hostnamestate existiert kein pillar, da der Hostname aus dem grain.id ermittelt wird.
#  -  profiles.basic.mc # das mc state ist nicht durch pillars configurierbar
#  -  profiles.basic.screen # das screen state ist nicht durch pillars configurierbar
  -  profiles.basic.ssh
#  -  profiles.basic.uptimed # das uptimed state ist nicht durch pillars configurierbar
  -  profiles.basic.vim
  #- profiles.basic.hosts
  #- profiles.basic.motd_helper


