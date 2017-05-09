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

  def self.artist_count
    art_count = {}
    @@artists.each do |x|
      art_count[x] ||= 0
      art_count[x] += 1
    end
    art_count
  end

  def self.genre_count
    gen_count = {}
    @@genres.each do |x|
      gen_count[x] ||= 0
      gen_count[x] += 1
    end
    gen_count

  end
end
