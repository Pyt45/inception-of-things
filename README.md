# inception-of-things
### This project is aim to understand the concept of  System Administration

### Task list
 - [ ] create 2 machines with vagrant
 - [ ] deploy 3 apps using k3s and vagrant
 - [ ] launch k3d and argo cd
 - [ ] work with gitlab

### DOCUMENTATION
#### simple vagrantfile
```ruby
require 'yaml' # require the yaml plugin to load yaml file
conf = YAML.load_file(FILE.join(FILE.dirname(__FILE__), 'path/to/yaml')) # yaml file works a .env in this partical case
box = conf.fetch("box") # Load box form yaml file
Vagrant.configure("2") do |config|
  # global configuration for all the machines
  config.vm.box = "centos/8" # the image used in the vm
  config.vm.provider "virtualbox" do |vb| # vm provider = "virtualbox"
    vb.memory = 1024 # memory used in vm
    vb.cpu = 2 # how many cpu u want to use inside vm
  end
  config.vm.define "machine_name" do |machine_name| # define a machine with the name machine_name
    machine_name.vm.network "private_network", ip: "a private ip" # define the ip of the machine
    machine_name.vm.provision "shell", path: "path/to/script.sh" # excute a script shell inside the machine
  end
end
```
#### vagrant cli
```bash
# run vagrant
vagrant up
# add a vm image
vagrant box add name_of_image
# connect to machine via ssh
vagrant ssh name_of_machine
# destory a machine
vagrant destroy name_of_machine
```

### Usefel links
#### vagrant
 - [learn vagrant](https://learn.hashicorp.com/collections/vagrant/getting-started)
 - [load yaml file to vagrantfile](https://blog.scottlowe.org/2016/01/14/improved-way-yaml-vagrant/)
 - [shell provision](https://www.vagrantup.com/docs/provisioning/shell)
 - [vagrant cloud](https://app.vagrantup.com/boxes/search)
 - [File Provisioner](https://www.vagrantup.com/docs/provisioning/file0)

#### kubernetes
#### k3s
#### k3d
#### argo cd
#### gitlab