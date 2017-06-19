class Song

  @@count = 0
  @@artists = []
  @@genres = []

  attr_accessor :name, :artist, :genre

  def initialize( name, artist, genre )
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.artists
    #print @@artists
    @@artists.uniq!
  end

  def self.genres
    @@genres.uniq!
  end

  def self.genre_count
    genreHash = {}

    @@genres.each do |genre|
#      if genreHash[genre] == 0
      if genreHash.has_key?( genre )
        genreHash[genre] += 1
      else
        genreHash[genre] = 1
      end

    end

    genreHash
  end

  def self.artist_count
    artistsHash = {}

    @@artists.each do |artist|
      if artistsHash.has_key? artist
        artistsHash[artist] += 1
      else
        artistsHash[artist] = 1
      end
    end
    artistsHash
  end


end  # class Song
