class Song

  @@count = 0
  @@genres = []
  @@artists = []

  def self.count
    @@count
  end

  def self.genre
    @@genres.uniq
  end

  def self.artist
    @@artists.uniq
  end

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@count += 1
  end

  attr_accessor :name, :artist, :genre

  def self.genre_count
    @@genre_count.each do |genre|
      if genre_count[genre]
        genre_count += 1
      else
        genre_count = 1
      end
    end
    genre_count
  end

  def self.artist_count
    @@artists.inject(hash.new(0)) {|total, i| total[i] += 1; total}
  end


end
