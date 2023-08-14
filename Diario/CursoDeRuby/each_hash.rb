aulas = {'Aula 1 ' => 'Liberada', 'Aula 2 ' => 'Liberada', 'Aula 3 ' => 'Liberada', 'Aula 4 ' => 'Assistindo', 'Aula 5 ' => 'Bloqueada', 'Aula 6 ' => 'Bloqueada', 'Aula 7 ' => 'Bloqueada', }

aulas.each do |key, value|
    puts "#{key} #{value}"
end