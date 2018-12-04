class Song
  attr_reader :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  @@count = 0
  @@genres = []
  @@artists = []

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
    counter = {}
    @@genres.each do |genre|
      if counter[genre]
        counter[genre] += 1
      else
        counter[genre] = 1
      end
    end
    counter
  end

  def self.artist_count
    counter = {}
    @@artists.each do |artist|
      if counter[artist]
        counter[artist] += 1
      else
        counter[artist] = 1
      end
    end
    counter
  end
end
