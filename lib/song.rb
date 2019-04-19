class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = Hash.new(false)
  @@artist_count = Hash.new(false)


  def initialize(name, artist, genre)
    @name, @artist, @genre = name, artist, genre
    @@count +=1
    @@genres << genre
    @@artists << artist
    @@genre_count[genre] = @@genres.count(genre)
    @@artist_count[artist] = @@artists.count(artist)
  end

  def self.genre_count
    @@genre_count
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

  def self.artist_count
    @@artist_count
  end 

end
