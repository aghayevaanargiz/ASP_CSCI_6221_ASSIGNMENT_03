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
      item.display_info  #I used polymophism just here
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
  def initialize(title, author, publication_year, genre)
    super(title, author, publication_year)
    @genre = genre
  end
  
  
  def display_info
    puts "Title: #{@title}, Author: #{@author}, Publication year: #{@publication_year}, Genre: #{@genre}"
  end
end


class DVD < LibraryItem
  def initialize(title, author, publication_year, director)
    super(title, author, publication_year)
    @director = director
  end
  
  
  def display_info
    puts "Title: #{@title}, Author: #{@author}, Publication year: #{@publication_year}, Director: #{@director}"
  end
end

class CD < LibraryItem
  def initialize(title, author, publication_year, artist)
    super(title, author, publication_year)
    @artist = artist
  end
  
  
  def display_info
    puts "Title: #{@title}, Author: #{@author}, Publication year: #{@publication_year}, Artist: #{@artist}"
  end
end
  
book = Book.new("Concepts of Programming Languages", "Robert Sebesta", 2015, "Programming")
dvd = DVD.new("Inception", "Christopher Nolan", 2010, "Science Fiction")
cd = CD.new("A Day at the Races", "Queen", 1976, "Rock")

library = Library.new

library.add_item(book)
library.add_item(dvd)
library.add_item(cd)

library.display_all_items

library.remove_item(book)

puts "------------After removal of book---------------"

library.display_all_items



