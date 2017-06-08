class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name

    @artist = artist
    @@artists << @artist

    @genre = genre
    @@genres << @genre

    @@count += 1
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
    g_count = {}
    g_count = @@genres.inject(Hash.new(0)) {|h, i| h[i] += 1; h}
    g_count
  end

  def self.artist_count
    a_count = {}
    a_count = @@artists.inject(Hash.new(0)) {|h,i| h[i] += 1; h}
    a_count
  end

end
