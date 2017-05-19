class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize name, artist, genre
    self.name, self.artist, self.genre = name, artist, genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    count = {}
    @@genres.uniq.each do |genre|
      count[genre] = @@genres.count(genre)
    end
    count
  end

  def self.artist_count
    count = {}
    @@artists.uniq.each do |artist|
      count[artist] = @@artists.count(artist)
    end
    count
  end
end
