module Floresta
    def Floresta.na_florestra(obj)
        # O Ruby chamou os métodos sem se importar com os TIPOS dele.
        obj.voar
        obj.grasnar
        obj.nadar
    end
end
# Notar que: Humano e Pato NÃO possuem relação de HERANÇA!
class Humano
    def grasnar
        puts "Imitou pato com fantasia de pato!"
    end
    
    def nadar
        puts "Nadou como pato na fantasia de pato!"
    end
    
    def voar
        puts "Aí não..."
    end
end

class Passarinho
    def voar
        puts "PIU PIU PIU: VOEI"
    end
end

class Pato
    def grasnar
        puts "QUACK QUAAAACK!"
    end
    
    def nadar
        puts "Nadou como um pato"
    end
    
    def voar 
        puts "Voou como um pato"
    end
end

P = Pato.new
h = Humano.new
pa = Passarinho.new
Floresta.na_florestra(p)
Floresta.na_florestra(h)
Floresta.na_florestra(pa)