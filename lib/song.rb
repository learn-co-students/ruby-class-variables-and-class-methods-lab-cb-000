class Song
  attr_accessor :artist, :genre, :genre_count

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name,artist,genre)
    @@count += 1
    @@genres << genre if !(genres.include?(genre))
    @artist = artist
    @genre = genre
    @name = name
  end

  def name
    @name
  end

  def count
    @@count
  end
  
  def artists
    @@artists 
  end

  def genres
    @@genres
  end

  def genre_count
    @@genres.size
  end

  def artist_count
    @@artists.size
  end
  
end