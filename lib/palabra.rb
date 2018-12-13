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

	

end
