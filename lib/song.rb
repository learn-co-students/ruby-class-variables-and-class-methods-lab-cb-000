class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist
    @@genres << genre
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
    result = {}
    @@genres.each { |genre|
      if result[genre] == nil
        result[genre]= 1
      else
        result[genre] += 1
      end
    }
    result
  end

  def self.artist_count
    result = {}
    @@artists.each { |artist|
        if result[artist] == nil
          result[artist] = 1
        else
          result[artist] += 1
        end
    }
    result
  end

end
