rkhunter:
  default:
    cron_daily_run: true
    cron_db_update: true
    db_update_email: false
    report_email: root
    apt_autogen: true
    run_check_on_battery: false
  config:
    mail-on-warning: root
    logfile: /var/log/rkhunter.log
    allow_ssh_root_user: without-password
    allow_ssh_prot_v1: 2
    tmpdir: /var/lib/rkhunter/tmp
    dbdir: /var/lib/rkhunter/db
    scriptdir: /usr/share/rkhunter/scripts
    installdir: /usr
    disable_unhide: 1
    auto_x_detect: 1
    enable_tests: all
    disable_tests:
      - suspscan
      - hidden_procs
      - deleted_files
      - packet_cap_apps
      - apps
    scriptwhitelist:
      - /bin/egrep
      - /bin/fgrep
      - /bin/which
      - /usr/bin/groups
      - /usr/bin/ldd
      - /usr/sbin/adduser
