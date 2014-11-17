# Development VM Setup
This ansible roles allow to setup a development machine (ubuntu based).
It install necessary tools for starting developing with

* Java
* JavaScript
* Groovy

# Installed Components

* git, git-flow
* Diff / Merge Tool: meld
* IntelliJ
* Oracle JDK
* Apache Maven
* gvm (managing grails, groovy, gradle etc installations)
* nvm (managing node versions)

# Customization


sudo ansible-playbook -i inventory dev.yml
