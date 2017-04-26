require 'sinatra'

file = File.read("/vagrant/user_data.txt")
get '/' do
  'Hello'
end

get '/2009-04-04/meta-data' do
  'instance-id'
end

get '/2009-04-04/meta-data/instance-id' do
  'vps'
end

get '/2009-04-04/user-data' do
  file
end

