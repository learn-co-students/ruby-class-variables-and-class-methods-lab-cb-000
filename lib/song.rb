class Song

  attr_accessor :artist, :name, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @genre = genre
    @artist = artist
    @name = name

    @@count += 1
    @@genres << @genre
    @@artists << @artist
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

  def self.artist_count
    artist_count = {}
       @@artists.each do |artist|
          if artist_count.include?(artist)
            artist_count[artist] += 1
        else
          artist_count[artist] = 1
        end
      end
      artist_count
  end

  def self.genre_count
    genre_count = {}
        @@genres.each do |genre|
          if genre_count.include?(genre)
            genre_count[genre] += 1
          else
            genre_count[genre] = 1
          end
      end
        genre_count
    end
end
