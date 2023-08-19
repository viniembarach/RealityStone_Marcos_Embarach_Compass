require "rspec"
require_relative "../src/calculadora.rb"

describe "Calculadora" do
    
    calculadora = Calculadora.new

    # ------------Inicio do bloco de soma------------
    describe "Soma" do

        it('Deve somar números inteiros positivos') do
            expect(calculadora.som(9, 9)).to eq 18
        end

        it('Deve somar números decimais') do
            expect(calculadora.som(8.6, 1.5)).to eq 10.1
        end

        it('Deve somar números inteiros positivos com 0') do
            expect(calculadora.som(9, 0)).to eq 9
        end

        it('Deve somar números decimais com 0') do
            expect(calculadora.som(8.6, 0)).to eq 8.6
        end

        it('Deve somar um número positivo com um número negativo') do
            expect(calculadora.som(8, -5)).to eq 3
        end

        it('Deve somar números inteiros negativos') do
            expect(calculadora.som(-9, -9)).to eq -18
        end

        it('Deve somar números decimais negativos') do
            expect(calculadora.som(-8.6, -1.5)).to eq -10.1
        end

        it('Deve somar números inteiros negativos com 0') do
            expect(calculadora.som(-5, 0)).to eq -5
        end

        it('Deve somar números decimais negativos com 0') do
            expect(calculadora.som(-4.6, 0)).to eq -4.6
        end
    end
    # ------------Fim do bloco de soma------------


    # ------------Inicio do bloco de subtração------------
    describe "Subtração" do
        it('Deve subtrair números inteiros positivos') do
            expect(calculadora.sub(9, 10)).to eq -1
        end

        it('Deve subtrair números decimais') do
            expect(calculadora.sub(8.6, 1.5)).to eq 7.1
        end

        it('Deve subtrair números inteiros positivos com 0') do
            expect(calculadora.sub(9, 0)).to eq 9
        end

        it('Deve subtrair números decimais com 0') do
            expect(calculadora.sub(8.6, 0)).to eq 8.6
        end

        it('Deve subtrair um número positivo com um número negativo') do
            expect(calculadora.sub(8, -5)).to eq 13
        end

        it('Deve subtrair números inteiros negativos') do
            expect(calculadora.sub(-9, -10)).to eq 1
        end

        it('Deve subtrair números decimais negativos') do
            expect(calculadora.sub(-8.6, -1.5)).to eq -7.1
        end

        it('Deve subtrair números inteiros negativos com 0') do
            expect(calculadora.sub(-5, 0)).to eq -5
        end

        it('Deve subtrair números decimais negativos com 0') do
            expect(calculadora.sub(-4.6, 0)).to eq -4.6
        end
    end
    # ------------Fim do bloco de subtração------------


    # ------------Inicio do bloco de multiplicação------------
    describe "Multiplicação" do
        it "Deve multiplicar dois números inteiros positivos" do
            expect(calculadora.mult(10, 2)).to eq 20
        end

        it "Deve multiplicar um número inteiro positivo com zero" do
            expect(calculadora.mult(3, 0)).to eq 0
        end

        it "Deve multiplicar dois números decimais" do
            expect(calculadora.mult(3.2, 5.7)).to eq 18.24
        end

        it "Deve multiplicar um número inteiro positivo com um número decimal" do
            expect(calculadora.mult(6, 8.51)).to eq 51.06
        end

        it "Deve multiplicar dois números inteiros negativos" do
            expect(calculadora.mult(-5, -5)).to eq 25
        end

        it "Deve multiplicar um número inteiro negativo com zero" do
            expect(calculadora.mult(-8, 0)).to eq 0
        end

        it "Deve multiplicar um número inteiro negativo com um número inteiro positivo" do
            expect(calculadora.mult(-8, 5)).to eq -40
        end

        it "Deve multiplicar dois números decimais negativos" do
            expect(calculadora.mult(-4.9, -8.3)).to eq 40.67
        end
    end
    # ------------Fim do bloco de multiplicação------------


    # ------------Inicio do bloco de divisão------------
    describe "Divisão" do
        it "Deve dividir dois números inteiros positivos" do
            expect(calculadora.div(10, 2)).to eq 5
        end

        it "Deve dividir um número inteiro positivo com um número decimal" do
            expect(calculadora.div(80, 5.5)).to eq 14.55
        end

        it "Deve dividir dois números decimais" do
            expect(calculadora.div(8.8, 9.2)).to eq 0.96
        end

        it "Erro ao dividir um número inteiro positivo com zero" do
            expect(calculadora.div(4, 0)).to include 'Não é possivel dividir um número por 0!'
        end
          
        it "Erro ao dividir um número inteiro negativo com zero" do
            expect(calculadora.div(-8, 0)).to include 'Não é possivel dividir um número por 0!'
        end

        it "Deve dividir dois números inteiros negativos" do
            expect(calculadora.div(-40, -10)).to eq 4
        end

        it "Deve dividir um número inteiro negativo com um número decimal" do
            expect(calculadora.div(-21, 2.6)).to eq -8.08
        end

        it "Deve dividir dois números decimais negativos" do
            expect(calculadora.div(-3.4, -5.5)).to eq 0.62
        end

        it "Deve dividir um número inteiro negativo com um número inteiro positivo" do
            expect(calculadora.div(-8, 2)).to eq -4
        end
    end
    # ------------Fim do bloco de divisão------------


    # ------------Inicio do bloco de fatorial------------
    describe "Fatorial" do
        it "Deve calcular o fatorial de um número inteiro positivo" do
            expect(calculadora.fat(3)).to eq 6
        end
        
        it "Deve calcular o fatorial de 1" do
            expect(calculadora.fat(1)).to eq 1
        end

        it "Deve calcular o fatorial de zero" do
            expect(calculadora.fat(0)).to eq 1
        end

        it "Erro ao calcular o fatorial de um número decimal" do
            expect(calculadora.fat(2.3)).to include 'Fatorial não definido para números decimais'
        end

        it "Erro ao calcular o fatorial de um número inteiro negativo" do
            expect(calculadora.fat(-8)).to include 'Fatorial não definido para números negativos!'
        end          
    end
    # ------------Fim do bloco de fatorial------------


    # ------------Inicio do bloco de raiz quadrada------------
    describe "Raiz Quadrada" do
        it "Deve calcular a raiz quadrada de um número inteiro positivo" do
            expect(calculadora.raizQuad(9)).to eq 3
        end

        it "Erro ao calcular a raiz quadrada de um número inteiro negativo" do
            expect(calculadora.raizQuad(-25)).to include "Não é possível calcular a raiz quadrada de um número negativo!"
        end

        it "Deve calcular a raiz quadrada de zero" do
            expect(calculadora.raizQuad(0)).to eq 0
        end

        it "Deve calcular a raiz quadrada de um número decimal" do
            expect(calculadora.raizQuad(10.2)).to eq 3.19
        end
    end
    # ------------Inicio do bloco de raiz quadrada------------


    # ------------Inicio do bloco de potência------------
    describe "Potência" do
        it "Deve calcular a potência de dois números inteiros positivos" do
            expect(calculadora.pot(10, 3)).to eq 1000
        end

        it "Deve calcular a potência de dois números decimais" do
            expect(calculadora.pot(7.2, 0.4)).to eq 2.203
        end

        it "Deve calcular a potência de um número inteiro positivo elevado um número inteiro decimal positivo" do
            expect(calculadora.pot(8, 5.5)).to eq 92681.9
        end

        it "Deve calcular a potência de um número inteiro positivo elevado a zero" do
            expect(calculadora.pot(3, 0)).to eq 1
        end

        it "Deve calcular a potência de zero elevado a um número inteiro positivo" do
            expect(calculadora.pot(0, 8)).to eq 0
        end

        it "Deve calcular a potência de dois números inteiros negativos" do
            expect(calculadora.pot(-2, -3)).to eq -0.125
        end

        it "Deve calcular a potência de um número inteiro negativo elevado a um número inteiro positivo" do
            expect(calculadora.pot(-3, 3)).to eq -27
        end
    end
    # ------------Fim do bloco de potência------------
end