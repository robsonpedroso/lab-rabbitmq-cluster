Vagrant.configure("2") do |config|
  config.vm.define "ubuntu" do |ubuntu|
    # configuration ubuntu image with ubuntu 19
    ubuntu.vm.box = "ubuntu/eoan64"

    # configuration timeout for 20 minutes
    ubuntu.vm.boot_timeout = 1200
    ubuntu.vm.memory = 4098

    # configuration IP for visualization in host
    ubuntu.vm.network "private_network", ip: "192.168.101.10"


    ubuntu.vm.synced_folder ".", "/curso"
    ubuntu.vm.synced_folder ".", "/vagrant", disabled: true

    ubuntu.vm.provision "shell", inline: <<-SHELL
      apt-get update
      apt-get install -y docker.io
      apt-get install -y docker-compose
    SHELL
  end
end
