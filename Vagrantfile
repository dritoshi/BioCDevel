# -*- mode: ruby -*-
# vi: set ft=ruby :

require 'yaml'
require 'pp'

aws_conf = YAML.load_file('./aws.yaml')
# pp aws_conf

VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "dummy"
  
  config.vm.provider :aws do |aws, override|
    aws.access_key_id        = aws_conf['access_key_id']
    aws.secret_access_key    = aws_conf['secret_access_key']
    aws.keypair_name         = aws_conf['keypair_name']

    aws.ami                  = aws_conf['ami']
    aws.region               = aws_conf['region']
    aws.security_groups      = aws_conf['security_groups']
    aws.tags = {
      'Name'        => aws_conf['tags']['Name'],
      'Description' => aws_conf['tags']['Description']
    }

    override.ssh.username         = aws_conf['ssh_username']
    override.ssh.private_key_path = aws_conf['ssh_private_key_path']
  end
  
  config.omnibus.chef_version = :latest
  config.berkshelf.enabled = true

  config.vm.provision :chef_solo do |chef|
    chef.run_list = [
      "recipe[apt::default]",
      "git",
      "base"
    ]
  end

end
