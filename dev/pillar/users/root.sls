users:
  root:
    system: True
    #unique: True allows user to have non unique uid
    unique: False
    uid: 0
    home: /root
    homedir_owner: root
    homedir_group: root
    user_dir_mode: 750
    manage_bashrc: True
    manage_profile: True
    shell: /bin/bash
    prime_group:
      name: root
      gid: 0
    sudoonly: False
    ssh_auth:
    - ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCq00dj5FwSxraKWq+YO2yxkUTzO4N4Sf3yPBJbrEd2M3znHfSeFrIXSj6eNrlPir8IXCjR31EMQMfXF//IyeQCh2epcDNgrH4DzYZSkypIoTGlrvRg+HCsqbN8fnt5BVaU+57GAUvnQMLmaQ++gL7n0sO/1+UuS9sVbuNBwIWW+EcUPN0dU10GbJhS8l7KeaUDl3DmYsrlwQ1xJe2iMdDX9sGngBU3oMHLiR2E4J55g6dzVm4+EYNpY4u3Bzcym004bn5B6huEMDqzvEdmZbEdqJa0U6NJUwn7cjyC4E4ZE6mtct8vf8DzhtTCQrNVUdc1wLkS56aZqTj54AUv8ZnV steffen@sprotte
      #ssh_auth.absent:
        #- PUBLICKEY_TO_BE_REMOVED
    # Generates an authorized_keys file for the user
    # with the given keys
    #ssh_auth_file:
      #- PUBLICKEY
    # ... or you can pull them from a different pillar similar to ssh_keys_pillar
    #ssh_auth_pillar:
      #  id_rsa: "ssh_keys"
    # If you prefer to keep public keys as files rather
    # than inline in pillar, this works.
    #ssh_auth_sources:
      #- salt://users/sshkeys/ritschi.id_rsa.pub
    #ssh_auth_sources.absent:
      #- salt://users/nosshkeys/deleteduser.id_rsa.pub # PUBLICKEY_FILE_TO_BE_REMOVED
