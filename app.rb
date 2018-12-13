require 'sinatra'
require './lib/juego.rb'

get '/' do
    @juego= Juego.new
    @palabraSecreta=@juego.getPalabra
    @palabraSegmentada=@juego.mostrarPalabraSegmentada
    erb :juego
end
