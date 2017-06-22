# Albums

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/3d2d3f3980a140ecb64e6f85862679d3)](https://www.codacy.com/app/Sphinxs/Albums?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=Sphinxs/Albums&amp;utm_campaign=Badge_Grade)

Essa aplicação foi criada em ruby utilizando as bibliotecas net / http, json, uri e open uri; a mesma acessa a web api do spotify e realiza o download das capas de álbuns do cantor ou banda na ordem decrescente ( capas recentes para antigas ).

Para executar você vai precisar somente de conexão com a internet e do [ruby](https://www.ruby-lang.org/pt/downloads/) instalado, as capas de álbuns ficam disponíveis no mesmo diretório em que o arquivo com extensão `.rb` se encontra.

Por padrão a aplicação realiza o download de todas as capas disponíveis do cantor ou banda informado, para alterar e fazer o download apenas da quantidade que você deseja adicione " &limit= " e informe a quantidade " &limit=1 " na linha 29.
