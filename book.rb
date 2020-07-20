class Book
    attr_accessor :book_name
    attr_reader :words, :author_name
    @@all = []

    def initialize(book_name, words= 200)
        @book_name = book_name
        @words = words  

        @@all << self
    end

    def self.all
        @@all 
    end 

    def create_book(author_name)
    end

    # - `Book#author`
        def author
            self.name
        end
    # should return the author instance who wrote this book
    # - `Book#title
        def title
            self.book_name 
        end
    
    # should return the title of the book
    # - `Book#word_count`

    def word_count
        self.words
    end
    # should return the number of words in the book
    




end
