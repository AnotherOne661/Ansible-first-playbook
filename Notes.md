### For key generation
ssh-keygen -t ed25519 -f ssh/id_ed25519
### If installing onto real machines instead of docker ones, the ssh/x.pub key should be copied to them via
ssh-copy-id -i /ssh/x.pub <Target IP>
### You can instead of calling ansible all to call all nodes, you can group them
### for example, as the groupings made in docker, webservers, would just target webserver nodes.

## Ansible modules

### ping > connects to each node and gives feedback

### apt > the apt module on debian based, it takes the name of a module. m apt -a "name=vim-nox" would default into installing it if it isn't already present
#### m apt -a "name=nginx state=present" would force the installation, m apt -a "name=nginx state=absent" would uninstall it, m apt -a "name=nginx state=latest" 
#### would update it, and state=started makes sure the service is running, stopped stops it and restarted restarts it
### upgrade=dist makes a apt upgrade 

### command > literalmente ejecuta el comando pasado como argumento

### service > para manejar servicios, también acepta name y state
