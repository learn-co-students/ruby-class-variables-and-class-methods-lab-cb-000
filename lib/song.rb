class Song
  attr_accessor :name, :genre, :artist

  @@count = 0
  @@genres =[]
  @@artists =[]

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre= genre
    @@count += 1
    @@genres << genre
    @@artists <<artist
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
    gen_count ={}
    @@genres.each do |song|
      if gen_count[song] == nil
        gen_count[song] = 1
      else
        gen_count[song]+=1
      end
    end
    gen_count
  end

  def self.artist_count
    art_count ={}
    @@artists.each do |song|
      if art_count[song] == nil
        art_count[song] = 1
      else
        art_count[song]+=1
      end
    end
    art_count 
  end








end
