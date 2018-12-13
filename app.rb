require 'sinatra'
require './lib/juego.rb'

get '/' do
	@@juego=Juego.new
	@palabraSecreta=@@juego.getPalabra
	@palabraSegmentada=""
	@palabraSegmentada=@@juego.mostrarPalabraSegmentada("")
	@puntuacion = @@juego.getPuntuacion
    erb :juego
end

post '/ingresarLetra' do
	letra =params[:letra]
	@palabraSegmentada=@@juego.mostrarPalabraSegmentada(letra)
	@puntuacion = @@juego.getPuntuacion
	erb :juego
end

