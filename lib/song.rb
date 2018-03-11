class Song
  @@count = 0
  @@genres = []
  @@artists = []
  attr_reader :name
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  def self.class
    return @@count
  end
  def self.genres
    return @@genres.uniq
  end
  def self.count
    return @@count
  end
  def self.artists
    return @@artists.uniq
  end

  def self.genre_count
    collector = {}
    @@genres.each do |element|
      if collector.key?(element)
        collector[element] += 1
      else
        collector[element] = 1
      end
    end
    return collector
  end

  def self.artist_count
    collector = {}
    @@artists.each do |element|
      if collector.key?(element)
        collector[element] += 1
      else
        collector[element] = 1
      end
    end
    return collector
  end
  
end









