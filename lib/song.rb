class Song
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
    
  
  def initialize(name, artist, genre)
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
  
  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    gcount = {}
    @@genres.each { | genre | 
      if gcount[genre]
        gcount[genre] += 1
      else
        gcount[genre] = 1 
      end
    }
    gcount
  end
  
  def self.artist_count
    acount = {}
    @@artists.each { | artist |
      if acount[artist]
        acount[artist] += 1
      else
        acount[artist] = 1
      end
    }
    acount
  end
  
end
