module Teste 
    def teste
        puts "Teste..."
    end
    
    def Teste.metodo_estatico
        puts "Método Estático"
    end
end

class Foo
    # O include irá misturar os métodos de Teste!
    include Teste
end

Teste.metodo_estatico
foo = Foo.new
foo.teste