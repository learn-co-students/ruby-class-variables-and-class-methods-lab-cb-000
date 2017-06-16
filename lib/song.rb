class Song

  attr_accessor :name,:artist,:genre

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
    artists = @@artists.uniq
    artists
  end

  def self.genres
    genres = @@genres.uniq
    genres
  end

  def self.genre_count
    genre_count = Hash.new
    @@genres.each do |genre|
      if genre_count.key?(genre)
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end

  def self.artist_count
    artist_count = Hash.new
    @@artists.each do |artist|
      if artist_count.key?(artist)
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end
end
