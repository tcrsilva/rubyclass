class Quadrilatero
    def initialize(lado1, lado2)
        @lado1 = lado1
        @lado2 = lado2
    end
    
    def calcular_area 
        puts "Erro"
    end
    
    def calcular_perimetro
        puts "Erro"
    end
end

class Quadrado < Quadrilatero
    def initialize(lado1, lado2)
        super(lado1, lado2)
    end
    
    def calcular_area
        @area = @lado1 * @lado2
    end
    
    def calcular_perimetro
        4*@lado1
    end
end

class Retangulo < Quadrilatero
    def initialize(lado1, lado2)
        super(lado1, lado2)
    end
    
    def calcular_area
        @area = @lado1*@lado2
    end 
    
    def calcular_perimetro
        2*(@lado1+@lado2)
    end
end

q = Quadrado.new(2,2)
puts q.calcular_area
puts q.calcular_perimetro
r = Retangulo.new(4,8)
puts r.calcular_area
puts r.calcular_perimetro