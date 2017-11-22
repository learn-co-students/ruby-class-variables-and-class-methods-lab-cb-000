#my Song class code below
class Song
    # this codes in my main variables
    attr_accessor :name, :artist, :genre
    # my class variables
    @@count = 0
    @@artists = []
    @@genres = []

    # my instance variables for the methods below
    def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre
      @@count += 1
      @@genres << genre
      @@artists << artist
    end

    # how to count and add artists to the DB
    def self.count
      @@count
    end

    def self.artists
      @@artists.uniq
    end

    def self.artist_count
      artist_count = {}
      @@artists.each do |artist|
        if artist_count[artist]
          artist_count[artist] += 1
        else
          artist_count[artist] = 1
        end
      end
      artist_count
    end

    # how to count and add genres to the DB
    def self.genres
      @@genres.uniq
    end

    def self.genre_count
      genre_count = {}
      @@genres.each do |genre|
        if genre_count[genre]
          genre_count[genre] += 1
        else
          genre_count[genre] = 1
        end
      end
      genre_count

    end
  end
