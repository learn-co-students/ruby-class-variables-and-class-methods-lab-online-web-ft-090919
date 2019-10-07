class Song 
  attr_accessor :name, :artist, :genre
  
    @@count = 0 
    @@genres = []
    @@artists = []
    
    def initialize( name, artist, genre)
      @@count += 1 #increment count
      @name = name
      @artist = artist
      @genre = genre
      @@genres << @genre
      @@artists << @artist
      @@genres_count = {}
      @@artists_count = {}
    end
    
    def self.count
      @@count
    end
    
    def self.genre_count
      @@genres.each { |genre|
      if @@genres_count[genre]
        @@genres_count[genre] += 1
      else
        @@genres_count[genre] = 1 
      end
      }
    @@genres_count
    end
    
    def self.genres
      @@genres.uniq
    end
    
    def self.artists
      @@artists.uniq
    end
  
    def self.artist_count
      @@artists.each { |artist|
      if @@artists_count[artist]
        @@artists_count[artist] += 1 
      else
        @@artists_count[artist] = 1 
      end
      }
      @@artists_count
    end
end