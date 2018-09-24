system:
  network:
    purge_hosts: true
    host:
      wels:
        address: 10.0.1.0
        names:
        - salt
        - saltmaster.fischteich
    #host:
    #No need to define this one if purge_hosts is true
    #  hostname:
    #    address: 127.0.1.1
    #    names:
    #      - '{{ grains['fqdn'] }}'
    #      - '{{ grains['host'] }}'

