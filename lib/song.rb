class Song
  @@count = 0
  @@genres = []
  @@artists = []

  attr_reader :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  # return the number of Songs added
  def self.count
    @@count
  end

  # return an array of unique genres added
  def self.genres
    @@genres.uniq
  end

  # return an array of unique artists added
  def self.artists
    @@artists.uniq
  end

  # return a hash of genres and counts
  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end

  # return a hash of artists and counts
  def self.artist_count
    artist_count = {}
    @@artists.each do |genre|
      if artist_count[genre]
        artist_count[genre] += 1
      else
        artist_count[genre] = 1
      end
    end
    artist_count
  end
end
