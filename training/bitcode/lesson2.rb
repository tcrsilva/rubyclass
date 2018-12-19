# __ PRIMEIRO __ #
print "Digite seu nome: "
@nome = gets.chomp
print "Digite sua idade: "
@idade = gets.chomp.to_i

puts "Olá! Seu nome é: #{@nome} e você tem: #{@idade} anos."

# __ SEGUNDO __ #
print "Digite o primeiro número: "
@n1 = gets.chomp.to_i
print "Digite o segundo número: "
@n2 = gets.chomp.to_i

@adicao = @n1 + @n2
@divisao = @n2 / @n2 
@subtracao = @n1 - @n2
@multiplicacao = @n1 * @n2

puts "O resultado da adição é: #{@adicao}"
puts "O resultado da divisão é: #{@divisao}"
puts "O resultado da subtracao é: #{@subtracao}"
puts "O resultado da multiplicação é: #{@multiplicacao}"