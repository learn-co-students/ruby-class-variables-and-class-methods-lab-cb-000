class Song
  attr_accessor :count
  attr_reader :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
    @@count = @@count + 1
  end

  @@genres = []
  @@artists = []
  @@count = 0

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
    genre_count = {}
    @@genres.each do |x|
      if genre_count[x]
        # if genre_count[rap] == true, then add 1, else stay at 1.
        genre_count[x] = genre_count[x] + 1
      else
        genre_count[x] = 1
      end
    end
      genre_count
  end
  # returns hash: {"pop" => 1, "rap" => 2}

  def self.artist_count
    artist_count = {}
    @@artists.each do |x|
      if artist_count[x]
        artist_count[x] += 1
      else
        artist_count[x] = 1
      end
    end
    artist_count
  end
  # returns hash: {"Brittany Spears" => 1, "Jay-Z" => 2}

end
