cp /vagrant/rack_init /etc/init.d/rack_init
chmod +x /etc/init.d/rack_init
update-rc.d rack_init defaults
/etc/init.d/rack_init start

