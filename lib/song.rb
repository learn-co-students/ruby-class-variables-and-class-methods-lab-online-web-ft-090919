class Song

attr_accessor :name, :artist, :genre

@@count = 0
@@genres = []
@@artists = []

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
  output_hash = {}

  @@genres.each do |genre|
    if output_hash.keys.include?(genre)
      output_hash[genre] += 1
    else
      output_hash[genre] = 1
    end
  end

  output_hash
end

def self.artist_count
  output_hash = {}

  @@artists.each do |genre|
    if output_hash.keys.include?(genre)
      output_hash[genre] += 1
    else
      output_hash[genre] = 1
    end
  end

  output_hash
end


def initialize (name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre

  @@count += 1
  @@genres << genre
  @@artists << artist
end



end
