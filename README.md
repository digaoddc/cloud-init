# Cloud Init
This project allows you to easily test a Cloud Init configuration with `EC2 ` DataSource, change `user data` and see the results right away .

## Usage
It depends on `Vagrant` as a dependency, so make sure to install it .

Create a virtual machine, connect to it, then configure to `ONLY` use `Amazon EC2` datasource .
```
vagrant up && vagrant ssh
sudo su
dpkg-reconfigure cloud-init
``````

EC2 data source requires an endpoint to get metadata, and it needs to be available on boot time, so we set up a daemon to provide that requirement .
Start a daemon process that will listen on port `4567` that will act as our real `UserData` source .
```
chmod +x /vagrant/script.sh
/vagrant/script.sh
```

## Final steps

At this point we have all necessary dependencies in order to run our cloud init, yet we've got 2 options to do it .

### 1) Create a snapshot of your virtual machine and run Cloud Init.

```
cloud-init init
```

### 2) Create a snapshot and reboot
```
sudo reboot
```
It will automatically run cloud init on boot .
You can look for output on `/var/log/cloud-init-output.log` or `/var/log/cloud-init.log`

## Changing user-data
To change diferent user-data configs, change the file `/vagrant/user_data.txt` at your heart's content .

### Vagrant tools
If you have any errors while using vagrant up, Install virtual box guest .
```
vagrant plugin install vagrant-vbguest
```

## License

The lib is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
