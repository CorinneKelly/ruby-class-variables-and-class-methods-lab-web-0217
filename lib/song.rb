class Song

	# attr_accessor :name
	# attr_accessor :artist
	# attr_accessor :genre

	@@count = 0
	@@artists = []
	@@genres = []

	def initialize(name, artist, genre)
		@name = name
		@artist = artist
		@genre = genre

		@@artists << @artist
		@@genres << @genre
		# @@genre = self.uniq
		@@count += 1

	end

	def name
		@name
	end

	def artist
		@artist
	end

	def genre
		@genre
	end

	def self.count
		@@count
	end

	def self.artists
		@@artists.uniq
	end

	def self.genres
		@@genres.uniq
	end

	def self.genre_count
		genre_hash = {}
		@@genres.each do |genre_category|
			if genre_hash[genre_category]
				genre_hash[genre_category] += 1
			else
				genre_hash[genre_category] = 1
			end
		end
		genre_hash
	end

	def self.artist_count
		artists_hash = {}
		@@artists.each do |artist_name|
			if artists_hash[artist_name]
				artists_hash[artist_name] += 1
			else
				artists_hash[artist_name] = 1
			end
		end
		artists_hash
	end
end