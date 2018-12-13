class Palabra

	def initialize()
	  	@palabra = ""
	end

	def getPalabra
    	return @palabra
  	end

  	def setPalabra(texto)
    	@palabra = texto
  	end

	def contiene(caracter)
		if @palabra.include? caracter then
	    	return "True"
	  	else 
	  		return "False"
	  	end
   	end

	def dividir(texto)
		return texto.split(//) 
	end 
<<<<<<< HEAD

	def getPalabraAhorcado(vector)
		palabraAhorcado=@palabra
		vector.each_char { |chr| palabraAhorcado.sub(chr,'-') }
		return palabraAhorcado
	end

=======
>>>>>>> 01fc314d9474cdd97a03ff37a9f1065383895292
end
