class Calculadora
    def initialize(n1,n2)
        @n1 = n1
        @n2 = n2
    end
    
    def somar
    #return é opcional
        @n1+@n2
    end
    
    def multiplicar
        @n1*@n2
    end
    
    def subtracao
        @n1-@n2
    end
    
    def divisao
        unless @n2 == 0
            @n1/@n2
        else
            "Erro..."
        end
    end
end

class Visor 
    def mostrar_conta(n1,n2,operacao)
        #POSSO INSTANCIAR OBJETOS DENTRO DE CLASSE
        c = Calculadora.new(n1,n2)
        if c.respond_to?(operacao)
            #c.somar(n1,n2) ou c.somar
            puts c.send(operacao)
        else
            puts "Método não suportado!"
        end
    end
end

#v = Visor.new
#v.mostrar_conta(5,2,:somar)

class Entrada 
    #@x -> Atributo
    #X -> Variável Local
    def tratar_operacao(operacao)
        case operacao
            when "+"
                :somar
            when "-"
                :subtracao
            when "*"
                :multiplicar
            when "/"
                :divisao
        end
    end
    
    def interface_usuario
        puts "Digite um número: "
        x = gets 
        puts "Digite outro número: "
        y = gets
        puts "Digite a operação: "
        oper = gets
        #em Ruby, quando digitamos pelo gets, eh colocado
        #\n ao final. Para tirar o \n, usamos o chomp.
        x = x.chomp.to_f
        y = y.chomp.to_f
        oper = oper.chomp
        ################################################
        v = Visor.new
        v.mostrar_conta(x,y,tratar_operacao(oper))
    end
end

e = Entrada.new
e.interface_usuario