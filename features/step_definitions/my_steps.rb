Given(/^visito la pagina principal$/) do
  visit '/'
end

Then(/^deberia ver "(.*?)"$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end

Given(/^inicia el juego$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^selecciono una letra incorrecta "(.*?)"$/) do |boton|
  click_button(boton)
end

When(/^ingreso mas de (\d+) veces  el caracter X en el campo "(.*?)" y hago clic en el boton "(.*?)"$/) do |caracter, campo, boton|
    fill_in(campo, :with => caracter)
    click_button(boton)

    fill_in(campo, :with => caracter)
    click_button(boton)

    fill_in(campo, :with => caracter)
    click_button(boton)

    fill_in(campo, :with => caracter)
    click_button(boton)

    fill_in(campo, :with => caracter)
    click_button(boton)

    fill_in(campo, :with => caracter)
    click_button(boton)
end

Then(/^deberia ver el mensaje "(.*?)"$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end

Then(/^deberia ver el mensaje PERDISTE!$/) do
  #pending 
end

When(/^ingreso todas las "(.*?)" correctas y hago clic en el boton "(.*?)"$/) do |arg1, arg2|
  #pending 
end

Then(/^deberia ver el mensaje GANASTE!$/) do
  #pending 
end

When(/^cuando se termina el juego$/) do
   #pending 
end

Then(/^deberia ver la palabra developer$/) do
  #pending 
 end
