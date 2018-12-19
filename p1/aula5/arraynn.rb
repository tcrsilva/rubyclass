#_________________N PARA M_________________#
class Disciplina 
   def initialize(nome)
       @nome = nome
       @alunos = []
   end
   
   def nome
       @nome
   end
   
   def trancar(aluno)
       # JEITO DO RUBY DE GARANTIR QUE EH ALUNO
       case aluno 
            when Aluno 
                aluno.removerDisc(self)
                @alunos -= [aluno]
                # -= para remoção / subtrair
            else
                puts "Erro..."
       end
   end
   
   def matricular(aluno)
       # JEITO DO RUBY DE GARANTIR QUE EH ALUNO
       case aluno 
            when Aluno
                aluno.inserirDisc(self)
                @alunos << aluno
            else
                puts "Erro..."
       end
   end
   
   def listar
       puts "Disciplina: #{@nome}"
       for aluno in @alunos
           aluno.mostrarDados
       end
   end
end

class Aluno
   
   def initialize(nome, ra)
       @nome = nome 
       @ra = ra
       @ds = []
   end
   
   def inserirDisc(disc) 
       case disc 
            when Disciplina 
                @ds << disc
            else
                puts "Erro..."
       end
   end
   
   def removerDisc(disc) 
       case disc 
            when Disciplina 
                @ds -= [disc]
            else
                puts "Erro..."
       end
   end
   
   def mostrarDados
       puts "Nome: #{@nome}"
       puts "RA:   #{@ra}"
   end
   
    def listar 
        puts "Aluno: #{@nome}"
        for disciplina in @ds
            puts "Matriculado em: #{disciplina.nome}"
        end
    end
end

a1 = Aluno.new("KHAYAN","0050831711022")
a2 = Aluno.new("GRAZI","0050831711013")
a3 = Aluno.new("FRANCIELE","0050831711036")
a4 = Aluno.new("VF","0050831711033")
a5 = Aluno.new("MATHEUS","0050831721026")

d = Disciplina.new("Desenv. Para Servidores I")
d2 = Disciplina.new("Projeto e Navegação")
d.matricular(a1)
d.matricular(a2)
d.matricular(a3)
d.matricular(a4)
#nil => OBJETO N CRIADO, ERRO
a6 = nil
d.trancar(a6)
#--------------------------------
d.matricular(a5)
d2.matricular(a1)
d.listar
a1.listar