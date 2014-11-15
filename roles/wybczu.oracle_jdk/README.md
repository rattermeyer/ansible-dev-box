oracle_jdk
==========

[![Build Status](https://travis-ci.org/wybczu/ansible_oracle_jdk.svg?branch=master)](https://travis-ci.org/wybczu/ansible_oracle_jdk)

Role installs Oracle JDK in specified version and updates alternatives.

Role Variables
--------------

 * `oracle_jdk_version` - JDK version with build number e.g. *8u5-b13*, *6u45b06*
 * `oracle_jdk_not_default` - if not set role will update system alternatives

Example Playbook
-------------------------

    - hosts: servers
      roles:
         - { role: wybczu.oracle_jdk, oracle_jdk_version: '8u5-b13' }

License
-------

Apache

Author Information
------------------

Łukasz Szczęsny <luk@wybcz.pl>
