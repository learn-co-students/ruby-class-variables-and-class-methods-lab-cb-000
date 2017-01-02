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

#  def genres
#    u_genres = []
#    @@genres.each do |g|
#      if u_genres.include?(g) == false
#        u_genres << g
#      end
#    return u_genres
#  end

  def self.artists
    u_artists = []
    @@artists.each do |a|
      if u_artists.include?(artist) == false
        u_artists << artist
      end
    return u_artists
  end

#  def genre_count
#      song_genres={}
#    @@genres.each do |g|
#      if song_genres.include?(g) == false
#        song_genres[g]=0
#      end
#      song_genres[g] += 1
#    end
#    return song_genres
#  end



end
