require 'sinatra'
require 'resque'
require_relative 'job'

set :bind, '0.0.0.0'

get '/' do
  'hello'
end

post '/benchmark/requests' do
  name = params[:name]
  url = params[:url]
  p Resque.enqueue(Job, { name: name, url: url })
  'success'
end
