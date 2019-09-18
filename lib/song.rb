require "pry"

class Song
  attr_reader :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << @genre
    @@artists << @artist
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
    @@genres.each do |genre|
      if @@genre_count.include?(genre)
        @@genre_count[genre] += 1
      else
        @@genre_count[genre] = 1
        #binding.pry
      end
    end
    @@genre_count
  end
  
  def self.artist_count
    @@artists.each do |artist|
      if @@artist_count.include?(artist)
        @@artist_count[artist] += 1
      else
        @@artist_count[artist] = 1
      end
    end
    @@artist_count
  end
end

# Song.new("Blood_on_the_leaves", "Kanye West", "rap")
# Song.new("Flamingo", "Kero Kero Bonito", "pop")
# Song.new("Chop Suey", "System of a Down", "rock")
# Song.new("Eventually", "Tame Impala", "rock")
# Song.new("Money in the Grave", "Drake", "rap")
# binding.pry
# Song.new("FUN!", "Vince Staples", "rap")