# RELACIONAMENTO ENTRE CLASSES #

1) HAS-A: Quando uma classe A possui _UMA - e apenas uma - REFERÊNCIA (parâmetro ou atributo)_ a B;
 > !!ENTIDADES!!
 
  A HAS-A B
 "A tem um B"
 ![Exemplo1](https://ide.c9.io/tcrsilva/rubyclass/p1/aula4/ruby-1.png)
 
 *CASO PARTICULAR*
 ![Exemplo2](https://ide.c9.io/tcrsilva/rubyclass/p1/aula4/ruby-2.png)
 
Na prova: código + diagrama (diagrama de classes - UML)

### Exemplo: ###
Um pneu possui pressão que varia e 0 a 100 e um indicador que não
está furado. Quando usado 10 pontos de pressão são perdidos pode-se
encher um pneu até completar 100 pontos, se enchermos de modo a 
passar de 100 ele furará. Uma bicicleta possui modelo dos pneus e pode
acelerar caso os dois pneus estejam em boas condições gastando 10 pontos.
Implemente a situação descrita.

- Pneu não furado com mais de 10 pontos de pressão.

https://learnrubythehardway.org/book/ex42.html
https://staceylearnscode.wordpress.com/2015/09/27/learn-ruby-the-hard-way-exercise-42-is-a-has-a-objects-and-classes/