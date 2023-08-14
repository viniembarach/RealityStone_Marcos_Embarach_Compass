class User
    def add(name)
        @name = name
        puts "User adicionado"
        hello
    end
end

def hello
    puts "Seja bem vindo, #{name}"
end 

fisrt_user = User.new
fisrt_user.add('João')
