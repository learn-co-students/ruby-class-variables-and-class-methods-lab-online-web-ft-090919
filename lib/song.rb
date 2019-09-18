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
    @@artists << @artist
    @@genres << @genre
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
  genre_count = {  }
  @@genres.each do |style|
    if genre_count[style]
      genre_count[style] += 1
    else
      genre_count[style] = 1
    end
  end
  return genre_count
end

def self.artist_count
  artist_count = {}
  @@artists.each do |name|
    if artist_count[name]
      artist_count[name] += 1
    else
      artist_count[name] = 1
    end
  end
  return artist_count
end

  # genre = "rap"
  # genre_count[rap] = 1
  # @@genres.each do |style|
  #   genre_count[style]
  #
  # {"rap" => 1}
end
