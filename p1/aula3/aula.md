# Modificadores de acesso - METAPROGRAMAÇÃO #
Ruby é dinâmico, portanto, permite adicionar métodos e operações aos objetos em
tempo de execução.
_!! Todos os acessos (de forma da classe) a atributos em ruby, são bloqueados. !!_

Levando o dinamismo ao extremo, podemos criar métodos que definem métodos em
outros objetos, por exemplo:

> class Aluno
>    #não sabe nada
> end

> class Professor
>    def ensina(aluno)
>        def aluno.escreve
>        "sei escrever!"
>        end
>    end
> end

> juca = Aluno.new
> juca.respond_to? :escreve #respond_to? verifica se há um método com aquele nome
> => false

> professor = Professor.new
> professor.ensina juca
> juca.escreve
> => "sei escrever!"
 
# ACESSORES: #
## Atributos ##
Também conhecidos como variáveis de instância. Em Ruby são sempre privados e
começam com @. Fora da classe não há como alterá-los. Apenas os métodos de um
objeto é capaz de alterar seus atributos (encapsulamento).

> Leitura: y = @atr + 1
>            puts "...#{@atr}
>
> Escrita: @atr = 7
            
> Os dois: @atr = @atr + 1
>            escrita  leitura
>            
>            Lado esquerdo = escrita
>            Lado direito  = leitura
            
## attr_acessor ##
É um "atalho" que cria métodos de leitura, escrita e variável de instância em
uma classe.

// Modelo de Método acessor e Modificador:

> class Pessoa 
>    def nome #acessor
>        @nome
>    end
>    
>    def nome=(novo_nome)
>        @nome = novo_nome
>    end
> end
>
> pessoa = Pessoa.new
> pessoa.nome=("José")
> puts pessoa.nome
> #=> "José"

    // Dado um exemplo: Você tem uma classe Carro e quisesse acessar uma propriedade cor
    
>        class Carro
>        end
>        
>        carro = Carro.new
>        carro.cor #=>NoMethodError: undefined metho `cor'
>        carro.cor = 'azul' #=>NoMethodError: private method `cor='
        
    // Pode-se implementar da seguinte forma:
        
>        class Carro
>            @cor=nil
>            
>            def cor
>                @cor
>            end
>            
>            def cor=(value)
>                @cor = value
>            end
>        end
>        
>        carro = Carro.new
>        carro.cor = 'azul'
>        carro.cor #=> "azul"
        
    // Usando attr_acessor, esse códgio é criado, a classe ficaria:
    
>        class Carro
>            attr_acessor :cor
>        end

_!!Exemplo com 'attr acessor' no arquivo: acessor.rb!!_

# OBS: não colocar attr_acessor na PROVA #

_Acesso para método:_ Se tiver um objeto obj e um metodo metodo1(), o acesso
é dado por obj.metodo1()

_Bom saber que:_
* No JAVA temos 4 modificadores de acesso (public, private, protected e default -padrão-) 
* No RUBY temos 3 modificadores de acesso (public, private e protected)

# SÓ PARA MÉTODO (RUBY) #
Toda classe possui os seguintes métodos:

### 1) Públicos ###
_Public:_ Um método público pode ser acessado por qualquer classe de fora;
Por default = coloca public ou nada e continua sendo público;
Sem modificador (No modifier).

### 2) Privados ###
_Private:_ Um metodo privado só pode ser acessado pela propria instância;

### 3) Protegido ###
_Protected:_ equivale ao private do java/php; 
Pode ser acessado pela propria classe (e seus filhos);

# SÓ PARA ATRIBUTOS #
_Acessor/Getter:_ Dar permissão de leitura a um atributo;
_Mutator/Setter:_ Dar permissão de escrita a um atributo.

## DIFERENÇAS DE GET E SET ##
#### Mas, primeiramente, o que são? ####
São modifcadores de acesso, mais usado quando tratamos de encapsulamento.
Se, por exemplo, utilizar um modificador _private_, será possível alterar e 
retornar o valor dessa variável pelos métodos _get_ e _set_, mais conhecidos
por convenção por_getters_ and _setters_.

### PHP ###
+ set_num
+ get_num

### JAVA ###
+ getNum
+ setNum

### RUBY ###
+ num (get)
+ num= (set)

> o attr faz os dois 
> attr_acessor :num

# ESTÁTICOS: # 
Um membro estático é desacoplado da instância. É chamado também de membro da
classe.

