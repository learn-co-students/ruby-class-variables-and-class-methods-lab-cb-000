class Song
  @@count = 0
  @@artists = []
  @@genres = []
  attr_reader :name, :artist, :genre

  def initialize(name, artist, genre)
    @@count += 1
    @@artists << artist
    @@genres << genre
    @name = name
    @artist = artist
    @genre = genre
  end

  def self.count
    @@count
  end

  def self.artists
    artists = []
    @@artists.each do |artist|
      artists << artist if !artists.include?(artist)
    end
    return artists
  end

  def self.genres
    genres = []
    @@genres.each do |genre|
      genres << genre if !genres.include?(genre)
    end
    return genres
  end

  def self.genre_count
    count = {}
    @@genres.each do |genre|
      if !count.keys.include?(genre)
        count[genre] = 1
      else
        count[genre] += 1
      end
    end
    return count
  end

  def self.artist_count
    count = {}
    @@artists.each do |artist|
      if !count.keys.include?(artist)
        count[artist] = 1
      else
        count[artist] += 1
      end
    end
    return count
  end

end
