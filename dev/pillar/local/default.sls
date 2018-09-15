####################################################################
# Grains pillar:                                                   #
# Only compound matches are used                                   #
#                                                                  #
# Matches with single value will appear in /etc/salt/grains as:    #
# grain: value                                                     #
#                                                                  #
# Matches with multiple values will appear in /etc/salt/grains as: #
# grain:                                                           #
# - value1                                                         #
# - value2                                                         #
####################################################################
grains:
  # Grain
  roles:
    saltmaster: 
    - 'wels.fischteich'
    dockermaster: 
    - 'wels.fischteich'
  environment:
    dev:
    - '*.fischteich'
  domain:
    fischteich:   #/This will set the Domain for all nodes in *.fischteich 
    - '*.fischteich'

salt.master: 10.0.1.0
adminemail: admin@huwiiii.de
organsation: strandsalz

linux:
  system:
    enabled: true
    domain: 'fischteich'
    cluster: 'fischteich'
    timezone: 'Europe/Berlin'
    utc: true
    sudo:
      enabled: true
      groups:
        admin:
          hosts:
          - ALL
          commands:
          - ALL
          nopasswd:
          - true
  env:
    http_proxy: ''
    https_proxy: ''
    no_proxy:
      - 10.0.0.0/16
      - .fischteich


