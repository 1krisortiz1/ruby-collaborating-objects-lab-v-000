class Song
  attr_accessor :name
  attr_reader :artist
  def initialize(name)
    @name = name
    @artist = nil

  end
end
