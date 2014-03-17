# -*- mode: ruby -*-

Vagrant.configure("2") do |config|

  # Configure base box parameters
  config.vm.box = "leechcraft-windows-box"
  config.vm.box_url = "./leechcraft-windows.box"
  config.vm.guest = :windows

  # Port forward WinRM and RDP
  config.vm.network :forwarded_port, guest: 3389, host: 13389, host_ip: '127.0.0.1'
  config.vm.network :forwarded_port, guest: 5985, host: 5985, id: "winrm", auto_correct: true, host_ip: '127.0.0.1'

end
