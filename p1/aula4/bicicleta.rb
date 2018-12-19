class Bicicleta
    def initialize(modelo)
        @modelo = modelo
        @p1 = Pneu.new(100)
        @p2 = Pneu.new(100)
    end
    
    def acelerar
        if @p1.medir and @p2.medir
            @p1.esvaziar
            @p2.esvaziar
        else
            puts "Algum pneu está com problema!"
        end
    end
    
    def exibir
        puts "Modelo: #{@modelo}"
        @p1.mostrarDados
        @p2.mostrarDados
    end
    
    def encherPneu1(qt)
        @p1.encher(qt)
    end
    
    def encherPneu2
        @p2.encher(qt)
    end
end

class Pneu
    def initialize(pressao,estaFurado=false)
        @pressao = pressao
        @estaFurado = estaFurado
    end
    
    def esvaziar
        if medir
            @pressao = @pressao - 10
        else
            puts "PNEU FURADO"
        end
    end
    
    def encher(qt)
        atual = @pressao + qt
        if atual > 100
            @estaFurado = true
            @pressao = 0
        else
            if @estaFurado
                @pressao = atual
            else
                puts "PNEU COM PROBLEMA"
            end
        end
    end
# Retorno booleano
    def medir
        (not @estaFurado) and @pressao >= 10
    end
    
    def mostrarDados
        puts "Pressão: #{@pressao}"
        puts "Furado: #{@estaFurado}"
    end
end

b = Bicicleta.new("CALOI")
b.acelerar
b.exibir
b.encherPneu1(50)
b.acelerar
b.exibir