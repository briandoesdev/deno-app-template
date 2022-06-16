Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/bionic64"
  config.vm.box_version = "1.0.282"
  config.vm.provider "vmware_desktop" do |v|
    v.gui = false
  end

  # Networking and Port Forwarding
  config.vm.network "public_network"
  config.vm.network "forwarded_port", guest: 8080, host: 8080

  # Bootstrap
  config.vm.provision :shell, path: "bootstrap.sh"
  config.vm.provision "shell", inline: <<-SHELL
    echo -n                                       > /etc/profile.d/denopath.sh
    echo 'export DENO_INSTALL=/var/opt/.deno'    >> /etc/profile.d/denopath.sh
    echo 'export PATH="$DENO_INSTALL/bin:$PATH"' >> /etc/profile.d/denopath.sh
  SHELL

  # Shared Folder
  config.vm.synced_folder "src/", "/app"

end
