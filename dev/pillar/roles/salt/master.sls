salt:
  # This state will remove "/etc/salt/master" when you set this to true.
  master_remove_config: True

  # salt master config
  master:
    interface: 10.0.1.0
    fileserver_backend:
      - git
      - roots
    file_roots:
      base:
      - /srv/salt/dev/saltstack/
      - /srv/salt/dev/formulas/salt-formula/
      #- /srv/salt/dev/formulas/salt-formula-linux/
      #- /srv/salt/dev/formulas/packages-formula/packages/
      dev:
      - /srv/salt/dev/saltstack/
      - /srv/salt/dev/formulas/salt-formula/
      - /srv/salt/dev/formulas/salt-formula-linux/
      - /srv/salt/dev/formulas/packages-formula/
      - /srv/salt/dev/formulas/rkhunter-formula/
      - /srv/salt/dev/formulas/vim-formula/
      - /srv/salt/dev/formulas/reverse-grains-formula/
      - /srv/salt/dev/formulas/users-formula/
      - /srv/salt/dev/formulas/openssh-formula/
      - /srv/salt/dev/formulas/salt-formula-git/
      - /srv/salt/dev/formulas/salt-formula-ntp/
      - /srv/salt/dev/formulas/bareos-formula/

    pillar_roots:
      dev:
        - /srv/salt/dev/pillar/

    log_level: debug
    gitfs_update_interval: 180

    gitfs_remotes:
    - https://github.com/saltstack-formulas/salt-formula.git
    - https://github.com/SteffenRitschel/packages-formula.git
    - https://github.com/SteffenRitschel/rkhunter-formula.git
    - https://github.com/SteffenRitschel/reverse-grains-formula.git
    - https://github.com/SteffenRitschel/users-formula.git
    - https://github.com/SteffenRitschel/openssh-formula.git
    - https://github.com/SteffenRitschel/salt-formula-git.git
    - https://github.com/SteffenRitschel/salt-formula-ntp.git
    - https://github.com/SteffenRitschel/bareos-formula.git
    - https://github.com/SteffenRitschel/salt-formula-docker.git
    - https://github.com/salt-formulas/salt-formula-linux.git
    - https://github.com/SteffenRitschel/salt-formula-openssh.git
    - https://github.com/SteffenRitschel/salt-motd-formula.git


salt_formulas:
  git_opts:
    # The Git options can be customized differently for each
    # environment, if an option is missing in a given environment, the
    # value from "default" is used instead.
    default:
      # URL where the formulas git repositories are downloaded from
      # it will be suffixed with <formula-name>.git
      baseurl: https://github.com/saltstack-formulas
      # Directory where Git repositories are downloaded
      basedir: /srv/formulas
      # Update the git repository to the latest version (False by default)
      update: False
      # Options passed directly to the git.latest state
      options:
        rev: master
        #user: username
        #identity: /path/to/.ssh/id_rsa_github_username
    dev:
      basedir: /srv/formulas/dev
      update: True
      #  options:
        #  rev: develop
    # Alternatively, a single directory with multiple branches can be used
    # E.g. It is strongly recommended to fork saltstack-formula repositories
    #      to avoid unexpected changes to your infrastructure
    # Then upstream changes can be merged in manually with due consideration
    # Specific values for `rev`, `user` & `identity` will override the defaults
#    production:
#      baseurl: git@github.com:username
#      options:
#        branch: master
#        remote: origin
#    staging:
#      baseurl: git@github.com:username
#      options:
#        branch: staging
#        remote: origin
#        rev: staging
#    upstream:
#      baseurl: git@github.com:saltstack-formulas
#      update: True
#      options:
#        branch: upstream
#        remote: upstream
  # Options of the file.directory state that creates the directory where
  # the git repositories of the formulas are stored
  basedir_opts:
    makedirs: True
    user: root
    group: root
    mode: 755
  # Explicitly checkout the original branch for repos after the
  # git.latest states have been processed (False by default)
  # Enable if using the alternative method (single directory, multiple branches)
  checkout_orig_branch: True
  # List of formulas to enable in each environment
  list:
    base:
      - salt-formula
      - postfix-formula
    dev:
      - salt-formula
      - postfix-formula
      - openssh-formula
