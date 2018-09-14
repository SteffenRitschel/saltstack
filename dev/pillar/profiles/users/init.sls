users-formula:
  use_vim_formula: False
  lookup:  # override the defauls in map.jinja
    root_group: root
    google_auth: false
    googleauth_package: false


include:
  - profiles.users.root
  - profiles.users.systemuser
  - profiles.users.humans
