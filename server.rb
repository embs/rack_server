require 'rack'
require 'net/http'

app = Proc.new do |env|
  #Net::HTTP.get 'example.com', '/index.html'

  ['200', {'Content-Type' => 'text/html'}, ['A barebones rack app.']]
end

#50.times do |n|
#  sleep 1
#  puts n
#end

Rack::Server.start(app: app)
