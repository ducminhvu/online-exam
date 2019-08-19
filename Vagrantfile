Vagrant.configure(2) do |config|
  config.vm.box = 'ubuntu/trusty64'

  config.vm.network :private_network, ip: '192.168.33.10'

  config.vm.synced_folder './', "/home/vagrant/app"

  config.vm.provider 'virtualbox' do |v|
    v.cpus = 2
    v.memory = 4096
  end
end
