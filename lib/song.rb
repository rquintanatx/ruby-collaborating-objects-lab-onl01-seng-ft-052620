require "pry"

class Song 
  attr_accessor :name, :artist
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end 
  
  def self.all
    @@all
  end
  
  def self.new_by_filename(file_name)
    file_array = file_name.split(" - ")
    song = Song.new(file_array[1])
    m_jackson = Artist.new(file_array[0])
    song.artist = m_jackson
    song 
  end 
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end 
end 