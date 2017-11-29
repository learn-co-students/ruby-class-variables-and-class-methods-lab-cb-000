class Song
  attr_accessor :name, :artist, :genre

  # an individual song is initialized with a name, artist and genre
  def initialize (name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
  end
end
