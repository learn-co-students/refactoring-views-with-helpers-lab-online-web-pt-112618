class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name #getter and setter help association b/w song and artist this is added to the forms and params
    self.artist ? self.artist.name : nil
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end
end
