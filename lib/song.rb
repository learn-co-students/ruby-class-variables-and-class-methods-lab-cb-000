
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
    gnr_cnt = {}
    self.genres.each do |i|
      gnr_cnt[i] = @@genres.count {|j| i == j}
    end
    gnr_cnt
  end

  def self.artist_count
    art_cnt = {}
      self.artists.each do |i|
        art_cnt[i] = @@artists.count {|j| i == j}
      end
      art_cnt
  end

end

everything = Song.new("Everything", "Bastian Erinyes", "Acoustic")
