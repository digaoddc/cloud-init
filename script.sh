cp /vagrant/rack_init /etc/init.d/rack_init
chmod +x /etc/init.d/rack_init
update-rc.d rack_init defaults
cat >> /etc/cloud/cloud.cfg <<- EOM
datasource_list: [ Ec2 ]
datasource:
   Ec2:
         metadata_urls: [ 'http://127.0.0.1:4567' ]
EOM
/etc/init.d/rack_init start

