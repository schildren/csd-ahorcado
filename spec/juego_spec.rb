require './lib/juego.rb'

describe Juego do

 it "Al inicializar el juego, los puntos restantes debe ser 6" do
  juego=Juego.new("developer")
  juego.getPuntuacion==6
 end

 it "Al inicializar el juego, la palabra debe ser developer" do
  juego=Juego.new("developer")
  juego.getPalabra=="developer"
 end

 it "Al inicializar el juego, no deben existir letras ingresadas" do
  juego=Juego.new("developer")
  juego.getCaracteresValidos.size==0
 end

 it "al fallar, se debe disminuir un punto" do
  juego=Juego.new("developer")
  puntuacionEsperada=5
  juego.disminuirPuntuacion
  juego.getPuntuacion==puntuacionEsperada
 end
end