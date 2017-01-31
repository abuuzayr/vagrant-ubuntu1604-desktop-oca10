# Ubuntu 16.04 Vagrant Image + Odoo Community Backports v9.0 + Liclipse

This image is based off [boxcutter/ubuntu1604-desktop](https://atlas.hashicorp.com/box-cutter/boxes/ubuntu1604-desktop).

Odoo Community Backports are cloned from [OCA/OCB](https://github.com/oca/ocb)

You are now on the master branch, which initializes the version of ubuntu
with Odoo installed.

## Prerequisites

The following must be installed:

+ [Vagrant](https://www.vagrantup.com/)
+ [Virtualbox 5.0.4 or later](https://www.virtualbox.org/)

To make this vagrant work best, put the [Odoo repo](https://www.virtualbox.org/)
in the same parent folder as this Vagrant folder.

## Usage

```shell
git clone git@git.groventure.com:gronex/vagrant-ubuntu1604-desktop-oca9-liclipse.git
cd vagrant-ubuntu1604-desktop-oca9-liclipse
git checkout master # This is optional, but make sure you are on the master branch!
vagrant up
```

Note that the default password for user `vagrant` is **`vagrant`**.

Please note that on the first `vagrant up` command, it will take a while to run
and install.

While the VM will be started up, Odoo and Liclipse may not be installed yet.

You can track the progress of the installation in the shell that you used for
the `vagrant up` command.

## How to know that the VM setup is complete?

At the end of the setup, the VM will restart.

Try starting up the Terminal application. If it starts up immediately, the
installation and setup was successful. If it takes a while then refuses to load,
the installation was unsuccessful. To fix this issue, run the following
command: `vagrant destroy && vagrant up`

*If you face a blank screen after you boot with no login screen or
usable desktop interface, do tear down and up the entire vagrant
instance again with `vagrant destroy && vagrant up`*

## Additional Port-Forwarding

Additional port forwarding for your services can be defined inside the
`Vagrantfile`. For example, this will forward all host port 80 traffic
to the guest's port 80 port.

```ruby
Vagrant.configure(2) do |config|
  # ...
  config.vm.network 'forwarded_port', guest: 80, host: 80
  # ...
end
```

## To start up this vagrant on boot on Windows

To start up this vagrant on boot, put the .bat file in this folder into your
startup folder.

**Note**: This will only work if this vagrant folder in on the Desktop AND you
did not rename this folder. If you did either, please edit the first line of the
.bat file to *cd* into your vagrant folder.

To do so:

1. Right click on Start Menu and click Run
2. Enter `shell:startup` then OK
3. An Explorer window will open up
4. Copy the .bat file in this folder into the folder that opened up in Step 3

If successful, upon starting/restarting your PC, the Vagrant instance will start.
