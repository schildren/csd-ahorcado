require "./lib/palabra.rb"

describe Palabra do
	it "Al dividir la palaba Magio, se deberia mostrar un vector con 5 caracteres" do
		palabra=Palabra.new
		vector=palabra.dividir("Magio")
		vector.size==5
	end	
end
