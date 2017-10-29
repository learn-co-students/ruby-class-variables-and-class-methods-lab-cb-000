class Song

attr_accessor :name, :artist, :genre

@@count = 0
@@genres = []
@@artists = []

def initialize(name, artist, genre)
  @artist = artist
  @genre = genre
  @name = name
  @@count += 1
  @@genres << genre
  @@artists << @artist
end


def self.count
  return @@count
end

def self.artists
  #@@artists << @artist unless @@artists.include?(@artist)
return @@artists.uniq
end

def self.genres
  return @@genres.uniq
end

def self.genre_count
  @@genres.each do |genre|
    @@genre_count[genre] = @@genres.count(genre)
  end
  @@genre_count
end

def self.artist_count
  @@artists.each do |art|
    @@artist_count[art] = @@artists.count(art)
  end
  @@artist_count
end

end
