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

Open cloud config file and add that snippet to use our fake server as a Source for data .
```
vim /etc/cloud/cloud.cfg

datasource_list: [ Ec2 ]
datasource:
   Ec2:
      metadata_urls: [ 'http://127.0.0.1:4567' ]
```

Finally create a snapshot of your virtual machine and run Cloud Init.

```
cloud-init init
```

## Changing user-data
To change diferent user-data configs, change the file `/vagrant/user_data.txt` at your heart's content .

## License

The lib is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
