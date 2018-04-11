class Song
  @@count  = 0
  @@artists = []
  @@genres = []

  attr_accessor :name , :genre, :artist
  def initialize(name,artist,genre)
    @name = name
    @genre = genre
    @artist = artist
    @@count += 1
    @@artists << artist
    @@genres << genre
  end
  def self.count
    @@count
  end
  def self.genres
    genres = []
      @@genres.each do|genre|
          if genres.include? genre
            genres
          else
            genres << genre
          end
      end
      genres
  end
  def self.artists
    artists = []
      @@artists.each do|artist|
          if artists.include? artist
            artists
          else
            artists << artist
          end
      end
      artists
  end
  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count.include? genre
      genre_count[genre] += 1
    else
      genre_count[genre] = 1
    end
  end
    genre_count
  end
  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count.include? artist
      artist_count[artist] += 1
    else
      artist_count[artist] = 1
    end
  end
    artist_count
  end
end
