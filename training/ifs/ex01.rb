class Notas
    def initialize(nota1,nota2)
        @nota1 = nota1
        @nota2 = nota2
    end
    
    def media()
        @media_parcial = (@nota1 + @nota2)/2
        puts "A média final é: #{@media_parcial}"
        unless @media_parcial > 6
            puts "Você está reprovado!"
        else
            puts "Você está aprovado!"
        end
    end
end

resultado = Notas.new(6,7)
resultado.media