
Given("estoy en la pagina") do
    visit '/'
end
  
When("ingreso {string} en {string}") do |value, field|
    fill_in(field, :with =>value)
end
  
When("presiono el boton {string}") do |string|
    click_button(string)
end
  
  Then("deberia devolver {string}") do |string|
    expect(page.body).to match /#{text}/m
  end