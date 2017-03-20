class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  class << self
    def count
      @@count
    end

    def artists
      @@artists.uniq
    end

    def genres
      @@genres.uniq
    end

    def genre_count
      histogram @@genres
    end

    def artist_count
      histogram @@artists
    end

    private

    def histogram(collection)
      hash = {}

      collection.each do |item|
        hash[item] ||= 0
        hash[item] += 1
      end

      hash
    end
  end

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << @artist
    @@genres << @genre
  end
end
