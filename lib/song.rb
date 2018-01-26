require 'pry'

class Song
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    filename = filename.gsub(".mp3", "")
    parts = filename.split(" - ")
    artist = parts[0]
    song = parts[1]
    genre = parts[2]

    song = Song.new(song)
  end
end
