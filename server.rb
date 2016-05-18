require 'sinatra/base'

class Server < Sinatra::Base
  get '/' do
    erb <<-CODE
    <h1>Sinatra Reverse Proxy Test</h1>
    <p>try "curl #{request.host}:#{request.port}/api/2/Account/(your_destiny_acct_number)/ -H 'X-API-KEY: (your_api_key)'"</p>
    CODE
  end
end