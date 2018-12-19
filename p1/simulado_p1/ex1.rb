class Semafaro
    def initialize(cor)
        @cor = cor
    end
    
    def estadoSemafaro
        case @cor
            when :verde
                puts "Verde! Pode prosseguir..."
            when :amarelo
                puts "Amarelo! Tenha cautela..."
            when :vermelho
                puts "Vermeho! Pare..."
            else
                puts "Não foi possível identificar."
        end
    end
end
g = Semafaro.new(:verde)
g.estadoSemafaro
a = Semafaro.new(:amarelo)
a.estadoSemafaro
s = Semafaro.new(:vermelho)
s.estadoSemafaro
e = Semafaro.new(:azul)
e.estadoSemafaro