class Ecommerce
    def initialize()
        @qt = 100
    end
    
    def estoque(qt)
        if @qt > 0
            puts "Há estoque, produto pode ser vendido!"
        else @qt = 0
            puts "Não há estoque, produto não pode ser vendido."
        end
    end
    
    def vender(qt, produto)
        if @qt > 0
            @venda += 1
        end
        @qt -= 1
    end
end

class Eletro < Ecommerce
    def initialize(qt)
        super(qt)
        @preco = 200
    end
    
    def promocao1
        @preco = @preco * 0.20
    end
end

class Roupas < Ecommerce
    def initialize(qt)
        super(qt)
        @preco = 20
    end
    
    def promocao2
        @preco = @preco * 0.15
    end
end

class Moveis < Ecommerce
    def initialize(qt)
        super(qt)
        @preco = 100
    end
    
    def promocao3
        @preco = @preco * 0.125
    end
end

p1 = Roupas.new()
p1.estoque