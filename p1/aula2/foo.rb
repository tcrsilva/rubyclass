class Foo 
    def initialize(x)
        @x = x
    end
    # Numeric => doubles 
    # Integer => Inteiros
    def mostrarX()
        case @x
            when 1
                puts "Número um"
            when 2
                puts "Número dois"
            when "LOL", "FATEC"
                puts "PALAVRA LOL OU FATEC"
            when String
                puts "QUALQUER STRING"
            when Numeric 
                puts "QUALQUER PONTO FLUTUANTE"
            when Integer
                puts "SÓ INTEIRO"
            when Symbol 
                puts "NÃO SOU STRING, MAS QUASE SOU"
            else
                puts "Caiu no caso do default"
        end
    end
end

f = Foo.new(:Fatec)
f.mostrarX