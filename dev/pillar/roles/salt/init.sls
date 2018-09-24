linux:
  system:
    repo:
      saltstack:
        source: "deb http://repo.saltstack.com/apt/debian/9/amd64/latest stretch main"


salt:
  # Set this to true to clean any non-salt-formula managed files out of
  # /etc/salt/{master,minion}.d ... You really don't want to do this on 2015.2
  # and up as it'll wipe out important files that Salt relies on.
  clean_config_d_dir: True

  # This state will remove "/etc/salt/minion" when you set this to true.
  minion_remove_config: True
 
  # Set this to False to not have the formula install packages (in the case you
  # install Salt via git/pip/etc.)
  install_packages: True

  # Optional: set salt version (if install_packages is set to True)
  #version: 2018.3.2+ds-1 #2017.7.2-1.el7

  # to overwrite map.jinja salt packages
  lookup:
    salt_master: 'salt-master'
    salt_minion: 'salt-minion'
    salt_syndic: 'salt-syndic'
    salt_cloud: 'salt-cloud'
    salt_ssh: 'salt-ssh'
    pyinotify: 'python-pyinotify'  # the package to be installed for pyinotify
    
    # Set which release of SaltStack to use, default to 'latest'
    # To get the available releases:
    # * http://repo.saltstack.com/yum/redhat/7/x86_64/
    # * http://repo.saltstack.com/apt/debian/8/amd64/
  release: '2018.3'

  #salt minion config:
  minion:
  # single master setup
    master: salt
    #module_config:
      #  test: True

    mine_functions:
      network.ip_addrs: []
 
   # Define a minion scheduler
    schedule:
      - highstate:
        - function: state.apply
        - minutes: 60
        - returner: redis


  # Set this to true to clean any non-salt-formula managed files out of
  #   # /etc/salt/{master,minion}.d ... You really don't want to do this on 2015.2
  #     # and up as it'll wipe out important files that Salt relies on.
  #       clean_config_d_dir: False
  #
  #         # This state will remove "/etc/salt/minion" when you set this to true.
  #         minion_remove_config: True
