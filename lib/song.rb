require 'pry'

class Song
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_counts = Hash.new(0)
  @@artist_counts = Hash.new(0)
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
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
   @@genres.each {|i| @@genre_counts[i] += 1}
   @@genre_counts
  end
   
  def self.artist_count
    @@artists.each {|i| @@artist_counts[i] += 1}
    @@artist_counts
  end
  
end