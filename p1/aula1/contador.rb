class Contador
   def initialize(numero=0) #Se não for determinado um número, inicializa-se como 0.
     @numero = numero
   end
   
   def inc
       @numero = @numero + 1
   end
   
   def dec
       #If joga pelo true
       #Unless pelo false
       #If true, unless false
       unless @numero > 0
        @numero = @numero - 1
       end
   end
   
   def resetar
        @numero = 0
   end
   
   def mostrar
    puts "O número é: #{@numero}"
   end
end

kter = Contador.new(1)
kter.inc
kter.inc
kter.inc
kter.mostrar