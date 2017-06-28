class Song

  attr_accessor :name, :artist, :genre
  attr_reader

 @@count = 0
 @@genres = []
 @@genre_count = {}
 @@artists = []
 @@artist_count = {}

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
   @@genres.uniq
 end

 def self.genre_count
   @@genres.each do |genre|
     @@genre_count[genre] ? @@genre_count[genre] += 1 : @@genre_count[genre] = 1
   end
  Hash[@@genre_count.sort]
 end

 def self.artists
   @@artists.uniq
 end

 def self.artist_count
   @@artists.each do |genre|
     @@artist_count[genre] ? @@artist_count[genre] += 1 : @@artist_count[genre] = 1
   end
  Hash[@@artist_count.sort]
 end

end
