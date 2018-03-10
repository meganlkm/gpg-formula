# gpg-formula


## Run a sandbox container

```bash
make sandbox
```

#### shell into sandbox

```bash
docker exec -it salt-master-sandbox bash

# verify key is accepted
salt-key
```


## Setup

```bash
salt-call -l debug state.sls gpg

# verify key was created
salt-call gpg.list_keys gnupghome='/etc/salt/gpgkeys'
```


## Resources

* https://fabianlee.org/2016/10/18/saltstack-keeping-salt-pillar-data-encrypted-using-gpg/
* https://access.redhat.com/documentation/en-US/Red_Hat_Enterprise_Linux/6/html/Security_Guide/sect-Security_Guide-Encryption-Using_the_Random_Number_Generator.html
