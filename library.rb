# encoding: utf-8

# Classes

class Library
  # should have a method to count number of shelves.
  # should have a method to report all books it contains.

  def initialize
    @library = []
  end
 
  def add_shelf shelf_name
    @shelf = Shelf.new shelf_name
    @library[shelf_name] << title
  end
  
  def total_shelf
    p shelf.length
  end
end

class Shelf
  # each shelf should know what books it contains
  # attr_reader :shelf, :books
  attr_accessor :shelf_name, :shelf
  
  def initialize options
    @shelf_name = options[:shelf_name]
    @shelf = { shelf_name => [] }
  end
  
  def add_book(title, shelf_name)
    shelf.each { |t, s| @shelf << (title, shelf_name) }
  end
end

class Book
  # should have enshelf and unshelf methods to control what shelf the book is sitting on
  attr_reader :title, :shelf_name
  
  def initialize options
    @title = options[:title]
    @shelf_name = options[:shelf_name]
  end
end

# Program

# book = Book.new "Startup Engineering", "A"
book = Book.new({ title: "Startup Engineering", shelf_name: "A" })
p book.inspect