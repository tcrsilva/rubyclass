class Aluno
    def initialize(nome,endereco)
        @nome = nome
        # ESPERO UM OBJETO DO TIPO ENDERECO
        # SERIA BOM, NESTE CASO, UM CASE PARA VERIFICAR SE É ENDEREÇO
        @endereco = endereco
    end
    
    def exibir
        puts "Nome: #{@nome}"
        @endereco.mostrarDados
    end
end

class Endereco
    #estado colocaremos um simbolo
    # SP, RJ, ES, MG, RS, PR, SC, GO, MT, MS, BA, PE, CE, PI, MA, SE
    # TO, RN, AL, RR, RO, AC, AP, AM, PA, PB, DF
    def initialize(logradouro,cep,cidade,estado)
        @logradouro = logradouro
        @cep = cep
        @cidade = cidade
        @estado = estado
    end
    
    def mostrarDados
        puts "Logradouro: #{@logradouro}"
        puts "CEP: #{@cep}"
        puts "Cidade: #{@cidade}"
        puts "Estado: #{@estado}"
    end
end

e = Endereco.new("Rua: Xavier Pinheiro","11012-999","Santos",:SP)
a = Aluno.new("Letra Cursiva Pontes",e)
a.exibir