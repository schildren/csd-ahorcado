require 'sinatra'
require './lib/juego.rb'

get '/' do
    @juego= Juego.new
    erb :juego
end
