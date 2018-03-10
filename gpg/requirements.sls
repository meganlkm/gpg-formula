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
