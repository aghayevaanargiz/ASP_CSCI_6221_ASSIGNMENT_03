class Library 
  def initialize
    @items = []
  end

  def add_item(item)
    @items << item
  end

  def display_all_items
    @items.each do |item|
      item.display_info
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
  
cd = CD.new("A Day at the Races", "Queen", 1976, "Rock")
cd.display_info
