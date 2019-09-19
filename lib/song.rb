class Song 
  attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres =[]
    @@artists = []
  
  def initialize (name, artist, genre)
    @name = name 
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
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
    # Example
    # @@genres = ["rock", "rap"]
    # genre_count = { "rock" => 0, "rap" => 0 }
    genre_count = @@genres.each_with_object(0).to_h

    @@genres.each  {|genre|
      genre_count[genre] += 1 
    }
    genre_count
  end
  
  def self.artist_count
    artist_count = @@artists.each_with_object(0).to_h
    @@artists.each {|artist| 
    artist_count[artist] += 1
      }

    artist_count
    
  end
  
end
