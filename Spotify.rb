
require 'rubygems'

require 'rspotify'


RSpotify.authenticate( "Id", "Secret" )


def gartist

	print "\nWhat's the name of artist or band : "

	artist = gets.chomp

	print "\n"

	return artist.capitalize

end

def download ( albm )

	count = 1

	while albm do

		count += 1

	end

end


system( "clear" )


User = gartist

Root = RSpotify::Artist.search( User.to_s )


Arti = Root.first

Albm = Arti.albums
