class Song

  attr_accessor :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(title, artist, genre)
    @@count += 1
    @@artists << artist
    @@genres << genre
    @name = title
    @artist = artist
    @genre = genre
  end

  def self.count
    @@count
  end

  def self.artists
    return @@artists.uniq
  end

  def self.genres
    return @@genres.uniq
  end

  def self.genre_count
    the_count_hash = {}
    @@genres.each do |genre|
      if the_count_hash.key?(genre)
        the_count_hash[genre] += 1
      else
        the_count_hash.store(genre, 1)
      end
    end
    return the_count_hash
  end

  def self.artist_count
    the_count_hash = {}
    @@artists.each do |artist|
      if the_count_hash.key?(artist)
        the_count_hash[artist] += 1
      else
        the_count_hash.store(artist, 1)
      end
    end
    return the_count_hash
  end
end
