module ArtistsHelper

	def display_artist(song)
		if song.artist
			link_to song.artist.name, song.artist
		else
			link_to "Add artist", new_artist_path
		end
	end
end
