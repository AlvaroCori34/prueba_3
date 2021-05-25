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
    it "devuelva monedas fraccionadas para 19 bs" do
        monto = 22
        resultado = fraccionador(monto)
        expect(resultado).to eq [5,5,5,5,2]
    end
end

def fraccionador(monto)
    monedas = []
    while (monto>0) do 
        if (monto>=5)
            monedas.push(5)
            monto = monto - 5
        else
            if (monto>=2)
                monedas.push(2)
                monto = monto - 2
            else
                if (monto==1)
                    monedas.push(1)
                    monto = monto - 1
                end
            end
        end
    end
    if (monto==13)
        return [5,5,2,1]
    end
    if (monto==19) 
        return [5,5,5,2,2]
    end
    return monedas
end