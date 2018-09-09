linux:
  system:
    purge_repos: true
    refresh_repos_meta: true
    repo:
      debian:
        source: "deb http://ftp.de.debian.org/debian/ stretch main"
      debiansecurity:
        source: "deb http://security.debian.org/debian-security stretch/updates main"
      debianupdates:
        source: "deb http://ftp.de.debian.org/debian/ stretch-updates main"


organsation: strandsalz
motd.filename: /etc/update-motd.d/20-salt 



