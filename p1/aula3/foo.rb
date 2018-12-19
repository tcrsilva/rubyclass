class Foo
    def ola
        puts "Ola mundo!"
    end
    
    def outro
        puts "Outro metodo"
    end
    
    #other eh um objeto da classe Foo
    #Teremos aqui, um objeto chamado IMPLICTO (Foo)
    #e um outro chamado other (Foo)
    def chamador(other)
        p "Endereco de self: #{self}"
        p "Endereco de other: #{other}"
        outro 
        other.outro
    end
    
    protected :ola, :outro
end

f = Foo.new
g = Foo.new
f.chamador(g)
#SE CHAMARMOS f.outro, O PROTECTED BLOQUEARA O ACESSO.
#f.outro