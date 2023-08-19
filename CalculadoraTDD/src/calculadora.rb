class Calculadora
    def som(a, b)
        (a + b).round(2)
    end

    def sub(a, b)
        (a - b).round(2)
    end

    def mult(a, b)
        (a * b).round(2)
    end

    def div(a, b)
        if b == 0
            'Não é possivel dividir um número por 0!'
        else
            (a / b).round(2)
        end
    end

    def fat(a)
        if a < 0
            'Fatorial não definido para números negativos!'
        elsif a % 1 != 0
            'Fatorial não definido para números decimais'
        elsif a == 0 || a == 1
            1
        else
            result = 1
            while a > 1
                result *= a
                a -= 1
            end
          result
        end
      end

    def raizQuad(a)
        if a >= 0
            Math.sqrt(a).round(2)
        else
            'Não é possível calcular a raiz quadrada de um número negativo!'
        end
    end

    def pot(a, b)
        if b == 0
            1
        else
            (a ** b).round(3)
        end
    end
end