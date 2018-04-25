class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@artists << @artist
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

  def self.genre_count
    @@genres.each do |hees|
      @@genre_count[hees] = @@genres.count(hees)
    end
      @@genre_count
    end

  def self.artist_count
    @@artists.each do |fan|
      @@artist_count[fan] = @@artists.count(fan)
    end
    @@artist_count
  end


end
