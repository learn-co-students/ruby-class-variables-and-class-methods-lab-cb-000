
class Song
  @@count = 0
  @@artists = []
  @@genres = []
  @@unique_artists = {}
  @@artist_count = {}
  def initialize(name, artist, genre)
    @@count += 1
    @artist = artist
    @@artists << artist
    # if @@unique_artists[@artist] == nil
    #   @@unique_artists[@artist] = "check"
    #   @@artist_count[@artist] = 1
    # else
    #   original_value = @@artist_count[@artist]
    #   new_value = original_value + 1
    #   @@artist_count[@artist] = new_value
    # end
    @name = name
    @genre = genre
    duplicate_case = false
    # if @@genres_hash == {}
    #   @@genres_hash[@genre] = 1
    #   @@genres << @genre
    # else @@genres_hash.each do |genre, number|
    #   if @@genres_hash[@genre] != nil
    #     @@genres_hash[@genre] += 1
    #     duplicate_case = true
    #     @@genres << @genre
    #   end
    # end
    # if duplicate_case == false && @@genres_hash != {}
    #   @@genres_hash[@genre] = 1
    #   @@genres << @genre
    # end
    # end
    @@genres << genre
  end
  def artist
    @artist
  end
  def self.artists
    unique_artists_array = []
    self.artist_count.each do |key, value|
      unique_artists_array << key
    end
    unique_artists_array
  end
  def genre
    @genre
  end
  def self.genres
    # stupid_new_genres_array = []
    # @@genres_hash.each do |genre, number|
    #   stupid_new_genres_array << genre
    # end
    # stupid_new_genres_array
    solution_array = []
    @@genres.each do |genre|
      unique_case = true
      solution_array.each do |established_genre|
        if established_genre == genre
          unique_case = false
        end
      end
      if unique_case == true
        solution_array << genre
      end
    end
    solution_array
  end
  def self.crappy_genres
    @@genres
  end
  def name
    @name
  end
  def self.genre_count
    genres_hash = {}
    @@genres.each do |genre|
      unique_case = true
      genres_hash.each do |established_genre, value|
        if established_genre == genre
          unique_case = false
        end
      end
      if unique_case == true
        genres_hash[genre] = 1
      else
        genres_hash[genre] += 1
      end
    end
    genres_hash
  end
  def self.count
    @@count
  end
  def self.artist_count
    @@artists.each do |artist|
      this_one_is_unique = true
      @@artist_count.each do |hash_key, hash_value|
        if artist == hash_key
          this_one_is_unique = false
        end
      end
      if this_one_is_unique == true
        @@artist_count[artist] = 1
      else
        @@artist_count[artist] += 1
      end
    end
    @@artist_count
  end
end

lucifer = Song.new("Lucifer", "Jay-Z", "rap")

ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
hit_me = Song.new("hit me baby one more time", "Brittany Spears", "pop")
toxicity = Song.new("Toxicity", "System of a Down", "heavy metal")
puts Song.genres
puts Song.genre_count
