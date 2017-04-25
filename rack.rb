require 'rack'

file = File.read("/root/user_data.txt")
app = Proc.new do |env|
    ['200', {'Content-Type' => 'text/html'}, [file]]
end
Rack::Handler::WEBrick.run app
