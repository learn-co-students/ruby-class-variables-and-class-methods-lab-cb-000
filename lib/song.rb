class Song
	attr_accessor :name, :artist, :genre
	@@count = 0
	@@genres = []
	@@artists = []


	def initialize(name, artist, genre) 
		@name = name
		@artist = artist
		@genre = genre

		@@count += 1
		@@genres << genre
		@@artists << artist

	end

	def self.count
      @@count
	end

	def self.genres

		@@genres.uniq

	end

	def self.artists

       @@artists.uniq

	end

	def self.genre_count
     my_hash = {}
		@@genres.each do |n|
          

		if my_hash.has_key?(n)
         
			my_hash[n] = my_hash[n] + 1


		else
			my_hash[n] = 1
		 
		 end	

		end
		 my_hash

	end

	def self.artist_count
     my_hash = {}
		@@artists.each do |n|
          

		if my_hash.has_key?(n)
         
			my_hash[n] = my_hash[n] + 1


		else
			my_hash[n] = 1
		 
		 end	

		end
		 my_hash

	end



end



