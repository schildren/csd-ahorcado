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
end
