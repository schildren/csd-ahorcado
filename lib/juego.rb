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

<<<<<<< HEAD
	def getAhorcado
		@palabra.getPalabraAhorcado(@caracteresValidos)
=======
	def mostrarPalabraSegmentada
	@segmentada = ""
	$i = 0
		while $i < getPalabra.length   do
		   @segmentada += "_ "
		   $i +=1
		end	

	
	   return @segmentada
>>>>>>> 01fc314d9474cdd97a03ff37a9f1065383895292
	end
end
