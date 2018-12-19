class Dia
    def initialize (num)
    #num esta entre 1 e 31?
        if(1..31) === num
            @num = num
        else
            @num = 1
        end
    end
    
    def agenda
        case @num #só comparações de igualdade
            when 1..10
                puts "TEORICAMENTE, DIA DO PAGAMENTO"
            when 11..20
                puts "JÁ TAH SEM DINHEIRO"
            when 21..25
                puts "JA BATE O DESESPERO"
            when 26..31
                puts "FIM DO MES, CHEQUE ESPECIAL"
        end
    end
    
    def mostrarDia
        puts "O dia é: #{@num}"
    end
end

d = Dia.new(14)
d.mostrarDia
d.agenda