class Song

  attr_accessor :name, :artist, :genre
  
  @@count = 0 
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artist_count = {}

  def initialize(name, artist, genre)

    @@artists << artist 
    @@genres << genre 

    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    
  end
  

  def self.count
    @@count
  end

  def self.genres

    no_duplicate_array = [] 
    @@genres.each do |genre|
      no_duplicate_array << genre if !no_duplicate_array.include?(genre)
    end

    no_duplicate_array

  end

  def self.artists
    no_duplicate_array = [] 
    @@artists.each do |artist|
      no_duplicate_array << artist if !no_duplicate_array.include?(artist)
    end

    no_duplicate_array
  end

  def self.genre_count
    @@genres.each do |genre|
      if @@genre_count[genre] 
        @@genre_count[genre] += 1
      else
        @@genre_count[genre] = 1
      end
    end
      @@genre_count
  end

  def self.artist_count
    @@artists.each do |artist|
      if @@artist_count[artist]
        @@artist_count[artist] += 1
      else
        @@artist_count[artist] = 1
      end
    end
    @@artist_count
  end
  
end

