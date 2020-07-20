

class Author
    attr_reader :author_name
    attr_writer :book_name
    @@all = []

    def initialize(author_name)
        @author_name = author_name
        @@all << self
    end

    def self.all
        @@all
    end

    def book_authors  ### Helper Method
        Bookstore.all.select {|bookstore|bookstore.author == self}
    end


   def books
        self.book_authors.map {|bookstore|bookstore.book}.uniq
   end

    def write_book(book_name, word_count)
        new_book = Book.new(book_name, word_count)
        new_bookstore = Bookstore.new(self, new_book)
        new_bookstore.book
     end

    # def total_words
    #     self.book_authors.reduce(0) do |all_words, book|
    #       all_words + book.words
    #       end
    #     end
    # end

     
#      def self.most_words
#         self.all.max_by do |author| 
#           author.total_words
#         end 
#       end
# end


