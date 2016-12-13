class Song
  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :artist, :name, :genre

  def initialize(song,artist,genre)
    @@count += 1
    @@genres << genre #if !@@genres.include?(genre) #unique genres only
    @@artists << artist #if !@@artists.include?(artist) #unique artists only
    @genre = genre
    @artist = artist
    @name = song

  end

  def self.count
    @@count
  end

  #@ array of unique artist names
  def self.artists
    art = []
    @@artists.each do |name|
      art << name if !art.include?(name)
    end
    art
  end

  #@ array of unique genres
  def self.genres
    gen = []
    @@genres.each do |genre|
      gen << genre if !gen.include?(genre)
    end
    gen
  end

  #@ has of genres and number of songs of those genres
  #{"rap" => 5}
  def self.genre_count
    hash = {}

    self.genres.each do |gen|
      counter = 0
      @@genres.each do |genre|
        if gen == genre
          counter += 1
        end
      end
      hash[gen] = counter
    end
    hash
  end

  #hash of artists and number of songs they have
  def self.artist_count
    hash = {}
    self.artists.each do |art|
      counter = 0
      @@artists.each do |artists|
        if art == artists
          counter += 1
        end
      end
      hash[art] = counter
    end
    hash
  end

end
