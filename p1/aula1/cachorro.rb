class Cachorro
    #Em Ruby, os atributos são discriminados pelo @
    def initialize(nome,raca)
        @nome = nome
        @raca = raca
    end
    
    def latir
        puts "#{@nome}: AU AU AU" 
        puts "Na posição de memória: #{@self}" #Self representa o objeto chamador
    end
    
    def mostrarRaca
        puts "Minha raça é: #{@raca}"
    end
    
end

#Sem objeto -> sem execução // Acima só estão as definições.

#Abaixo, o construtor. O responsável para printar o código para o usuário:
c = Cachorro.new("RYU","BORDER COLLIE")
c.latir
c.mostrarRaca #Java: c.mostrarRaca()

#Outro espaço na memória, outro cachorro:
d = Cachorro.new("CHUN LI", "SRD")
d.latir
c.mostrarRaca

#Mostrar a memória de cada objeto
# puts c
# puts d