require 'sinatra'
require './lib/juego.rb'

get '/' do
    erb :juego
end

post '/ingresarLetra' do
	letra =params[:letra]
	juego=Juego.new
	juego.ingresarLetra(letra)
	erb :juego
end