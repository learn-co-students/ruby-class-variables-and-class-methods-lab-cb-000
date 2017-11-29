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
end


=begin
Check an array for duplicates
https://stackoverflow.com/questions/4351390/how-do-i-check-an-array-for-duplicates

=end
