class Lampada
    def initialize(qtClick,max) 
    #Validação para o estado
    #    case @estado
    #        when :on, :off
    #            @estado = estado
    #        else
    #            @estado = :off
    #    end
        @estado = :off
        @qtClick = qtClick
        @max = max
    end
   
    def click
        if @qtClick > @max
            @estado = :off
        else
            if @estado == :on
                @estado = :off
            else
                @estado = :on
                @qtClick += 1
            end
        end
    end
    
    def mostraEstado
        puts "A lâmpada está #{@estado}"
    end
    
    def mostraQtClicks
        puts "A lâmpada tem #{@qtClick} clicks"
    end
    
end

l = Lampada.new(0,2)
l2 = Lampada.new(0,3)
# puts l.methods
l.click
l.click
l.click
l.click
l.click
l.mostraEstado
l.mostraQtClicks
#object_id indica um id unico para todos os objetos
puts l.object_id
puts l2.object_id
#respond_to? indica se há um metodo com aquele nome
puts l.respond_to?("click")