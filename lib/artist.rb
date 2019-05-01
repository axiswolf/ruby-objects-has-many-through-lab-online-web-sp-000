class Artist
  # needa a class variable @@all that begins as empty array
  @@all = []
  attr_accessor :name
  # needa class method .all that lists each artist in the class variable
  # An artist is initialized with a name and is saved in the @@all array
  def initialize(name)
    @name = name
    @songs = []
    @@all << name
  end
  def self.all
    @@all
#  end
#  def new_song(song, genre)
    # needs an instance method, #new_song that takes in an argument of a name and genre creates a new song.
    # That song should know that it belongs to the artist.
#    genre.artist = self
#    song.artist = self
#  end
  def new_song(song, genre)
    Song.new(self, song, genre)
  end
  def songs
    Song.all.select do |song|
    song.artist == self
  end
  #def songs
    # has many songs
  #end
  def genres
    #has many genres, through songs
  end
end
