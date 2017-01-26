# Albums

Essa aplicação foi criada em ruby utilizando as bibliotecas net / http, json, uri e open uri; a mesma acessa a web api do spotify e realiza o download das capas de álbuns do cantor ou banda na ordem decrescente ( capas recentes para antigas ).

Para executar você vai precisar somente de conexão com a internet e o ruby instalado ( ruby-lang.org/pt/downloads ), as capas de álbuns ficam disponíveis no mesmo diretório em que o arquivo com extensão .rb se encontra.

Nas configurações padrão o programa realiza o download de todas as capas disponíveis, para alterar e fazer o download apenas da quantidade que você deseja adicione " &limit= " e informe a quantidade " &limit=1 " na linha 29.
