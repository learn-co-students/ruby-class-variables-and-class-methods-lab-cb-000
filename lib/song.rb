class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name =  name
    @artist = artist
    @genre = genre

    @@artists << @artist
    @@genres << @genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    return @@artists.uniq
  end

  def self.artist_count
    artist_counter = {}
    @@artists.each do |x|
      if artist_counter[x]
        artist_counter[x] += 1
      else
        artist_counter[x] = 1
      end
    end
    artist_counter
  end

  def self.genres
    return @@genres.uniq
=begin --Slower Method--
    genre_return = []
    @@genres.each do |x|
      genre_return << x unless genre_return.include?(x)
    end
    return genre_return
=end
  end

  def self.genre_count
    genre_counter = {}
    @@genres.each do |x|
      if genre_counter[x]
        genre_counter[x] +=1
      else
        genre_counter[x] = 1
      end
    end
    return genre_counter
  end

end
