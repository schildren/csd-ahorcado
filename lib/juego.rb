require "./lib/palabra.rb"
class Juego
	def initialize()
		@palabra=Palabra.new
		@palabra.setPalabra("developer")
		@puntuacion=6
		@caracteresValidos=[]	
                @segmentada = ""
	end
	
	def getPuntuacion
		return @puntuacion
	end

	def getCaracteresValidos
		return @caracteresValidos
	end

	def getPalabra
		return @palabra.getPalabra
	end

	def getAhorcado
		@palabra.getPalabraAhorcado(@caracteresValidos)
	end

	def mostrarPalabraSegmentada(caracter)
	$i = 0	
		while $i < getPalabra.length   do
		@letra = getPalabra.slice($i)
		  
		   if @letra == caracter then
                       @segmentada[$i] = caracter
		   else 
			if caracter == "" then
                           @segmentada +=  "_"
			end
		   end 
		   $i +=1
		end		
	   return @segmentada
	end

	def disminuirPuntuacion
		@puntuacion-=1
	end
end
