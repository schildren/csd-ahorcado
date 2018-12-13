Feature: Ver Bienvenida
Como jugador
Quiero ver una pantalla inicial
Para poder jugar

Scenario: (1) Inicia el juego debe mostrarse un mensaje de Bienvenida
       Given visito la pagina principal
       Then deberia ver "BIENVENIDO"

Scenario: (2) Al iniciar el juego
       Given visito la pagina principal 
       And ingreso la palabra "developer" en el campo "palabra"
       And hago clic en "registrar"
       Then deberia ver "_________"

Scenario: (3) Cuando pierdo el juego se debe mostrar un mensaje de perdedor
	Given visito la pagina principal
	When ingreso mas de 6 veces  el caracter X en el campo "letra" y hago clic en el boton "Ingresar"
	Then deberia ver el mensaje PERDISTE!

Scenario: (4) Cuando pierdo el juego se debe mostrar un mensaje de Ganador
	Given visito la pagina principal
	When ingreso todas las "letras" correctas y hago clic en el boton "Ingresar"
	Then deberia ver el mensaje GANASTE!

Scenario: (5) Cuando termina el juego se debe mostrar la palabra secreta
	Given visito la pagina principal
	When cuando se termina el juego
	Then deberia ver la palabra developer


