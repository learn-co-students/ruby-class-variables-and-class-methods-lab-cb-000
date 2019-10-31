class Song
  attr_accessor :name, :artist, :genre

  # keep track of the number of new songs that are created
  @@count = 0
  # keep track of the genres of songs
  @@genres = []
  # keep track of the artists of songs
  @@artists = []

  # an individual song is initialized with a name, artist and genre
  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    # increment count of songs when a new song is added
    @@count += 1
    # add the genre of the song when a new song is added
    @@genres << genre
    # add the artist of the song when a new song is added
    @@artists << artist
  end

  # Write a class method, .count, that returns the total number of songs created
  def self.count
    @@count
  end

  # Write a class method, .genres that returns an array of all of the genres of existing songs.
  # This array should contain only unique genres, no duplicates
  def self.genres
    @@genres.uniq
  end

  # Write a class method, .artists, that returns an array of all of the artists of the existing songs.
  # This array should only contain unique artists, no duplicates
  def self.artists
    @@artists.uniq
  end

  # Write a class method, .genre_count
  # that returns a hash in which the keys are the names of each genre, and the value is the number of songs that have that genre.
  def self.genre_count
    genre_count = {}

    # 1. iterate over the @@genres array and add key/value pairs to genre_count hash
    @@genres.each do |genre|
      # 2. check to see if the hash already contains a key of a particular genre
      if genre_count[genre]
        # 3. If true, increment the value (count) of that genre by one
        genre_count[genre] += 1
      else
        # 4. If false, create a new genre (key) with a count (value) of 1
        genre_count[genre] = 1
      end
    end
    return genre_count
  end

  # Write a class method, .artist_count
  # that returns a hash in which the keys are the names of each artist, and the value is the number of songs that have that artist.
  def self.artist_count
    artist_count = {}

    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
      end
    end
    return artist_count
  end
end


=begin
Check an array for duplicates
https://stackoverflow.com/questions/4351390/how-do-i-check-an-array-for-duplicates

=end
