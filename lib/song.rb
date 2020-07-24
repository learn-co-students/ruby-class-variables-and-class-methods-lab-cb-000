
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
    genre_array = []
    @@genres.each do |item|
      unless genre_array.include?(item)
        genre_array.push(item)
      end
    end
    return genre_array
  end


  def self.artists
    artists_array = []
    @@artists.each do |item|
      unless artists_array.include?(item)
        artists_array.push(item)
      end
    end
    return artists_array
  end

  def self.genre_count
    genre_hash = {}
    @@genres.each do |item|
      if genre_hash.include?(item)
        genre_hash.each do |key, value|
          genre_hash[key] = value + 1
        end
      else
        genre_hash[item] = 1
      end
    end
    return genre_hash
  end


  def self.artist_count
    artist_hash = {}
    @@artists.each do |item|
      if artist_hash.include?(item)
        artist_hash.each do |key, value|
          artist_hash[key] = value + 1
        end
      else
        artist_hash[item] = 1
      end
    end
    return artist_hash
  end
end
