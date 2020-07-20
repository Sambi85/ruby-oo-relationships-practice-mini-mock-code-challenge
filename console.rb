require 'pry'
require_relative './book'
require_relative './author'

author1 = Author.new("Barry")
author2 = Author.new("Ada")
author3 = Author.new("Frank")

book1a = Book.new("silly book")
book1b = Book.new("silly book")
book1c = Book.new("silly book")

book2 = Book.new("funny book")
book3 = Book.new("sad book")
book4 = Book.new("co-authors")

book_store1a = Bookstore.new(author1,book1a)
book_store1b = Bookstore.new(author1,book1b)
book_store1c = Bookstore.new(author1,book1c)

book_store2 = Bookstore.new(author2,book2)
book_store3 = Bookstore.new(author3,book3)
#Book_store4 = Bookstore.new(author1,author2,book4) ### co-authors

binding.pry
"WWWWWWW"

