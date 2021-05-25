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
    it "devuelva monedas fraccionadas para 43 bs" do
        monto = 43
        resultado = fraccionador(monto)
        expect(resultado).to eq [5,5,5,5,5,5,5,5,2,1]
    end
    it "devuelve monedas fraccionadas para 58 bs" do
        monto = 58
        resultado = fraccionador(monto)
        expect(resultado).to eq [5,5,5,5,5,5,5,5,5,5,5,2,1]
    end 
    it "devuelve monedas fraccionadas para 0.5 bs" do
        monto = 0.5
        resultado = fraccionador(monto)
        expect(resultado).to eq [0.5]
    end 
end

def fraccionador(monto)
    monedas = []
    while (monto>0) do 
        case 
        when monto>=5
            monedas.push(5)
            monto = monto - 5

        when monto>=2 
            monedas.push(2)
            monto = monto - 2
        when monto== 1
            monedas.push(1)
            monto = monto - 1
        when monto>= 0.5
            monedas.push(0.5)
            monto = monto - 0.5
        end
    end
    return monedas
end