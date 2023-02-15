# This code creates a class called Song that has macros to create accessors for name, artist, and genre.
# It has class methods: count, artists, genres, genre_count, and artist_count.
# The initialize method takes in three arguments (name, artist, and genre) and adds one to the count variable each time a new song is created.
# It also adds the artist and genre of the song to their respective arrays.
# The count method returns the total number of songs created.
# The artists method returns an array of all unique artists.
# The genres method returns an array of all unique genres.
# The genre_count method returns a hash with each genre as a key and the number of times it appears as its value.
# Finally, the artist_count method returns a hash with each artist as a key and the number of times they appear as its value.
class Song
  #macros
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  #def count class method
  def self.count
    @@count
  end

  #def artists class method
  def self.artists
    @@artists.uniq
  end

  #def genres class method
  def self.genres
    @@genres.uniq
  end
  #def genre_count class method
  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end
  #def artist_count class method
  def self.artist_count
    artist_count = {}
    @@artists.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1
      else
        artist_count[artist] = 1
      end
    end
    artist_count
  end
end
