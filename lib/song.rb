class Song
  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count = @@count + 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    return @@count
  end

  def self.artists
    return @@artists.uniq
  end

  def self.genres
    return @@genres.uniq
  end

  def self.artist_count
    return self.in_count(@@artists)
  end

  def self.genre_count
    return self.in_count(@@genres)
  end

  def self.in_count(ary)
    result = {}
    ary.each { |art|
    result[art] = 0 if result[art] == nil
    result[art] += 1
  }
    return result
  end


end
