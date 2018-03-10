/etc/salt/gpgkeys:
  file.directory:
    - user: root
    - group: root
    - mode: 700
    - makedirs: True

# assumes pip is installed
install-pip-deps:
  pip.installed:
    - names:
      - python-gnupg
    - reload_modules: True

install-prereqs:
  pkg.installed:
    - pkgs:
      - rng-tools
    - refresh: True
