require 'sinatra'
require './config'

get '/' do
    'hola mundo'
   
    erb :main
end

post '/' do
    "Hello World"
    erb :main
end