class Song

@@count = 0
@@artists = []
@@genres = []

attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
    @@count += 1
  end

  def artist
    @artist
  end

  def genre
    @genre
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
    result = {}
    @@genres.each do |genre|
      if result[genre] == nil
    result[genre] = 1
  else result[genre] +=1
      end
    end
      result
  end

  def self.artist_count
    answer = {}
    @@artists.each do |artist|
      if answer[artist] == nil
      answer[artist] = 1
    else answer[artist] += 1
    end
  end
  answer
  end

end
