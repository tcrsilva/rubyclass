class Soma
    def initialize(n1,n2)
        @n1 = n1
        @n2 = n2
    end
    
    def somar()
        @result = @n1 + @n2
        puts "O resultado da soma é: #{@result}" 
    end
end

s = Soma.new(1,10)
s.somar
