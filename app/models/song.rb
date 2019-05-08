class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name
  end

  def artist_name=(name)
    artist = Artist.find_by(name: name)
    if artist.nil?
      song = self.build_artist(name: name)
      song.save
    else
      self.artist = artist
    end
  end
end
