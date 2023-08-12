result = ''

loop do
    puts result
    puts 'Escolha uma das opções abaixo:'
    puts '1 - Fazer uma conta de adição'
    puts '2 - Fazer uma conta de subtração'
    puts '3 - Fazer uma conta de multiplicação'
    puts '4 - Fazer uma conta de divisão'
    puts 'Ou pressione 0 para sair'

    print 'Opção: '
    option = gets.chomp.to_i

    if option == 1
        print 'Digite o primeiro número inteiro: '
        num1 = gets.chomp.to_i
        print 'Digite o segundo número inteiro: '
        num2 = gets.chomp.to_i
        res = num1 + num2
        result = "O resultado da adição de #{num1} + #{num2} = #{res}!"

    elsif option == 2
        print 'Digite o primeiro número inteiro: '
        num1 = gets.chomp.to_i
        print 'Digite o segundo número inteiro: '
        num2 = gets.chomp.to_i
        res = num1 - num2
        result = "O resultado da subtração de #{num1} - #{num2} = #{res}!"

    elsif option == 3
        print 'Digite o primeiro número inteiro: '
        num1 = gets.chomp.to_i
        print 'Digite o segundo número inteiro: '
        num2 = gets.chomp.to_i
        res = num1 * num2
        result = "O resultado da multiplicação de #{num1} * #{num2} = #{res}!"
      
    elsif option == 4
        print 'Digite o primeiro número inteiro: '
        num1 = gets.chomp.to_i
        print 'Digite o segundo número inteiro: '
        num2 = gets.chomp.to_i
        res = num1 / num2
        result = "O resultado da divisão de #{num1} / #{num2} = #{res}!"
        
    elsif option == 0
        break    

    else
        result = "Opção inválida"        
    end
    # Comando que limpa o console
    system "clear"
end