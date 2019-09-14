class Song
  attr_reader :name, :artist, :genre
  @@count = 0
  @@artists = []
  @@genres = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << artist #unless @@artists.include?(artist)
    @@genres << genre #unless @@genres.include?(genre)
  end
  
  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.artist_count
    @@artists.reduce({}) do |memo, artist|
      memo.has_key?(artist) ? memo[artist] += 1 : memo[artist] = 1
      memo
    end
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genres.reduce({}) do |memo, genre|
      memo.has_key?(genre) ? memo[genre] += 1 : memo[genre] = 1
      memo
    end
  end
end
