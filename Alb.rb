
require 'json'

require 'net/http'

require 'uri'

require 'open-uri'

def cantor ()

	system("clear || cls")

	print "\n\nInforme o nome do cantor: "

	valor = gets

	print "\n\nBaixando ... \n"

	valor.gsub(" ", "%20")

	return valor

end

def dados_curl ()

	# Inserir ' limit ' dinâmico com ARGV[0] e checar se a quantidade de álbuns é maior que disp.

	uri = URI.parse("https://api.spotify.com/v1/search?q="+cantor()+"&type=album&limit=5")

	request = Net::HTTP::Get.new(uri)

	request["Accept"] = "application/json"

	req_options = {

	  use_ssl: uri.scheme == "https",

	}

	response = Net::HTTP.start(uri.hostname, uri.port, req_options) do |http|

	  http.request(request)

	end

	if response.code != '200'

		system("clear || cls")

		puts "\n\n\nErro\n\n\n"

		exit 1

	end

	return JSON.parse(response.body).to_h

end

system ("clear || cls")

dados = dados_curl; cont = 0

(dados['albums']['items']).each do
   
   # Requisitar local para salvar com Shell ...

   open(dados['albums']['items'][cont]['images'][0]['url']) { |f|

	   File.open(cont.to_s+".jpg","wb") do |file|

	     file.puts f.read

	   end

	}

	cont += 1

end

system("clear || cls")

print "\n\n5 Capas de álbuns foram baixadas.\n\n\n"