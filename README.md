# Albums

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/3d2d3f3980a140ecb64e6f85862679d3)](https://www.codacy.com/app/Sphinxs/Albums?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=Sphinxs/Albums&amp;utm_campaign=Badge_Grade)

Essa aplicação foi criada em [ruby](http://www.wikiwand.com/en/Ruby_(programming_language)) utilizando as bibliotecas [net  http](https://ruby-doc.org/stdlib-2.4.1/libdoc/net/http/rdoc/Net/HTTP.html), [json](http://ruby-doc.org/stdlib-2.0.0/libdoc/json/rdoc/JSON.html), [uri](https://docs.ruby-lang.org/en/2.1.0/URI.html) e [open uri](https://ruby-doc.org/stdlib-2.1.0/libdoc/open-uri/rdoc/OpenURI.html); a mesma acessa a [web api do spotify](https://developer.spotify.com/web-api/) e realiza o download das capas de álbuns do cantor ou banda na ordem decrescente.

Para executar você vai precisar somente de conexão com a internet e do [ruby](https://www.ruby-lang.org/pt/downloads/) instalado, as capas de álbuns ficam disponíveis no mesmo diretório em que o arquivo com extensão `.rb` se encontra.

Por padrão a aplicação realiza o download de todas as capas disponíveis do cantor ou banda informado, para alterar e fazer o download apenas da quantidade que você deseja adicione " `&limit=` " e informe a quantidade " `&limit=1` " na linha 29.
