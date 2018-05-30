class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @genre = genre
    @@artists.push(artist)
    @@genres.push(genre)

  end

  def self.count
    @@count
  end

  def self.genres
    array = []
    @@genres.each do |genre|
      if array.include?(genre) == false
        array.push(genre)
      end
    end
  array
  end

  def self.artists
    array = []
    @@artists.each do |artist|
      if array.include?(artist) == false
        array.push(artist)
      end
    end
    array
  end

  def self.genre_count
    hash = {}
    genres = self.genres
    genres.each do |genre|

      @@genres.each do |element|
        if genre == element
            if hash.keys.include?(genre) == false
              hash[genre] = 0
            end
          hash[genre]+=1
        end
      end
    end
    hash
  end

  def self.artist_count
    hash = {}
    artists = self.artists
    artists.each do |artist|

      @@artists.each do |element|
        if artist == element
            if hash.keys.include?(artist) == false
              hash[artist] = 0
            end
          hash[artist]+=1
        end
      end
    end
    hash


  end

end


Song.new("Lucifer", "Jay-Z", "rap" )
Song.new("99 Problems", "Jay-Z", "rap")
Song.new("hit me baby one more time", "Brittany Spears", "pop")
Song.genre_count
# hash["pop"]=0
