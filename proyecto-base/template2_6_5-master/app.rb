require 'sinatra'
require './config'

get '/' do
    'hola mundo'
    erb :main
end

post '/' do
    monto = params[:monto] 
    efectivo = params[:efectivo]
    @resultado = efectivo.to_i - monto.to_i  
    erb :main
end