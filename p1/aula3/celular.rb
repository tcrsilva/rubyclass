class ContaCelular
    attr_reader :nome, :creditos
    attr_accessor :creditos
    
    def initialize(nome,creditos)
        @nome = nome 
        #USE O CASE, POR FAVOR
        @creditos = creditos
    end
    
    def ligacao(numero)
        if @creditos >= 0.98
            puts "#{@nome} ligou para #{numero}"
            @creditos -= 0.98
        else
            puts "SALDO INSUFICIENTE PARA REALIZAR A LIGACAO"
        end
    end
    
    def colocarCreditos(qt)
        if qt >= 10 
            @creditos += qt
        else
            puts "CREDITOS INVALIDOS"
        end 
    end
end

cc = ContaCelular.new("KHAYAN",20)
cc.ligacao("+5513991774422")
cc.ligacao("+5513991774422")
cc.colocarCreditos(13)
puts cc.nome
cc.creditos = -95.2
cc.ligacao("+5513991774422")
puts cc.creditos