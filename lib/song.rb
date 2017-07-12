class Song
    attr_reader :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []

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

    def self.artists
        Set.new(@@artists).to_a
    end

    def self.genres
        Set.new(@@genres).to_a
    end

    def self.genre_count
        hash = {}
        @@genres.each do |genre|
            hash[genre] = hash[genre] || 0
            hash[genre] += 1
        end
        hash
    end

    def self.artist_count
        hash = {}
        @@artists.each do |artist|
            hash[artist] = hash[artist] || 0
            hash[artist] += 1
        end
        hash
    end
end
