#_________________ 1 PARA N _________________#
class Disciplina
    def initialize(nome)
        @nome = nome
        @alunos = [] #não passar por parâmetro, aqui você avisa para o rails que
        #irá receber uma lista de objetos. Você quer, aqui, MATRICULAR o aluno.
    end
    
    def trancar(aluno)
        case aluno
            when Aluno
                @alunos - aluno
                #colocar "aluno" em @alunos!!!
            else
                puts "Erro..."
        end
    end
    
    def matricular(aluno)
        #Case para apenas matricular ALUNO. Qualquer outra coisa que ele receber, dará erro.
        #Jeito do ruby garantir de que está recebendo o parâmetro certo. 
        case aluno
            when Aluno
                @alunos << aluno
                #colocar "aluno" em @alunos!!!
            else
                puts "Erro..."
        end
    end
    
    def listar
        for aluno in @alunos
            aluno.mostrarDados
        end
    end
end

#Khayan perguntou sobre conseguir acessar o aluno com o RA. >> Só conseguirá acessar se der getter/setter;
#Ou sobre a aula retrasada. "attr_reader :nome" para poder procurar, fazer a leitura.

class Aluno
   def initialize(nome, ra)
       @nome = nome
       @ra = ra
   end 
   
   def mostrarDados
    #nas funções "mostrarX" serão printadas, quando estiver no rails, no html
        puts "Nome: #{@nome}"
        puts "RA: #{@ra}"
   end
end

a1 = Aluno.new("KHAYAN","0050831711022")
a2 = Aluno.new("GRAZI","0050831711013")
a3 = Aluno.new("FRAN","0050831711036")
a4 = Aluno.new("VF","0050831711033")
a5 = Aluno.new("MATEHUS","0050831721026")
d = Disciplina.new("Desenv. Para Servidores I")
d.matricular(a1)
d.matricular(a2)
d.matricular(a3)
d.matricular(a4)
#nil => OBJETO N CRIADO
a6 = nil #Espaço de memória não alocado
d.trancar(a6)
#-------------------------------------#
d.matricular(a5)
d.listar
#a1.mostrarDados
#a2.mostrarDados
#a3.mostrarDados
#a4.mostrarDados
#a5.mostrarDados