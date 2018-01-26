require 'pry'

class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    filename = filename.gsub(".mp3", "")
    parts = filename.split(" - ")
    artist_name = parts[0]
    song_name = parts[1]
    genre_name = parts[2]

    artist = Artist.new(artist_name)
    song = Song.new(song_name)
  end
end
