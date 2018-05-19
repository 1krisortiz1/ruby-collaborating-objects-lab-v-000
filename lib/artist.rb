class Artist
  attr_accessor :name
  attr_reader :songs # the only way to add songs is by call the add_song method

  def initialize(name)
    @name = name
    @songs = []
  end

  @@all = []

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
    
  end

  def self.find_by_name(name)
    @@all.detect do |artist|
      artist.name == name
  end

  def self.create_by_name(name)
  end

  def add_song(song)
    songs.push(song)
  end

  def save
    @@all << self
  end
end

