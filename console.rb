require 'pry'
require_relative './book'
require_relative './author'
require_relative './bookstore'

book1 = Book.new("silly book",200)
book2 = Book.new("funny book",100)
book3 = Book.new("sad book",100)

author1 = Author.new("Barry")
author2 = Author.new("Ada")
author3 = Author.new("Frank")



book_store1 = Bookstore.new(author1,book1)
book_store2 = Bookstore.new(author1,book2)
book_store3 = Bookstore.new(author1,book3)

book_store4 = Bookstore.new(author2,book2)
book_store5 = Bookstore.new(author3,book3)
#Book_store4 = Bookstore.new(author1,author2,book4) ### co-authors

binding.pry
"WWWWWWW"

