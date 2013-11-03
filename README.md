Linux distribution for Bioconductor Package Developer on AWS EC2

# Setup
## requirements
- Ruby
- rubygems
- vagrant
- chef-solo
- knife-solo
- Berkshelf

## configuration
- make a kaypair and download your private key
- make security groups and open ssh port
- make API access key id and secret access key for IAM
- copy aws.yaml.example to aws.yaml and change aws.yaml to your setting for EC2

## install
```
git clone
vagrant plugin install vagrant-aws
vagrant plugin install vagrant-omnibus
vagrant plugin install vagrant-berkshelf

vagrant box add dummy https://github.com/mitchellh/vagrant-aws/raw/master/dummy.box

vagrant init
```

# Usage
```
vagrant up --provider=aws    # run a AMI on Amazon EC2
vagrant ssh                  # access to your virtual machine (VM) by ssh

vagrant status               # check status of VM

vagrant halt                 # stop your VM on Amazon EC2
vagrant reload               # restart your VM on Amazon EC2

vagrant destroy              # terminate your VM on Amazon EC2
```

Itoshi NIKAIDO <dritoshi at gmail dot com>
