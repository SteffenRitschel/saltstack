ntp:
  client:
    enabled: true
    stratum:
      primary:
        server: 
        - 0.debian.pool.ntp.org
        - 1.debian.pool.ntp.org 
        - 2.debian.pool.ntp.org
        - 3.debian.pool.ntp.org

# TODO: internal NTP-Server config needed
# https://github.com/SteffenRitschel/salt-formula-ntp
