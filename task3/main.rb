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

item = LibraryItem.new("Clean Code", "Robert C. Martin", 2008)
item.display_info
