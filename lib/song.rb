class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @artist = nil

  end

  def artist=(artist)
    @artist = artist
    artist.add_song(self) 

  end
end
