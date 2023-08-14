array = [1, 2, 3, 4]

# \n é quebra de linha
puts "\n Executando .map multiplicando cada item por 2"
# .map não altera o contúdo do array original

new_array = array.map do |a|
    a * 2
end

puts "\n Array Original"
puts " #{array}"

puts "\n Novo Array"
puts " #{new_array}"

puts "\n Executando .map! multiplicando cada item por 2"
# .map! força que o conteudo do array original seja alterado
array.map! do |a|
    a * 2
end

puts "\n Array Original"
puts " #{new_array}"
puts ''