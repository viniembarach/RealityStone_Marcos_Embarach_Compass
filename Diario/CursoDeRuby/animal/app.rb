# require './animal.rb' Ele funciona, mas leva em conta aonde estou
require_relative 'animal' # Leva em conta aonde está o arquivo que está sendo executado
require_relative 'cachorro'

puts '--Animal--'
animal = Animal.new
animal.pular

puts '--Cachorro--'
cachorro = Cachorro.new
cachorro.pular
cachorro.latir