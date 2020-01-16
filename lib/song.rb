class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    return @@count
  end

  def self.genres
    u_genres = []
    @@genres.each do |g|
      if u_genres.include?(g) == false
        u_genres << g
      end
    end
    return u_genres
  end

  def self.artists
    u_artists = []
    @@artists.each do |a|
     if u_artists.include?(a) == false
        u_artists << a
      end
    end
    return u_artists
  end

  def self.genre_count
      song_genres={}
    @@genres.each do |g|
      if song_genres.include?(g) == false
        song_genres[g]=0
      end
      song_genres[g] += 1
    end
    return song_genres
  end

  def self.artist_count
      song_artists={}
    @@artists.each do |a|
      if song_artists.include?(a) == false
        song_artists[a]=0
      end
      song_artists[a] += 1
    end
    return song_artists
  end


end
