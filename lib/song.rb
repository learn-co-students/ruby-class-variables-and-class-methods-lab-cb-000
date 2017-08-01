class Song
  @@artists = []
  @@genres = []
  @@count = 0



  def initialize(name,artist, genre)
    @song_title = name
    @artist = artist
    @genre = genre
    @@artists << artist
    @@genres << genre
    @@count += 1
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
  # my original answer
  #  answer = {}
    # @@genres.each { |genre|
      # answer[genre] ||= 0
      # puts "genres=#{genres} genre=#{genre} answer=#{answer}"
      # if answer[genre] >0 [
        # answer[genre] = answer[genre]+1
      # ]
    # else answer[genre] =1
    # end
    # }
    # answer

    # answer from https://jerodsanto.net/2013/10/ruby-quick-tip-easily-count-occurrences-of-array-elements/
    @@genres.each_with_object(Hash.new(0)) { |genre,counts| counts[genre] += 1 }
  end

  def self.artist_count
    # same internet source as above
    @@artists.each_with_object(Hash.new(0)) { |artist,counts| counts[artist] += 1}
  end



  def self.count
    @@count
  end

  def name
    @song_title
  end

  def artist
    @artist
  end

  def genre
    @genre
  end
end
