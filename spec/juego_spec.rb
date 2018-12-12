require './lib/juego.rb'

describe Juego do

 it "Al inicializar el juego, los puntos restantes debe ser 6" do
  juego=Juego.new
  juego.getPuntuacion==6
 end

 it "Al inicializar el juego, la palabra debe ser developer" do
  juego=Juego.new
  juego.getPalabra=="developer"
 end

 it "Al inicializar el juego, no deben existir letras ingresadas" do
  juego=Juego.new
  juego.getCaracteresValidos.size==0
 end
end




