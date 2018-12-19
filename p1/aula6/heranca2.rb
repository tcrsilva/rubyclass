class Zoo
    def initialize()
        @jaulas = []
    end
    
    def enjaular(animal)
        if animal.is_a? Animal
            @jaulas << animal
        else
            puts "Erro..."
        end
    end
    
    def gritar_em_conjunto
        for animal in @jaulas
            #NÃO SEI QUAL ANIMAL (CLASSE) É animal(objeto)
            if animal.is_a? Cachorro
                animal.latir
            end
            if animal.is_a? Galo
                animal.cacarejar
            end
        end
    end
    
    def gritar_em_conjunto_certo
        for animal in @jaulas
            animal.emitir_som
        end
    end
end

class Animal
    def initialize(name)
        @name = name
    end
    
    def dormir
        puts "#{@name}: ZzzzzZzZZzZzzZzZ"
    end
    
    def comer
        puts "#{@name}: COMEU..." 
    end
    
    def emitir_som
        raise "Não pode chamar emitir_som do Animal"
    end
    
    protected :comer
end

class Cachorro < Animal
    def initialize(name)
        super(name)
    end
    
    def latir
        puts "#{@name}: AUAUAUAUAUA"
    end
end

class Galo < Animal
    def initialize(name)
        super(name)
    end
    
    def cacarejar
        puts "#{@name}: POPOPOPOPOPO"
    end
end

z = Zoo.new
z.enjaular(Cachorro.new("BIDU"))
z.enjaular(Cachorro.new("MONSTRO"))
z.enjaular(Cachorro.new("DOLLAR"))
z.enjaular(Galo.new("Frangolino"))
z.gritar_em_conjunto_certo
a = Animal.new("Teste")
a.emitir_som