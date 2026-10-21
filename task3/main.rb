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
  
