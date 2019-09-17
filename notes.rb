class Song 

attr_accessor :name, :artist, :genre

@@count = 0 
@@genres = []
@@artists = []
@@genre_count = {}

 def initialize (name, artist, genre)
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
  #  @@genre_count = {}
  
    @@genres.each do |key, value|
     if @@genre_count[key] == 0
       @@genre_count[key] = 1
    else 
      @@genre_count[key] = value + 1 
          
    
    
    if !(@@genre_count[@genre] == @genre)
          @@genre_count[@genre] = 1 
    else 
      @@genre_count(@genre) += 1 
    end 
    
    @@genre_count
  end 
  
end 