require 'pry'

class Artist
  attr_accessor :name, :songs
  @@all_songs = []

  def initialize(name)
    self.name = name
    self.songs = []
  end

  def add_song (song)
    #binding.pry
    self.songs << song
    song.artist = self
    @@all_songs << song
  end

  def add_song_by_name(name)
    new_song = Song.new(name)
    add_song(new_song)
  end

  def self.song_count
    @@all_songs.length
  end
end
