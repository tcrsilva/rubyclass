# SEM @: "CONSTANTES"
# UM @: ATRIBUTO
# @@: ESTATICOS

class Frog
    
    attr_reader :pulo
    
    #INICIALIZACAO DO ATRIBUTO ESTATICO @@quantidade
    # SO HA UMA @@quantidade PARA TODOS OS SAPOS
    @@quantidade = 0
    
    # EH UMA CONSTANTE. ELA EH SEMPRE public
    QUANTIDADE_OLHOS = 2
    
    def initialize(pulo=0)
        #HA UMA COPIA DE PULO PARA TODOS OS SAPOS (NAO EH ESTATICO)
        @pulo = pulo
        # @@ na frente indica atributo estatico
        @@quantidade += 1
    end
    
    def pular
        @pulo += 1
    end
    
    def Frog.mostrarQuantidade
        puts "HA #{@@quantidade} de sapos na memoria"
    end
        
end

s1 = Frog.new
s2 = Frog.new
s3 = Frog.new(7)
s4 = Frog.new
s1.pular
s2.pular
s3.pular
Frog.mostrarQuantidade
puts s1.pulo
puts s2.pulo
puts s3.pulo
puts Frog::QUANTIDADE_OLHOS