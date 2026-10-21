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
      item.display_info  # I used polymorphism here
    end
  end
end


class LibraryItem 
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
  def initialize(title, author, publication_year, genre, page_count)
    super(title, author, publication_year)
    @genre = genre
    @page_count = page_count
  end
  
  def display_info
    puts "Title: #{@title}, Author: #{@author}, Publication year: #{@publication_year}, Genre: #{@genre}, Page count: #{@page_count}"
  end
end


class DVD < LibraryItem
  def initialize(title, author, publication_year, director, duration_minutes)
    super(title, author, publication_year)
    @director = director
    @duration_minutes = duration_minutes
  end
  
  def display_info
    puts "Title: #{@title}, Author: #{@author}, Publication year: #{@publication_year}, Director: #{@director}, Duration: #{@duration_minutes} minutes"
  end
end

class CD < LibraryItem
  def initialize(title, author, publication_year, artist, number_of_tracks)
    super(title, author, publication_year)
    @artist = artist
    @number_of_tracks = number_of_tracks
  end
  
  def display_info
    puts "Title: #{@title}, Author: #{@author}, Publication year: #{@publication_year}, Artist: #{@artist}, Number of tracks: #{@number_of_tracks}"
  end
end
  
book = Book.new("Concepts of Programming Languages", "Robert Sebesta", 2015, "Programming", 500)
dvd = DVD.new("Inception", "Christopher Nolan", 2010, "Christopher Nolan", 148)
cd = CD.new("A Day at the Races", "Queen", 1976, "Queen", 10)

library = Library.new

library.add_item(book)
library.add_item(dvd)
library.add_item(cd)

library.display_all_items

library.remove_item(book)

puts "------------After removal of book---------------"

library.display_all_items
