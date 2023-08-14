class Animal
    def pular
        puts 'Toing tóim! bóim! póim'
    end

    def dormir
        puts 'ZzzZzzzz!'
    end
end

class Cachorro < Animal #< Animal recebe como herança
    def latir
        puts 'Au Au'
    end
end

class Gato < Animal #< Animal recebe como herança
    def meow
        puts 'Meow'
    end
end

cachorro = Cachorro.new
gato = Gato.new
cachorro.pular
cachorro.dormir
cachorro.latir

gato.meow