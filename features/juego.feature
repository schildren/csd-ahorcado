Feature: Ver Bienvenida
Como jugador
Quiero ver una pantalla inicial
Para poder jugar

Scenario: (1) Inicia el juego
       Given visito la pagina principal
       Then deberia ver "BIENVENIDO"

Scenario: (2) Al iniciar el juego
       Given visito la pagina principal
       Then deberia ver "_ _ _ _ _ _ _ _ _"

 Scenario: (3) Cuando ingreso una letra incorrecta, debe visualizarse el simbolo _
	when adivino una letra
    Given selecciono una letra incorrecta "a"
    Then deberia ver "_"

