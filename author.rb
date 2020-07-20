

class Author
    attr_accessor :author_name
    attr_reader :book_name, :words
    @@all = []

    def initialize(author_name)
        @author_name = author_name
        @@all << self
    end

    def self.all
        @@all
    end

   def books
        Book.all.select do |book| 
        if book.name == self
            book
        end
     end
   end

   def write_book(book_name, word_count)
        new_book = Book.new(book_name,self, word_count)
        new_book.words = word_count
        new_book 
     end

     def total_words
        words_array = 0 
        Book.all.select do |book|
          if book.author_name == self 
            words_array += book.words
          end
        end
        words_array 
     end

    def self.most_words
    
       author_hash = Book.all.each_with_object(Hash.new(0)) do |book, new_hash| 
           (new_hash[book.author_name] += book.words)         
        end
         author_hash.max_by{|k,v|v}

     end 
      
end


