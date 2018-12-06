class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@genres << @genre
    @@artists << @artist
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

  def self.genre_count
    genre_counter = {}
    @@genres.each do |uniq_genre|
      if genre_counter[uniq_genre]
        genre_counter[uniq_genre] +=1
      else
        genre_counter[uniq_genre] = 1
    end
  end
    genre_counter
  end

  def self.artist_count
    artist_counter = {}
    @@artists.each do |uniq_artist|
      if artist_counter[uniq_artist]
        artist_counter[uniq_artist] +=1
      else
        artist_counter[uniq_artist] = 1
    end
  end
    artist_counter
  end

end
