require 'pry'
require_relative './book'
require_relative './author'

author1 = Author.new("Barry")
author2 = Author.new("Ada")
author3 = Author.new("Frank")

book1a = Book.new("silly book", author1)
book1b = Book.new("silly book", author1)
book1c = Book.new("silly book", author1)

book2 = Book.new("funny book", author2)
book3 = Book.new("sad book", author3)

binding.pry
"WWWWWWW"

