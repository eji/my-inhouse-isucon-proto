require 'sinatra'
require 'resque'
require_relative 'job'

post '/benchmark/requests' do
  name = params[:name]
  url = params[:url]
  p Resque.enqueue(Job, { name: name, url: url })
  'success'
end
