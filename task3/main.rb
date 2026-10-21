class Library
  def initialize
    @items = []
  end

  def add_item(item)
    @items << item
  end

  def remove_item(item)
    @items.delete(item)
  end

  def display_all_items
    @items.each do |item|
      item.display_info  # Polymorphism
    end
  end
end


class LibraryItem
  attr_reader :title, :author, :publication_year

  def initialize(title, author, publication_year)
    @title = title
    @author = author
    @publication_year = publication_year
  end

  def display_info
    puts "Title: #{@title}"
    puts "Author: #{@author}"
    puts "Publication year: #{@publication_year}"
  end
end


class Book < LibraryItem
  attr_reader :genre, :page_count # Encapsulation, attr_reader provides controlled access to instance variables.

  def initialize(title, author, publication_year, genre, page_count)
    super(title, author, publication_year)
    @genre = genre
    @page_count = page_count
  end

  def display_info
    puts "\n--- Book ---"
    puts "Title: #{@title}"
    puts "Author: #{@author}"
    puts "Publication year: #{@publication_year}"
    puts "Genre: #{@genre}"
    puts "Page count: #{@page_count}"
  end
end


class DVD < LibraryItem
  attr_reader :director, :duration_minutes

  def initialize(title, author, publication_year, director, duration_minutes)
    super(title, author, publication_year)
    @director = director
    @duration_minutes = duration_minutes
  end

  def display_info
    puts "\n--- DVD ---"
    puts "Title: #{@title}"
    puts "Author: #{@author}"
    puts "Publication year: #{@publication_year}"
    puts "Director: #{@director}"
    puts "Duration: #{@duration_minutes} minutes"
  end
end


class CD < LibraryItem
  attr_reader :artist, :number_of_tracks 

  def initialize(title, author, publication_year, artist, number_of_tracks)
    super(title, author, publication_year)
    @artist = artist
    @number_of_tracks = number_of_tracks
  end

  def display_info
    puts "\n--- CD ---"
    puts "Title: #{@title}"
    puts "Author: #{@author}"
    puts "Publication year: #{@publication_year}"
    puts "Artist: #{@artist}"
    puts "Number of tracks: #{@number_of_tracks}"
  end
end


# Create library items
book = Book.new("Concepts of Programming Languages", "Robert Sebesta", 2015, "Programming", 500)
dvd = DVD.new("Inception", "Christopher Nolan", 2010, "Christopher Nolan", 148)
cd = CD.new("A Day at the Races", "Queen", 1976, "Queen", 10)

# Create a library and add items
library = Library.new

library.add_item(book)
library.add_item(dvd)
library.add_item(cd)

# Display all items
puts "========== LIBRARY CATALOG =========="
library.display_all_items

# Remove a book and display the remaining items
library.remove_item(book)

puts "\n========== AFTER REMOVAL OF BOOK =========="
library.display_all_items
