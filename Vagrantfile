$VM_BOX = ENV.has_key?('VM_BOX') ? ENV['VM_BOX'] : 'ubuntu/trusty64' # 'larryli/vivid64'

Vagrant.configure('2') do |config|
  config.vm.box = $VM_BOX

  config.vm.provider "virtualbox" do |config|
    config.memory = 1024
    #config.gui = true
    config.name = "ubuntu-desktop-14.04"
  end

  #config.vm.provision "shell",
  #  inline: "sudo rsync -recursive --ignore-existing --delete /vagrant/apt /var/cache"

  config.vm.provision :ansible do |ansible|
    ansible.extra_vars = { ansible_ssh_user: 'vagrant', vagrant: true }
    #ansible.sudo = true
    #ansible.ask_sudo_pass = true
    ansible.playbook = '../install.yml'
    ansible.verbose = 'v'
  end
end
