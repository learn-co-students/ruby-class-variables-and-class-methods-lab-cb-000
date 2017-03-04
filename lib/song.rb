class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @@count += 1
    @@artists << artist
    @@genres << genre
    @name = name
    @artist = artist
    @genre = genre
  end
  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    counted = {}
    @@genres.each do |genre|
      if counted.has_key?(genre)
        counted[genre] += 1
      else
        counted[genre] = 1
      end
    end
    counted
  end

  def self.artist_count
    counted = {}
    @@artists.each do |artist|
      if counted.has_key?(artist)
        counted[artist] += 1
      else
        counted[artist] = 1
      end
    end
    counted
  end

end
