class Song

  attr_accessor :name, :artist, :genre

  @@count = 0

  @@artists = []
  @@genres = []

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
    @@artists.uniq!
  end

  def self.genres
    @@genres.uniq!
  end

  def self.genre_count
    ans = {}
    @@genres.each do |i|
      if !ans.has_key? i
        ans[i] = 1
      else
        ans[i] += 1
      end
    end
    ans
  end

  def self.artist_count
    ans = {}
    @@artists.each do |i|
      if !ans.has_key? i
        ans[i] = 1
      else
        ans[i] += 1
      end
      # !ans.has_key? i ? ans[i] = 1 : ans[i] += 1

      # else
      #
      # end


    end
    ans
  end
end
