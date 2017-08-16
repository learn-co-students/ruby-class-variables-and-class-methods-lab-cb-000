
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
    @@artists.uniq!
  end

  def self.artist_count
    a_count = {}
    @@artists.each do |a|
      if a_count[a]
        a_count[a] += 1
      else
        a_count[a] = 1
      end
    end
    a_count
  end

  def self.genres
    @@genres.uniq!
  end

  def self.genre_count
    g_count = {}
    @@genres.each do |g|
      if g_count[g]
        g_count[g] += 1
      else
        g_count[g] = 1
      end
    end
      g_count
  end
end