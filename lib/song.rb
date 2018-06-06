require 'pry'

class Song
    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@artists << artist
        @@genres << genre
        @@count += 1
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
        genre_uniq = @@genres.uniq
        genre_dict = {}
        genre_uniq.each{|genre| genre_dict[genre] = @@genres.count(genre)}
        genre_dict
    end

    def self.artist_count
        artists_uniq = @@artists.uniq
        artists_dict = {}
        artists_uniq.each { |artist| artists_dict[artist] = @@artists.count(artist)}
        artists_dict
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
end
