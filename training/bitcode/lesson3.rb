btn = ''

loop do
puts btn
puts 'Qual operação gostaria de realizar?'
puts '1- Adição'
puts '2- Subtração'
puts '3- Multiplicação'
puts '4- Divisão'
puts '0- Sair'
puts 'Opção: '

opc = gets.chomp.to_i

    if opc == 1
        puts 'Digite o primeiro número: '
        n1 = gets.chomp.to_i
        puts 'Digite o segundo número: '
        n2 = gets.chomp.to_i
        total = n1 + n2
        btn = "O valor da adição é: #{total}"
    elsif opc == 2
        puts 'Digite o primeiro número: '
        n1 = gets.chomp.to_i
        puts 'Digite o segundo número: '
        n2 = gets.chomp.to_i
        total = n1 - n2
        btn = "O valor da subtração é: #{total}"
    elsif opc == 3
        puts 'Digite o primeiro número: '
        n1 = gets.chomp.to_i
        puts 'Digite o segundo número: '
        n2 = gets.chomp.to_i
        total = n1 * n2
        btn = "O valor da multiplicação é: #{total}"
    elsif opc == 4
    puts 'Digite o primeiro número: '
        n1 = gets.chomp.to_i
        puts 'Digite o segundo número: '
        n2 = gets.chomp.to_i
        total = n1 / n2
        btn = "O valor da divisão é: #{total}"
    elsif opc == 0
        break
    else
        btn = 'Opção inválida'
    end
    system "clear"
end