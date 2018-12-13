require 'sinatra'
require './lib/juego.rb'

get '/' do
    erb :inicio
end

post '/ingresarLetra' do
	letra =params[:letra]
	@palabraSegmentada=@@juego.mostrarPalabraSegmentada(letra)
	@puntuacion = @@juego.getPuntuacion
	erb :juego
end

post '/registraPalabra' do
	palabra =params[:palabra]
	@@juego=Juego.new(palabra)
	@palabraSegmentada=@@juego.mostrarPalabraSegmentada("")
	@puntuacion = @@juego.getPuntuacion
	erb :juego
end



