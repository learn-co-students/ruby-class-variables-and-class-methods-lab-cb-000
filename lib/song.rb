class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.to_set
  end

  def self.artists
    @@artists.to_set
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |index|
      if genre_count[index]
        genre_count[index] += 1
      else
        genre_count[index] = 1
      end
    end
    genre_count
  end

  def self.artist_count
    artists_count = {}
    @@artists.each do |index|
      if artists_count[index]
        artists_count[index] += 1
      else
        artists_count[index] = 1
      end
    end
    artists_count
  end

end
