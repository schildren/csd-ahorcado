Given(/^visito la pagina principal$/) do
  visit '/'
end

Then(/^deberia ver "(.*?)"$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
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

When(/^ingreso la letra "(.*?)" en el campo "(.*?)" y hago clic en el boton "(.*?)"$/) do |caracter, campo, boton|
   fill_in(campo, :with => caracter)
   click_button(boton)
end

When(/^hago clic en el enlace "(.*?)"$/) do |link|
  click_link(link)
end
