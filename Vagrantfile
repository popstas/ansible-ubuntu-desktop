$VM_BOX = ENV.has_key?('VM_BOX') ? ENV['VM_BOX'] : 'ubuntu/wily64' # 'ubuntu/vivid64' # 'ubuntu/trusty64'

Vagrant.configure('2') do |config|
  config.vm.box = $VM_BOX

  config.vm.provider "virtualbox" do |config|
    config.memory = 1024
    config.gui = true
    config.name = "ubuntu-desktop-15.10"
  end

  #config.vm.provision "shell",
  #  inline: "sudo rsync -recursive --ignore-existing --delete /vagrant/apt /var/cache"

  config.vm.provision :ansible do |ansible|
    #ansible.extra_vars = { ansible_ssh_user: 'vagrant', vagrant: true }
    #ansible.sudo = true
    #ansible.sudo_user = 'root'
    #ansible.ask_sudo_pass = true
    ansible.playbook = 'install.yml'
    ansible.verbose = 'vvvv'
  end
end
