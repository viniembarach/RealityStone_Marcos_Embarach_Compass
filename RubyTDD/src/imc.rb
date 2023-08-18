
def imc(peso, altura)
    if altura == 0
        return 'Não é possível calcular o IMC para altura = 0!'
    end
    imc_calculado = peso / (altura * altura)
    imc_calculado.round(1) # o round(1) diz que é para retonar o valor com uma casa decimal
end