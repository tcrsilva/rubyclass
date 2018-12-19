class Pessoa
    def initialize(nome,sexo,idade,vegetariana)
        @nome = nome
        @sexo = sexo
        @idade = idade
        @vegetariana = false
    end
    
    def mostrarPessoa
        puts "#{@nome} tem #{@idade} anos e consumiu #{@qtdCarne} de carne!"
    end
end

class Churrasco
    def initialize(pessoa)
        @qtdCarne = double
    end
    
    def verificarConsumo(nome, idade, vegetariana)
        if @vegetariana == true
            puts "#{@nome} não consome carne!"
        elsif 
            @idade >= 0 && @idade <= 4
                puts "#{@nome} tem #{@idade} anos - Não consome carne!"
        elsif
            @idade >= 4 && @idade <= 12
                @qtdCarne = 1.0
                puts "#{@nome} consumiu #{@qtdCarne} de carne!"
        else
            @qtdCarne = 2.0
            puts "#{@ome} consumiu #{@qtdCarne} de carne!"
        end
    end
end

p1 = Pessoa.new("Tais","F",19,"true")
p1.mostrarPessoa
