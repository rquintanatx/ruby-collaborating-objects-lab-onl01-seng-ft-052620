require 'pry'
class MP3Importer
  attr_accessor :path 
  
  def initialize(music_path)
    @path = music_path
  end
  
  def files
    Dir.entries(@path).select {|f| !File.directory? f}
  end 
  
  def import 
    binding.pry
    files.each {}
  end
end 