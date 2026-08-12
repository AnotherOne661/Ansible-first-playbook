### For key generation
ssh-keygen -t ed25519 -f ssh/id_ed25519
### If installing onto real machines instead of docker ones, the ssh/x.pub key should be copied to them via
ssh-copy-id -i /ssh/x.pub <Target IP>
### You can instead of calling ansible all to call all nodes, you can group them
### for example, as the groupings made in docker, webservers, would just target webserver nodes.

## Ansible modules

### ping > connects to each node and gives feedback
### gather_facts > takes all data regarthing a node ex: ansible all -m gather_facts --limit web01 | grep -i memory -A 25a
### apt > the apt module on debian based, it takes the name of a module. m apt -a "name=vim-nox" would default into installing it if it isn't already present
#### m apt -a "name=nginx state=present" would force the installation, m apt -a "name=nginx state=absent" would uninstall it, m apt -a "name=nginx state=latest" 
#### would update it, and state=started makes sure the service is running, stopped stops it and restarted restarts it
### upgrade=dist makes a apt upgrade 
### setup > It's the one executed automatically at the beginning of a playbook, essentially, gathers facts 
### command > literalmente ejecuta el comando pasado como argumento
### copy > copies a file from host to one or more nodes
### service > para manejar servicios, también acepta name y state


## Ansible features

### Variables, declared in the inventory, called with "{{}}"

### Tags: called like tag: xyz, lets you execute just part of a playbook

### Where: Logical door
