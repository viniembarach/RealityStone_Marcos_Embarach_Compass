require 'rspec'
require_relative '../logic/imc'

describe('IMC') do # o Descrive é um bloco e consegue criar codigos dentro dele
    it('Deve calcular com peso e altura corretos') do# Descreve cada cenario de teste
        peso = 60
        altura = 1.70
        expect(imc(peso, altura)).to eq 20.8 # Espera q quando chamar o metodo imc, .to retorna a algum valor
    end

    it('Não deve calcular IMC caso altura = 0') do
        peso = 60
        altura = 0
        expect(imc(peso, altura)).to include 'Não é possível calcular o IMC para altura = 0!'
    end
end



# Para testar ir no terminar e rodar: bundle exec rspec specs\imc.rb