linux:
  network:
    enabled: true
    resolv:
      dns:
      - 8.8.4.4
      - 8.8.8.8
      domain: fischteich
      search:
      - fischteich
      options:
      - ndots: 5
      - timeout: 2
      - attempts: 2
    purge_hosts: true
    #host:
    #No need to define this one if purge_hosts is true
    #  hostname:
    #    address: 127.0.1.1
    #    names:
    #      - '{{ grains['fqdn'] }}'
    #      - '{{ grains['host'] }}'
