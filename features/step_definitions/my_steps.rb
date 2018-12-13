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

Given(/^ingreso la palabra "(.*?)" en el campo "(.*?)"$/) do |palabra, campo|
  fill_in(campo, :with => palabra)
end

Given(/^hago clic en "(.*?)"$/) do |boton|
  click_button(boton)
end

Then(/^deberia ver el mensaje PERDISTE!$/) do
  visit '/terminado'
end

When(/^ingreso todas las "(.*?)" correctas y hago clic en el boton "(.*?)"$/) do |arg1, arg2|
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

Then(/^deberia ver el mensaje GANASTE!$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^cuando se termina el juego$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^deberia ver la palabra developer$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^ingreso la letra "(.*?)" en el campo "(.*?)" y hago clic en el boton "(.*?)"$/) do |caracter, campo, boton|
   fill_in(campo, :with => caracter)
    click_button(boton)
end
