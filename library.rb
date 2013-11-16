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
    @books.each do |book|
      if book.status === "unavailable"
        puts "#{book.borrower.name}: #{book.title}"
      else
      end
    end
  end

  def available_books
    @books.each do |x|
      if x.status === "available"
        puts x.title
      else
      end
    end
  end

  def add_book(book)
    @books << book
    puts book.title
  end

  def check_out(user, book)
    puts user.borrowed_books.length
    if user.borrowed_books.length >= 2
      puts "Sorry #{user.name} you already have 2 books checked out."
    elsif book.status === "available"
      puts "You may check out #{book.title}"
      user.borrowed_books << book
      book.status = "unavailable"
      book.borrower = user
    else
      puts "Sorry #{book.title} is checked out."
    end
  end

  def check_in(book)

  end
end

class Borrower
  attr_accessor :name, :borrowed_books
  def initialize(name)
    @name = name
    puts name
    @borrowed_books = []
  end

  def title
    @title 
  end

  def borrowed_books_count
    puts @borrowed_books.length
  end

  def borrowed_books_list
    borrowed_books.each do |x|
      puts x.title
    end

  end

end

class Book
  attr_accessor :title, :author, :status, :borrower
  def initialize(title, author)
    @author = author
    @title = title
    @status = "available"
    @borrower = borrower
    puts @title
  end

end
