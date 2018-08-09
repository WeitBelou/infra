Role Name
=========

Ansible role for preparing environment for simple ruby app

Requirements
------------

Role Variables
--------------
```yaml
env: local
db_host: 127.0.0.1 # Host of MongoDB
```

Dependencies
------------


Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:
```yaml
- hosts: app
  vars:
    - db_host: 124.123.123.123
  roles:
    - app
```

License
-------

MIT
