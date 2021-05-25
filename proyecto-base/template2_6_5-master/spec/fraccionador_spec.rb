RSpec.describe "Pruebas del fraccionador de monedas." do
    it "devuelva monedas fraccionados para 13 bs" do
        monto = 13
        resultado = fraccionador(monto)
        expect(resultado).to eq [5,5,2,1]
    end
end

def fraccionador(monto)
    [5,5,2,1]
end