class Song
  attr_accessor :name, :artist, :genre

  # keep track of the number of new songs that are created
  @@count = 0

  # an individual song is initialized with a name, artist and genre
  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    # increment count of songs when a new song is added
    @@count += 1
  end

  # Write a class method, .count, that returns the total number of songs created
  def self.count
    @@count
  end
end
