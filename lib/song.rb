class Song
  attr_reader :name, :artist, :genre

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
    display_artists = []
    @@artists.each do | artist |
      display_artists << artist if display_artists.none? { | a | a == artist}
    end
    display_artists
  end

  def self.genres
    @@genres
    display_genres = []

    @@genres.each do | genre |
      display_genres << genre if display_genres.none? { | g | g == genre }
    end
    display_genres
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do | artist |
      if artist_count[artist] == nil
        artist_count[artist] = 1
      else
        artist_count[artist] = artist_count[artist] + 1
      end
    end
    artist_count
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do | genre |
      item = genre_count[genre]
      item == nil ? genre_count[genre] = 1 : genre_count[genre] = item + 1
    end
    genre_count
  end
end
