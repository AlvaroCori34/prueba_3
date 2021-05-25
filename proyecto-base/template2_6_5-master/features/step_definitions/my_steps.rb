
Given("estoy en la pagina") do
    visit '/'
end
  
When("ingreso {string} en {string}") do |value, field|
    fill_in(field, :with =>value)
end
  
When("presiono el boton {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
end
  
  Then("deberia devolver {string}") do |string|
    pending # Write code here that turns the phrase above into concrete actions
  end