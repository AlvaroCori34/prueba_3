Feature:
    Como Usuario que necesita saber el cambio
    Quiero una aplicacion que me devuelva el cambio
    Para poder tener rapidamente el cambio cuando nos lo devuelva
Scenario:
    Given estoy en la pagina
    When  ingreso "200" en "monto"
    And ingreso "280" en "efectivo"
    And presiono el boton "cambio"
    Then deberia devolver "Cambio: 80"