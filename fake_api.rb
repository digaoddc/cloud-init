require 'sinatra'

get '/' do
  'Hello'
end

get '/2009-04-04/meta-data' do
  'instance-id'
end

get '/2009-04-04/meta-data/instance-id' do
  # return 'vps' # Uncomment this line to run cloud-init once
  time = Time.now.strftime "%H-%M-%S"
  "vps-#{time}"
end

get '/2009-04-04/user-data' do
  File.read("/vagrant/user_data.yml")
end
