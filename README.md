# gpg-formula


## Run a sandbox container

```bash
docker run --rm -d \
    -v $(pwd):/opt \
    -v $(pwd)/pillar:/srv/pillar \
    -v $(pwd)/gpg:/srv/salt/gpg \
    -h salt-master-sandbox \
    --name salt-master-sandbox \
    simplyadrian/allsalt:centos_master_2017.7.2
```

#### shell into sandbox

```bash
docker exec -it salt-master-sandbox bash

# verify key is accepted
salt-key
# verify pillar
salt-call pillar.item gpg
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
