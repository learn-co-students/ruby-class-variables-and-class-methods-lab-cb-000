class Song
  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre

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

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    results = {}
    @@genres.each do |genre|
      if results.key?(genre)
        results[genre] += 1
      else
        results[genre] = 1
      end
    end
    results
  end

  def self.artist_count
    results = {}
    @@artists.each do |artist|
      if results.key?(artist)
        results[artist] += 1
      else
        results[artist] = 1
      end
    end
    results
  end
end

give_up = Song.new("quitting", "Big Mo", "sad")
p give_up.name
p give_up.artist
p give_up.genre
