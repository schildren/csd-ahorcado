Given(/^visito la pagina principal$/) do
  visit '/'
end

Then(/^deberia ver "(.*?)"$/) do |arg1|
  last_response.body.should =~ /#{arg1}/m
end

