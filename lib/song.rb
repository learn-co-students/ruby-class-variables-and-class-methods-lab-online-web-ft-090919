class Song 
  attr_accessor :name, :artist, :genre 
  
  @@count = 0 
  @@genres = []
  @@artists = []
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist
    @genre = genre 
    
    @@artists << self.artist
    @@genres << self.genre 
    @@count += 1 
  end
  
  def self.count
    @@count
  end
  
  def self.genres 
    genres_array =  @@genres.uniq
  end
  
  def self.artists
  artists_array = @@artists.uniq
  end
  
  def self.genre_count
    genres_hash = {}
    @@genres.each do |ele|
      unless genres_hash.keys.include?(ele)
        genres_hash[ele] = 1
      else
        genres_hash[ele] += 1
        
      end
    end
    genres_hash
  end
  
  def self.artist_count
    artist_hash = {}
    @@artists.each do |ele|
      unless artist_hash.keys.include?(ele)
        artist_hash[ele] = 1
      else
        artist_hash[ele] += 1
      end
    end
    artist_hash
  end
end 