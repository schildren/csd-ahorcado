require "./lib/palabra.rb"
class Juego
	def initialize()
		@palabra=Palabra.new
		@palabra.setPalabra("developer")
		@puntuacion=6
		@caracteresValidos=[]
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

	def mostrarPalabraSegmentada
	@segmentada = ""
	$i = 0
		while $i < getPalabra.length   do
		   @segmentada += "_ "
		   $i +=1
		end	

	
	   return @segmentada
	end
end
