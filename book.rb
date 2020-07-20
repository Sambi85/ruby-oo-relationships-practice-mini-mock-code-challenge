class Book
    
    attr_reader :book_name, :words
    @@all = []

    def initialize(book_name, words)
        @book_name = book_name
        @words = words  

        @@all << self
    end

    def self.all
        @@all 
    end 

        def book_authors                              
           Bookstore.all.select {|bookstore| bookstore.book == self}   ### Helper method
        end

        def authors
            self.book_authors.map {|book_author| book_author.author}.uniq
        end

        def title
            self.book_name
        end
    
        def word_count
            self.words
        end


end
