FROM debian:jessie

RUN apt-get update
RUN apt-get install cloud-init ruby-rack vim curl -y
ADD rack.rb /root/rack.rb
ADD user_data.txt /root/user_data.txt

WORKDIR /etc/cloud
ENTRYPOINT ["ruby", "/root/rack.rb", "&"]
