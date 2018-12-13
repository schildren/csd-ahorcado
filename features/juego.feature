Feature: Ver Bienvenida
Como jugador
Quiero ver una pantalla inicial
Para poder jugar

Scenario: (1) Inicia el juego debe mostrarse un mensaje de Bienvenida
       Given visito la pagina principal
       Then deberia ver "BIENVENIDO"

Scenario: (2) Al iniciar el juego
       Given visito la pagina principal 
       When ingreso la palabra "developer" en el campo "palabra"
       And hago clic en "registrar"
       Then deberia ver "_________"

Scenario: (3) Cuando pierdo el juego se debe mostrar un mensaje de perdedor
	Given visito la pagina principal 
	When ingreso la palabra "casa" en el campo "palabra"
	And hago clic en "registrar"
	And ingreso la letra "x" en el campo "letra" y hago clic en el boton "Ingresar"
	And ingreso la letra "y" en el campo "letra" y hago clic en el boton "Ingresar"
	And ingreso la letra "z" en el campo "letra" y hago clic en el boton "Ingresar"
	And ingreso la letra "1" en el campo "letra" y hago clic en el boton "Ingresar"
	And ingreso la letra "2" en el campo "letra" y hago clic en el boton "Ingresar"
	And ingreso la letra "3" en el campo "letra" y hago clic en el boton "Ingresar"
	Then deberia ver "PERDISTE!"

Scenario: (4) Cuando pierdo el juego se debe mostrar un mensaje de Ganador
	Given visito la pagina principal 
	When ingreso la palabra "caso" en el campo "palabra"
	And hago clic en "registrar"
	And ingreso la letra "c" en el campo "letra" y hago clic en el boton "Ingresar"
	And ingreso la letra "a" en el campo "letra" y hago clic en el boton "Ingresar"
	And ingreso la letra "s" en el campo "letra" y hago clic en el boton "Ingresar"
	And ingreso la letra "o" en el campo "letra" y hago clic en el boton "Ingresar"
	Then deberia ver "GANASTE!"
 

Scenario: (5) Cuando termina el juego se debe mostrar la palabra secreta
	Given visito la pagina principal 
	When ingreso la palabra "caso" en el campo "palabra"
	And hago clic en "registrar"
	And ingreso la letra "c" en el campo "letra" y hago clic en el boton "Ingresar"
	And ingreso la letra "a" en el campo "letra" y hago clic en el boton "Ingresar"
	And ingreso la letra "s" en el campo "letra" y hago clic en el boton "Ingresar"
	And ingreso la letra "o" en el campo "letra" y hago clic en el boton "Ingresar"
	Then deberia ver "caso"


