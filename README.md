# Cloud Init
This project allows you to easily test a Cloud Init configuration with `EC2 ` DataSource.

## Usage
It depends on `Vagrant` as a dependency, so make sure to install it .

Create a virtual machine, connect to it, then configure to `ONLY` use `Amazon EC2` datasource .
```
vagrant up && vagrant ssh
sudo su
dpkg-reconfigure cloud-init
``````

Start a daemon process that will listen on port `4567` that will act as our real `UserData` source .
```
chmod +x /vagrant/script.sh
/vagrant/script.sh
```

Finally create a snapshot of your virtual machine and run Cloud Init.

```
cloud-init init
```

## Changing user-data
To change diferent user-data configs, change the file `/vagrant/user_data.txt` at your heart's content .

## License

The lib is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
