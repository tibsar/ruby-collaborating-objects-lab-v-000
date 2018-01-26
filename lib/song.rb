class Song
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    filename = filename.gsub(".mp3", "")
    filename.split(" - ")
    binding.pry
  end
end
