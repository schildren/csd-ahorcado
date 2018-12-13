require './lib/palabra.rb'

describe Palabra do
  it "La palabra deberia crearse vacia" do
    palabra = Palabra.new
    palabra.getPalabra.should == ""
  end

  it "La palabra deberia ser igual a Hola Mundo" do
    palabra = Palabra.new
    palabra.setPalabra("Hola Mundo")
    palabra.getPalabra.should == "Hola Mundo"
  end

  it "La palabra retorna False si no contiene una letra" do
    palabra = Palabra.new
    palabra.setPalabra("Desarrollo")
    palabra.contiene("t").should == "False"
  end

 it "La palabra retorna True si contiene una letra" do
  palabra = Palabra.new
  palabra.setPalabra("Desarrollo")
  palabra.contiene("a").should == "True"
 end

end
