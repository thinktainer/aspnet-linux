Vagrant.configure(2) do |config|
  config.vm.box = "boxcutter/ubuntu1404"
  config.vm.provider "vmware_fusion" do |vmware|
    vmware.vmx["numvcpus"] = "4"
    vmware.vmx["memsize"] = "8192"
  end


  [5000, 8080].each do |port|
    config.vm.network "forwarded_port", guest: port, host: port
  end

  config.vm.synced_folder "./salt", "/srv/salt"
  config.vm.synced_folder "./code", "/home/vagrant/code"
  config.ssh.forward_agent = true

  config.vm.provision :salt do |salt|
    salt.bootstrap_options = "-F -c /tmp"
    salt.minion_config = "salt/minion"
    salt.run_highstate = true
  end
end

