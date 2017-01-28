class Song

	attr_accessor :name, :artist, :genre

	@@count = 0
	@@artists = []
	@@genres = []

	def initialize (name, artist, genre)
		@name = name
		@artist = artist
		@genre = genre
		@@count += 1 #counts the number of songs created
		@@genres.push(@genre)
		@@artists.push(@artist)
	end

	def self.count # returns number of songs created
	  return @@count
	end

	def self.name
		@name
	end

	def self.artists
		@@artists.uniq #eliminates duplicates in array
	end

	def self.genres
		@@genres.uniq #eliminates duplicates in array
	end

	def self.genre_count
		@@genres.inject(Hash.new(0)) { |h,e| h[e] += 1; h }
	end

	def self.artist_count
		@@artists.inject(Hash.new(0)) { |h,e| h[e] += 1; h }
	end
end
