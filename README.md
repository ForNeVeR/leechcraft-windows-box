leechcraft-windows-box
======================

This is the [Vagrant](http://vagrantup.com/) image that will help you
to build the [LeechCraft](http://leechcraft.org/) project for Windows.

Installing
----------

### System requirements

There are no specific requirements to the host system. It should just
be capable of running the VirtualBox, the Vagrant and the
vagrant-windows plugin. You will probably need many system resources
for building the whole Leechcraft.

### Prerequisites

1. Install the [VirtualBox](https://www.virtualbox.org/) for your
   operating system.
2. Install the [Vagrant](http://vagrantup.com/).
3. Install the
   [vagrant-windows plugin](https://github.com/WinRb/vagrant-windows)
   according to the instructions on their site.
4. Download the Windows 8.1 x64 ISO image. [Windows 8.1 Evaluation 
   version](http://technet.microsoft.com/ru-ru/windows/hh771457.aspx)
   may or may not be okay for you - check the license yourself.
5. Create the VirtualBox guest. The recommended parameters are 2-core
   processor, 2 GB of RAM and 120 GB disk. Name the box as
   `leechcraft-windows-box`.
6. Install the Windows on the guest box. Also, install the VirtualBox
   Guest Additions - they will help you with networking.
7. It's recommended now to make a snapshot of current box's state.
8. Additional configuration steps are described in [the corresponding 
   section of vagrant-windows
   documentation](https://github.com/WinRb/vagrant-windows#creating-a-base-box).

   Don't forget to give the administrator rights to the `vagrant` user!
9. It's is recommended to create a new snapshot at this moment.
10. Create a Vagrant box from your VirtualBox guest using the following
    command:

    ```
vagrant package --base "leechcraft-windows-box" --output .\leechcraft-windows.box
    ```

Now the Vagrant box is ready for action. `vagrant up` will start it.

Usage
-----

You may use the PowerShell to connect to the box:

```PowerShell
$userName = 'vagrant'
$password = 'vagrant' | ConvertTo-SecureString -AsPlainText -Force
$credential = New-Object `
	-TypeName System.Management.Automation.PSCredential `
	-ArgumentList $userName, $password
Enter-PsSession -ComputerName 'localhost' -Credential $credential
```

Also, you may use RDP (through port `13389`).