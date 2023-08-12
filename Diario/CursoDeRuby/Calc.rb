print "Digite o primeiro número inteiro: "

# .to_i transforma a string em um numero inteiro

number1 = gets.chomp.to_i

print "Digite o segundo número inteiro: "
number2 = gets.chomp.to_i

adicao = number1 + number2
subtracao = number1 - number2
multiplic = number1 * number2
divisao = number1 / number2

puts "O resultado da adição entre os dois números é #{adicao}"
puts "O resultado da subtração entre os dois números é #{subtracao}"
puts "O resultado da multiplicação entre os dois números é #{multiplic}"
puts "O resultado da divisão entre os dois números é #{divisao}"