require 'pry'
class Artist

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  #The Artist class needs an instance method, #new_song, that takes in an argument of a name and genre creates a new song. That song should know that it belongs to the artist.

  def new_song(name, genre)
    Song.new(name, self, genre)

  end


  def songs
    Song.all.select do |song|
    song.artist == self
    end
  end


  def genres
    songs.map do |song|
      song.genre
    end
  end


end
