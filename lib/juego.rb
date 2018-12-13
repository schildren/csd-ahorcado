require "./lib/palabra.rb"
class Juego
	def initialize(palabra)
		@palabra=Palabra.new
		@palabra.setPalabra(palabra)
		@puntuacion=6
		@caracteresValidos=[]	
                @segmentada = ""
        @juegoTerminado=false
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

		if @palabra.contiene(caracter) == "False" then
		   @puntuacion= @puntuacion - 1
		end

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
		if (@puntuacion==0 || @segmentada==getPalabra ) then
			@juegoTerminado=true	
		end		
	   return @segmentada
	end

	def disminuirPuntuacion
		@puntuacion-=1
	end

	def estadoJuego
		return @juegoTerminado
	end

	def mostrarMensaje
		if @puntuacion == 0 then
			return "PERDISTE!"
		else 
			return "GANASTE!"
		end
	end
end
