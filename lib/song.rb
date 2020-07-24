class Song
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}

  attr_accessor :name, :artist, :genre

  def self.count
    @@count
  end
  def self.artists
    @unique_artists = []
    @@artists.each {|artist|
      if !@unique_artists.include?(artist)
        @unique_artists << artist
      end
    }
    return @unique_artists
  end

  def self.genres
    @unique_genres =[]
    @@genres.each do |genre|
      if @unique_genres.include?(genre) == false
        @unique_genres << genre
      end
    end
    return @unique_genres
  end

  def self.genre_count
    genre_count_hash = {}
    @@genres.each do |genre|
      if genre_count_hash[genre] != nil
        genre_count_hash[genre] += 1
      else
        genre_count_hash[genre] = 1
      end
    end
    return genre_count_hash
  end

  def self.artist_count
    artist_count_hash = {}
    @@artists.each do |artist|
      if artist_count_hash[artist] != nil
        artist_count_hash[artist] += 1
      else
        artist_count_hash[artist] = 1
      end
    end
    return artist_count_hash
  end

  def initialize(name, artist, genre)

    @@count += 1
    @@artists << artist
    @@genres << genre
    @name = name
    @artist = artist
    @genre = genre


  end
end
