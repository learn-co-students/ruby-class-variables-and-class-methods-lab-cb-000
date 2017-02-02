class Song
  @@count = 0
  @@artists = []
  @@genres = []

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  attr_accessor :name, :artist, :genre

  def initialize name, artist, genre
    @@count += 1
    @@genres.push(genre)
    @@artists.push(artist)
    @name = name
    @artist = artist
    @genre = genre
  end

  def artist=(artist)
    @artist= artist
    if !@@artists.include?(artist)
      @@artists.push(artist)
    end
  end

  def self.genre_count
    genres = {}
    @@genres.map{ |genre|
      if genres.key?(genre)
        genres[genre] += 1
      else
        genres[genre] = 1
      end
    }
    return genres
  end

  def self.artist_count
    artists = {}
    @@artists.each { |artist|
      if artists.key?(artist)
        artists[artist] += 1
      else
        artists[artist] = 1
      end
    }
    return artists
  end

end


rappers_delight = Song.new("Rappers Delight", "SugarHill Gang", "Rap")
man_i_feel_like_a_woman = Song.new("Feel like a woman", "Shania Twain", "Country")
stairway = Song.new("Stairway to Heaven", "Led Zeppelin", "Rock")
stairway = Song.new("Stairway to Heaven", "Led Zeppelin", "Rock")

puts Song.count
puts Song.artists
puts Song.genres
puts Song.genre_count
puts Song.artist_count
