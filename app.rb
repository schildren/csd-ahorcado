require 'sinatra'
require './lib/juego.rb'

get '/' do
    @juego= Juego.new
    @palabraSecreta=@juego.getPalabra
    @palabraSegmentada=@juego.mostrarPalabraSegmentada("e")
    erb :juego
end

post '/ingresarLetra' do
	letra =params[:letra]
	juego=Juego.new
	juego.mostrarPalabraSegmentada(letra)

	@palabraSecreta=@juego.getPalabra
	erb :juego
end
