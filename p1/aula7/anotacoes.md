# Módulos - Modules (Mixin/namespace) #
Um módulo provê uma interface a ser "misturada" com alguma classe. Não pode ser
instanciado, ele é apenas um conjunto de métodos (e constantes).

```rb
Module Teste
    def teste               |
        puts "teste..."     |-> Não estático (pode se misturar)
    end                     |
    
    def Teste.metodo_estatico       |
        puts "método estático"      |-> Estático (não se mistura)
    end                             |
end

class Foo
    #!O include irá misturar os métodos de teste!#
    include Teste
end

Teste.método_estatico
foo = Foo.new
foo.teste
```
* Diferentemente das interfaces brincar() e matar() serão as mesmas;
* Diagrama completo e exemplo.rb

### Importante identificar de onde vem os métodos

> É possível dar quantos includes quiser dentro da classe
> Especionar métodos: puts t.methods // #(self.class) printa na tela qual o tipo

# Duck Typing #
> "Polimorfismo"

"Se grasna como um pato, nada como um pato e voa como pato. Essa coisa só podeser um pato."
 * !! Não se diferencia pelo tipo, se diferencia pelo método !!
* ex: pato.rb
