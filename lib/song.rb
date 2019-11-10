class Song

  @@count=0
  @@genres = []
  @@artists = []

  def self.count
    @@count
  end

  def self.genres
    @@genres.unique
  end

  def self.artists
    @@artists
  end

  def initialize(name, artist, genre)
    @name = name,
    @artist = artist
    @genre = genre
    @@artist << artist
    @@genres << genre
    @@count += 1
  end

  attr_accessor :name, :artist, :genre


end
