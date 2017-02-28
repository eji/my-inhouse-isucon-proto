require 'sinatra'

configure do
  set :port, 9876
end

get '/' do
  'hello world'
end
