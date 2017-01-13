class Song

@@count = 0
@@genres = []
@@artists = []

attr_accessor :name, :artist, :genre

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

def self.genres
  genres = []
  @@genres.each do |genre_type|
    genres << genre_type if !genres.include?(genre_type)
end
  genres
end

def self.artists
  artists = []
  @@artists.each do |artist_name|
    artists << artist_name if !artists.include?(artist_name)
  end
  artists
end

def self.genre_count
  genre_hash = {}
  @@genres.each do |genre|
    if genre_hash[genre] == nil
      genre_hash[genre] = 1
    else
      genre_hash[genre] +=1
    end
  end
    genre_hash
end

def self.artist_count
  artist_hash = {}
  @@artists.each do |artist|
    if artist_hash[artist] == nil
      artist_hash[artist] = 1
    else
      artist_hash[artist] +=1
    end
  end
  artist_hash
end


end
