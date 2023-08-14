# def talk 
#     puts 'Olá, como você está?'
# end

# talk
# talk
# talk

def talk(fisrt_name, last_name)
    puts "Olá #{fisrt_name} #{last_name}, como você está?"
end

fisrt_name = 'Marcos Vinícius'
last_name = 'Bedin Embarach'

talk(fisrt_name, last_name) # Ou colocar direto aqui

def signal(color = 'vermelho')
    puts "O sinal está #{color}"
end

signal

color = "verde"
signal(color)

signal('amarelo')