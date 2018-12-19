class Arrombadinho #Animal
    def initialize(name)
        @name = name
    end
    
    def dormir
        puts "#{@name}: ZzzZzzZzZZzzZzzZ"
    end
    
    def comer
        puts "#{@name}: COMEU..."
    end
    
    protected :comer
end
# em JAVA: class Cachorro extends Animal {}
# Cachorro EH UM Animal
class Catchioro < Arrombadinho #class Cachorro < Animal
    def initialize(name)
        super(name)
    end
    
    def latir
        puts "#{@name}: AUAUAUAUAU"
    end
end

class Galo < Arrombadinho
    def initialize(name)
        super(name)
    end
    
    def cacarejar
        puts "#{@name}: POPOPOPOPOPO"
    end
end
# LE-SE Peixe EH UM Arrombadinho
# Peixe IS A Arrombadinho
class Peixe < Arrombadinho
    def initialize(name)
        super(name)
    end
    
    def teste(outro)
        case outro
            # AQUI, DARA VERDADEIRA, QUALQUER OBJETO COM
            # SUBTIPO Arrombadinho ou o próprio Arrombadinho.
            when Arrombadinho
                outro.dormir #DEU CERTO, POIS, DORMIR EH PUBLIC
                outro.comer #DEU ERRADO, POIS, COMER EH PROTECTED
                #POREM, SE PEIXE FOR SUBCLASSE DE ANIMAL, COMER EH VISIVEL.
            else 
                puts "Erro!"
        end
    end
    
    def teste2(outro)
        if outro.is_a?(Arrombadinho)
            outro.dormir
            outro.comer
        else
            puts "Erro..."
        end
    end
end

#g = Galo.new("Frangolino")
c = Catchioro.new("Dodog")
#a = Arrombadinho.new("Genérico")
#g.cacarejar
#c.latir
# dormir eh acessado por GALO e Cachorro por causa
# da herança
#g.dormir
#c.dormir
#a.dormir
#g.comer

p = Peixe.new("Catra")
p.teste(c)
# puts p.methods
puts p.is_a?(Arrombadinho)