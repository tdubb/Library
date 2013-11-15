class Library 
  attr_accessor :books 
  def initialize
    @books = []
    puts "I'm a real library"
  end

  def books
    @books
    puts @books
  end

  def list_books
    @books.each do |book|
      puts "#{book.title}: #{book.status}"
    end
  end

  def borrowed_books

    
  end

  def available_books
    @books.each do |book|
      if book.status === "available"
        puts book
      else
        nil
      end
    end
  end

  def add_book(book)
    @books << book
    puts book.title
  end

  def check_out(user, book)
    if book.status === "available"
      puts book.status = "unavailable"
    else
      puts "sorry #{book} is checked out"
    end
  end

  def check_in(book)
  end
end

class Borrower
  attr_accessor :name 
  def initialize(name)
    @name = name
    puts name
  end

  def borrowed_books

  end

  def name
    @name
  end

  def borrowed_books_count
  end

  def borrowed_books_list

  end
end

class Book
  attr_accessor :title, :author, :status
  def initialize(title, author)
    @author = author
    @title = title
    @status = "available"
    puts @title
  end

end
