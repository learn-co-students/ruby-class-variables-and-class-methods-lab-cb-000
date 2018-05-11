

class Song
  @@count = 0
  @@artists = []
  @@genres = []


    def initialize(name, artist, genre)
        @@count += 1
        @name = name
        @artist = artist
        @genre = genre
        @@artists << artist
        @@genres << genre
      end

      def self.count
     @@count
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

 def self.artists
   @@artists.uniq
 end

 def self.genres
   @@genres.uniq
 end

 def self.genre_count
   @@genres.each_with_object(Hash.new(0)) { |o, h| h[o] += 1 }
 end
 
 def self.artist_count
   @@artists.each_with_object(Hash.new(0)) { |o, h| h[o] += 1 }

 end


end
