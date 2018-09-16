class Artist
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def self.all
    @@all
  end

  def new_song(song)
    @songs << song
    song.artist = self
  end

  def songs
    @songs
  end

  def genres
    @songs.collect { |song| song.genre }
  end

end
