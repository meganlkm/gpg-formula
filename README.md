[![Build Status](https://travis-ci.org/meganlkm/gpg-formula.svg?branch=master)](https://travis-ci.org/meganlkm/gpg-formula)

# gpg-formula

* [TODO](#todo)
* [Sandbox](#sandbox)
* [Testing](#testing)
* [Resources](#resources)

---

## <a name='todo'></a> TODO

* function to encrypt something and write it to a template


## <a name='sandbox'></a> Run a sandbox container

```bash
make sandbox
```

#### shell into sandbox

```bash
docker exec -it salt-master-sandbox bash

# verify key is accepted
salt-key
```


### Setup

```bash
salt-call -l debug state.sls gpg

# verify key was created
salt-call gpg.list_keys gnupghome='/etc/salt/gpgkeys'
```


## <a name='testing'></a> Testing

### <a name='run-tests'></a> Run Tests

Tests will be run on the following base images:

* `simplyadrian/allsalt:centos_master_2017.7.2`
* `simplyadrian/allsalt:debian_master_2017.7.2`
* `simplyadrian/allsalt:opensuse_master_2017.7.2`
* `simplyadrian/allsalt:ubuntu_master_2016.11.3`
* `simplyadrian/allsalt:ubuntu_master_2017.7.2`

##### Start a virtualenv

```bash
pip install -U virtualenv
virtualenv .venv
source .venv/bin/activate
```

##### Install local requirements

```bash
make setup
```

##### Run tests

* `make test-centos_master_2017.7.2`
* `make test-debian_master_2017.7.2`
* `make test-opensuse_master_2017.7.2`
* `make test-ubuntu_master_2016.11.3`
* `make test-ubuntu_master_2017.7.2`

### <a name='run-containers'></a> Run Containers

* `make local-centos_master_2017.7.2`
* `make local-debian_master_2017.7.2`
* `make local-opensuse_master_2017.7.2`
* `make local-ubuntu_master_2016.11.3`
* `make local-ubuntu_master_2017.7.2`


## <a name='resources'></a> Resources

* https://fabianlee.org/2016/10/18/saltstack-keeping-salt-pillar-data-encrypted-using-gpg/
* https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/6/html/Security_Guide/sect-Security_Guide-Encryption-Using_the_Random_Number_Generator.html
