class Song
attr_accessor :name, :artist, :genre
@@count = 0
@@artists =[]
@@genres =[]
@@genre_count = {}
@@artist_count = {}



def initialize(name, artist, genre)
@@count +=1
@name = name
@artist = artist
@genre = genre
@@artists << artist

@@genres << genre

end

def self.count
@@count

end

def self.genres
@@genres.uniq
end

def self.artists
@@artists.uniq

end


def self.genre_count
  b = Hash.new(0)
@@genres.each do  |c|
  b[c] += 1
end
b
end


def self.artist_count
  b = Hash.new(0)
@@artists.each do  |c|
  b[c] += 1
end
b
end
end
