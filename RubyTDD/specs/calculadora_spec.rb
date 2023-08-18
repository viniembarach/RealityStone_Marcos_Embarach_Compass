require 'rspec'
require_relative '../src/calculadora'

describe('Calculadora') do # o Descrive é um bloco e consegue criar codigos dentro dele
    calculadora = Calculadora.new
    it('Deve somar dois inteiros positivos') do# Descreve cada cenario de teste
        # calculadora = Calculadora.new
        expect(calculadora.soma(4, 5)).to eq 9
    end
    it('Deve somar um número qualquer com 0') do# Descreve cada cenario de teste
        # calculadora = Calculadora.new
        expect(calculadora.soma(9, 0)).to eq 9
    end
    it('Deve somar números negativos') do# Descreve cada cenario de teste
        # calculadora = Calculadora.new
        expect(calculadora.soma(-10, -5)).to eq -15
    end

    it('Deve subtrair dois inteiros positivos')do
        expect(calculadora.subtrair(8, 2)).to eq 6
    end
end

# para rodar rspec specs\calculadora_spec.rb