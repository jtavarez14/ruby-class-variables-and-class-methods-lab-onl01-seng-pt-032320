require "pry"
class Song 
  attr_accessor :name, :artist, :genre
  @@count = 0 
  @@genres = []
  @@artists = []
  def initialize(name, artist, genre)
    @@count += 1
    @name = name 
    @artist = artist
    @genre = genre
    @@artists << @artist
    @@genres << @genre
  end 
  
  def self.count 
    @@count 
  end 
  
  def self.artists 
    @@artists.uniq
  end 
  
  def self.genres 
    @@genres.uniq
  end 
  
  def self.genre_count 
    unique_genre = @@genres.uniq
    genre_count = unique_genre.count
    genre_numbers = Hash[@@genres.collect {|one_genre| [one_genre, one_genre.count]}]
    binding.pry
  end 
    end
    
  