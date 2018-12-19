module Brincavel
    def brincar
        puts "Brincou como #{self.class}"
    end
end

module Matavel
    def matar
        puts "Matou como #{self.class}"
    end
end

class Animal
    def dormir
        puts "ZzzZzz..."
    end
    
    def emitirSom
        raise "Metodo não suportado"
    end
end

class Cachorro < Animal
    include Brincavel
    def emitirSom
        puts "AU AU..."
    end
    
    def cavar
        puts "Cavou..."
    end
end

class Gato < Animal 
    include Brincavel
    def emitirSom
        puts "MIAU..."
    end
    
    def arranhar
        puts "Arranhando..."
    end
end

class Urso < Animal
    include Matavel
    def emitirSom
        puts "ROAAAARRR"
    end
    
    def hibernar
        puts "ZzzZZzZ por meses"
    end
end

class Robo
    def ligar
        puts "Ligou!"
    end
    
    def desligar
        puts "Desligou..."
    end
    
    def recarregar
        puts "Recarregou"
    end
end

class IDog < Robo
    include Brincavel
    def pular
        puts "Pulou..."
    end
end

class Transformer < Robo
    include Matavel
    include Brincavel
    def atirar
        puts "Atirou..."
    end
end

i = IDog.new
i.pular #dele
i.ligar #herança
i.desligar #herança
i.brincar #misturado pelo módulo
t = Transformer.new
t.brincar
t.matar