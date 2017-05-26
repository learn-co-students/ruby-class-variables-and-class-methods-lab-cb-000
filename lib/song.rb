class Song

  @@count = 0
  @@artists = Array.new # this is actually extraneous, but needed for rspec
  @@genres = Array.new # this is actually extraneous, but needed for rspec
  @@genre_count = Hash.new
  @@artist_count = Hash.new
  attr_reader :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist if !@@artists.include?(artist)
    @@genres << genre if !@@genres.include?(genre)
    if @@genre_count[genre] == nil
      @@genre_count[genre] = 0
    end
    @@genre_count[genre] += 1
    if @@artist_count[artist] == nil
      @@artist_count[artist] = 0
    end
    @@artist_count[artist] += 1
  end

  def self.count()
    return @@count
  end

  def self.artists()
    return @@artist_count.keys
  end

  def self.genres()
    return @@genre_count.keys
  end

  def self.genre_count()
    return @@genre_count
  end

  def self.artist_count()
    return @@artist_count
  end

end
