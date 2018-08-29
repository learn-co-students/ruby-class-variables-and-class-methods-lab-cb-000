class Song

  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}

  def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@artists.push(artist)
  @@genres.push(genre)
end



  def name
    @name
  end

  def artist
    @artist
  end

  def genre
    @genre
  end

def self.count
  @@count
end

def self.artists
  @@artists.uniq
end

def self.genres
  @@genres.uniq
end


def self.genre_count
   @@genres.each { |genre|
     @@genre_count[genre] = @@genres.count(genre)
   }
   @@genre_count
end

def self.artist_count
   @@artists.each { |artist|
     @@artist_count[artist] = @@artists.count(artist)
   }
   @@artist_count
end


end
