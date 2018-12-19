class Jogador
    def initialize(nome,camisa,salario)
        @nome = nome
        @camisa = camisa
        @salario = salario
    end
    
    def aumento
    end

    def listaNome()
        puts "Nome: #{@nome} | Camisa: #{@camisa}"
    end
end
class Time
    def initialize(nome,camisa,salario)
        @time = time
    end
    
    def mostraJogador()
        for @jogadores in jogador 
            jogador.listaNome
        end
    end
end

j = Jogador.new("Zé", 10, 100000)
j.listaNome
j2 = Jogador.new("Pelé", 7, 100000000000)
j2.listaNome 

