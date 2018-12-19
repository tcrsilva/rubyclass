class Curso
    #construtor
    def initialize(nome, carga, qtAluno)
        @nome = nome
        @carga = carga
        @qtAluno = qtAluno
    end
    
    def mostrarCarga
        puts "Carga horária de: #{@carga}"
    end
    
    def mostrarAlunos
        puts "Quantidade de alunos: #{@qtAluno}"
    end
    
    def mostrarFraseDeOdio
        case @nome
            when :ADS
                puts "CURSO DE PROGRAMADORES COBOL"
            when :SI
                puts "CURSO DE DESIGN"
            when :LOG
                puts "CURSO DE CAMINHONEIRO & CONTAINER"
            when :GE
                puts "CURSO DE DESEMPREGADO"
            when :GP
                puts "CURSO DE LOGISTICA GOURMET"
            else
                puts "N TEM NA FATEC SANTOS"
        end
    end
end

c1 = Curso.new(:SI,2800,15)
c1.mostrarFraseDeOdio
c1.mostrarCarga