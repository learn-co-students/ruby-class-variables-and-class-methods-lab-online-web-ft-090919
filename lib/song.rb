class Song
  
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(song_name, artist, genre)
    @@count += 1
    @@genres << genre
		@@artists << artist
		
		@name = song_name
		@artist = artist
		@genre = genre
  end
  
  def self.count()
    @@count
  end

	def self.genres()
		@@genres.uniq
	end

  def self.artists()
    @@artists.uniq
  end
  
  def self.genre_count()
    histogram = {}
		count = 0
		@@genres.each do |index|
			if(histogram.has_key?(index)) 
				#if key exists, add 1 to the count value
				histogram[index] += 1
			else
				#create new key and value
				histogram[index] = 1
			end
		end
		histogram
	end
  
	def self.artist_count
		artist_histogram = {}
		count = 0
		@@artists.each do |index|
			if(artist_histogram.has_key?(index)) 
				#if key exists, add 1 to the count value
				artist_histogram[index] += 1
			else
				#create new key and value
				artist_histogram[index] = 1
			end
		end
		artist_histogram
	end
end
