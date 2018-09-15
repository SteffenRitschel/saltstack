linux:
  system:
    sudo:
      enabled: true
      groups:
        sudo:
          hosts:
          - ALL
          commands:
          - ALL
          nopasswd:
          - true
        admin:
          hosts:
          - ALL
          commands:
          - ALL
          nopasswd:
          - true

