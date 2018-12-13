require 'sinatra'
require './lib/juego.rb'

get '/' do
	@@juego=Juego.new
	@palabraSecreta=@@juego.getPalabra
	@palabraSegmentada=""
	#@palabraSegmentada=@@juego.mostrarPalabraSegmentada("")
    erb :juego
end

post '/ingresarLetra' do
	letra =params[:letra]
	@palabraSegmentada=@@juego.mostrarPalabraSegmentada(letra)
	erb :juego
end
