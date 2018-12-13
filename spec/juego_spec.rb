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

 it "Al inicializar el juego, la palabra segmentada debe ser _______ para la palabra developer" do
  juego=Juego.new("developer")
  juego.mostrarPalabraSegmentada("x")=="_______"
 end

 it "al fallar, se debe disminuir un punto" do
  juego=Juego.new("developer")
  puntuacionEsperada=5
  palabra=juego.mostrarPalabraSegmentada("x")
  juego.getPuntuacion==puntuacionEsperada
 end

 it "Si la puntuacion es 0 el estado del juego debe ser PERDISTE!" do
  juego=Juego.new("developer")
  palabra=juego.mostrarPalabraSegmentada("x")
  palabra=juego.mostrarPalabraSegmentada("x")
  palabra=juego.mostrarPalabraSegmentada("x")
  palabra=juego.mostrarPalabraSegmentada("x")
  palabra=juego.mostrarPalabraSegmentada("x")
  juego.estadoJuego=="PERDISTE!"
 end

end
