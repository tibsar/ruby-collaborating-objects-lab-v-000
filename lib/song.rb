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

    artist = Artist.new(artist_name)  #instance of artist class
    song = Song.new(song_name)        #instance of song class

    song.artist = artist             #associating the artist with the song instance
    artist.add_song(song)
    song
  end
end
