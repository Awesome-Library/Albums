 
require 'json'

require 'net/http'

require 'uri'

require 'open-uri'


def cantor ()

	system ( "clear || cls" )

	print "\n\nInforme o nome do cantor: "

	valor = gets

	print "\n\nBaixando ...\n"

	valor.gsub(" ", "%20")

end

def dados_curl ()

	# Na configuração atual todas as capas são baixadas, para baixar um número exato
	# acrescente " &limit=1 " ao final da url : ( Para parar o download ctrl + c )

	uri = URI.parse("https://api.spotify.com/v1/search?q="+cantor()+"&type=album")

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

   open(dados['albums']['items'][cont]['images'][0]['url']) { |f|

	   File.open(cont.to_s+".jpg","wb") do |file|

	     file.puts f.read

	   end

	}

	cont += 1

end

system("clear || cls")

print "\n\nDownload concluído !\n\n\n"
