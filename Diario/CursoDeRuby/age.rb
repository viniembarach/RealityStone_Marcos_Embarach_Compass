result = ''

loop do
    puts result
    puts 'Escolha uma das opções abaixo:'
    puts '1 - Calcular a idade de uma pessoa'
    puts '0 - Sair'

    print 'Opção: '
    option = gets.chomp.to_i

    if option == 1
        print 'Digite o ano de nascimento: '
        nasc = gets.chomp.to_i
        print 'Digite o ano atual: '
        atual = gets.chomp.to_i
        if nasc < atual
            age = atual - nasc
            result = "Quem nasceu no ano de #{nasc}, tem #{age} anos em #{atual}!"
        else
            result = "Digite os anos validos"
        end
    elsif option == 0
        break           
    else
        result = "Opção inválida"        
    end
    # Comando que limpa o console
    system "clear"
end