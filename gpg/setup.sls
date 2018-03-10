ensure-gpg-key:
  gpg.present:
    - name: thisisatestname
    - gnupghome: /etc/salt/gpgkeys
    - user: salt
