class Numero
    # @num eh AUTOMATICAMENTE private
    def initialize(num)
        @num = num
    end
    #ACESSO DE LEITURA
    def num
        @num
    end
    
    #ACESSO DE ESCRITA
    def num=(outro)
        @num = outro
    end
    
end

n = Numero.new(7)
n.num = 9
puts n.num