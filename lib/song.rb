class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize name, artist, genre
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@genres << @genre
    @@artists << @artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq {|val| val}
  end

  def self.artists
    @@artists.uniq {|val| val}
  end

  def self.genre_count
    genre_count = {}
    @@genres.each do |val|
      if genre_count[val]
        genre_count[val] += 1
      else
        genre_count[val] = 1
      end
    end
    genre_count
  end

  def self.artist_count
    artist_count = {}
    @@artists.each do |val|
      if artist_count[val]
        artist_count[val] += 1
      else
        artist_count[val] = 1
      end
    end
    artist_count
  end

end
