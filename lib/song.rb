class Song
  attr_accessor :name, :artist, :genre
  
  @@all = []
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  
  def initialize(name, artist, genre) 
    @artist = artist
    @genre = genre
    @name = name
    @@all.push(self)
    @@count += 1
    @@artists.push(self.artist)
    @@genres.push(self.genre)
  end
  
  def self.all
    @all
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
    
  end
end