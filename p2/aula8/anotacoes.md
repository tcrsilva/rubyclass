# O que é Rails #
É uma framework web. Com estilo de arquitetura _MVC (Model-View-Controller)_. Usado para simular APP REST.

## Gems ##
Build tool / Gerenciador de pacotes - facilita a instalação 

## Rake ## 
Ruby Make

## Blunder ##
"Instalador das Gems"

# Model - View - Controller #
- Model: Regras de Negócio. Informação que a aplicação trabalha (+BD);
- View: Camada de Apresentação/Representação (Front-End);
- Controller: Roteirização (rotas). É o diretor da interação entre eles + manipulação de view e model. 

![exemplo1](https://ide.c9.io/tcrsilva/rubyclass/p2/aula8/exemplo.png)
    
O ciclo dessa estrutura começa quando o usuário interage com a interface (VIEW) e chama um evento; o CONTROLLER recebe o chamado da VIEW e acessa o MODEL, atualizando frequentemente a interface.

       _______
    BD <----  |
            | |
            | |
            | |
              v
            MODEL
            ^ |
            | |
            | | 
            | |                                                        -JS
            | v       ----------------------------->  VIEW (Interface) -Html
          CONTROLLER <-----------------------------                    -CSS
            ^ |                                                             
            | |
            | | Rota
            | | 
            | v
         ____________
        | ---------- |
        | |        | |
        | |        | |
        |  --------- |
        /-------------\
       /               \
       -----------------
            USUÁRIO
            
# AMBIENTES #
- DEV: Usado para desenvolvimento (c9)
- TESTES: Ambiente usado para rodar casos de teste (Capybara)
- PRODUÇÃO: É onde o sistema deve rodar sem erro (Heroku)
- DEV + TESTES + PRODUÇÃO = DEPLOY (Dolken)