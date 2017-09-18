class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres =[]
  @@artists =[]
  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
  end
  def self.count
    @@count
  end
  def self.artists
    @@artists.uniq!
  end
  def self.genres
    @@genres.uniq!
  end
  def self.genres
    @@genres.uniq!
  end
  def self.genre_count
    @@genres.each_with_object(Hash.new(0)) { |word,counts| counts[word] += 1 }
  end
  def self.artist_count
      @@artists.each_with_object(Hash.new(0)) { |word,counts| counts[word] += 1 }
  end

end
