class Song
  attr_reader :name,:artist,:genre
  @@count = 0
  @@artists=[]
  @@genres = []
  @@unique_artists=[]
  @@unique_genres=[]
  def initialize(name,artist,genre)
    @name=name
    @artist=artist
    @genre=genre
    @@artists << artist
    @@unique_artists << artist if !(@@unique_artists.include?(artist))
    @@genres << genre
    @@unique_genres << genre if !(@@unique_genres.include?(genre))
    @@count+=1
  end

  def self.count
    @@count
  end

  def self.artists
    @@unique_artists
  end

  def self.genres
    @@unique_genres
  end

  def self.genre_count
    hash = {}
    @@genres.each do |genre|
      hash[genre]==nil ? hash[genre]=1 : hash[genre]+=1
    end
    hash
  end

  def self.artist_count
    hash = {}
    @@artists.each do |artist|
      hash[artist]==nil ? hash[artist]=1 : hash[artist]+=1
    end
    hash
  end
end