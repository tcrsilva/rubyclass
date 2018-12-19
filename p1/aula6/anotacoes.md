# HERANÇA #
Subclasses ACESSAM os métodos das classes que estão na hierarquia superior da herança.

No _RUBY_: formalização da relação de herança se dá através do "<"

OBS: Diferença entre protected no ruby(depende de um terceiro, se ambos forem a mesma classe, daí há o acesso) e java.

> VAI CAIR HERANÇA E PROTECTED

# SOBRESCRITA (não é um polimorfismo)
_DEF_: Acontece quando usamos, em um subclasse, o mesmo nome e a mesma quantidade de parâmetros de um método da superclasse.

                                __________________              
                               |    Animal         |           
                    Atributos{ |- @nome            |              
                               |                   |     
                               |-------------------|
                               |+emitir_som()      |  
                               |+dormir()          |  
                      Metodos{ |+comer()           |  
                               |___________________|  
                               
                                ^               ^    
                                |               |
                                |               |
                                |               |
                    ___________________        ___________________          
                   |  Cachorro         |      |   Galo            |      
                   |                   |      |                   |      
                   |                   |      |                   |     
                   |                   |      |                   |      
                   |                   |      |                   |  
                   |-------------------|      |                   |  
                   |+ emitir_som()     |      |+ emitir_som()     |  
                   |___________________|      |___________________|  

# EX 6 #

1) Um Quadrilatero possui uma interface comum para calculo de área e perimetro. Para calcular a área de um quadrado basta multiplicar seu lado por ele mesmo, de um retângulo basta multiplicar os dois lados distintos. O perimetro do quadrado eh quatro vezes o lado e o do retângulo é o 
dobro da soma dos dois lados distintos. 

> Implemente a situacao descrita e desenhe um diagrama de classes.
