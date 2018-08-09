Role Name
=========

A role for MongoDB

Requirements
------------

Role Variables
--------------

```yaml
env: local
mongo_port: 27017
mongo_bind_ip: 0.0.0.0
```

Dependencies
------------


Example Playbook
----------------

```yaml
- hosts: db
  vars:
    mongo_port: 12345
    mongo_bind_ip: 127.0.0.1
  roles:
    - db
```

License
-------

MIT
