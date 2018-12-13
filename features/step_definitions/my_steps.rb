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
