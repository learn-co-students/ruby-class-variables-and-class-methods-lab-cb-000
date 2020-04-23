class Song
 attr_accessor :name, :artist, :genre


  @@count = 0
  @@genres = []
  @@artists = []

def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
    @@count += 1
end

def self.count
  @@count
end

def self.artists
  @@artists.each_with_index do |word, index|
    if @@artists.count(word)>= 2
      @@artists.delete_at(index)
    end
  end
end

def self.genres
  @@genres.uniq
end

def self.genre_count
  hash = {}
  @@genres.each do |word|
    count = @@genres.count(word)
    hash[word] =count
  end
  hash



end

def self.artist_count
  hash = {}
  @@artists.each do |word|
    count = @@artists.count(word)
    hash[word] =count
  end
  hash

end

end
