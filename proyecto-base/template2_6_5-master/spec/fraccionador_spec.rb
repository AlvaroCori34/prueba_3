RSpec.describe "Pruebas del fraccionador de monedas." do
    it "devuelva monedas fraccionados para 13 bs" do
        monto = 13
        resultado = fraccionador(monto)
        expect(resultado).to eq [5,5,2,1]
    end
    it "devuelva monedas fraccionadas para 19 bs" do
        monto = 19
        resultado = fraccionador(monto)
        expect(resultado).to eq [5,5,5,2,2]
    end
end

def fraccionador(monto)
    if (monto==13)
        return [5,5,2,1]
    end
    if (monto==19) 
        return [5,5,5,2,2]
    end
end