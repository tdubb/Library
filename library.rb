
# This is the Library class and on it 
# we can call and write books

class Library 
  attr_accessor :books 
  def initialize
    @books = []
    puts "I'm a real library"
  end

  # list_books lists the books title and it's status

  def list_books
    @books.each do |book|
      puts "#{book.title}: #{book.status}"
    end
  end

# borrowed_books lists which books have the status of 
# unavailable as well as the name of the person who checked it out

  def borrowed_books
    @books.each do |book|
      if book.status === "unavailable"
        puts "#{book.borrower.name}: #{book.title}"
      else
      end
    end
  end

  # available books lists the books with the status of available

  def available_books
    @books.each do |x|
      if x.status === "available"
        puts x.title
      else
      end
    end
  end

  # add_book puts a book into the @books array which 
  # contains all the books in the library

  def add_book(book)
    @books << book
    puts book.title
  end

# check_out calls borrowed_books on the instance 
# of the borrower class passed to it as the parameter user
# if the length of borrowed_books array is 2 it 
# prevents that user from checking out another book
# if the user has less then two books checked 
# out then it checks to see if the status of the book 
# requested has a status of available.  
# If it does it will check it out
# and update the status of the book as wel 
# as the borrowed_books array along with
# the borrower attribute associated with the book.

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
end

# This is the Borrower class and on it we can call and write;
# name, borrowed_books and title

class Borrower
  attr_accessor :name, :borrowed_books
  def initialize(name)
    @name = name
    puts name
    @borrowed_books = []
  end

  # borrowed_books_count returns the number of 
  # books borrowed by the Borrower instance

  def borrowed_books_count
    puts @borrowed_books.length
  end

  # borrowed_books_list gives the title of all 
  # unavailable books

  def borrowed_books_list
    borrowed_books.each do |x|
      puts x.title
    end
  end

# this function adds a rating and a written_review to 
# the books instance that is passed into it as the first
# parameter. They are both stored in arrays.

  def user_review(book, rating, written_review)
    book.rating << rating
    puts book.rating
    book.review << "#{self.name}: '#{written_review}'"
    puts "#{self.name} rated  #{book.title} a #{book.rating.pop} and said '#{written_review}'."
    book.rating << rating
    puts book.rating

  end

end

# the Book class which on we can call and write; title, 
# author, status, and borrower.

class Book
  attr_accessor :title, :author, :status, :borrower, :year_published, :edition, :rating, :review
  def initialize(title, author)
    @author = author
    @title = title
    @status = "available"
    @borrower = borrower
    @review = []
    @rating = []
    puts @title
  end

# This function takes all the rating for a book
# and returns its average to the first decimal place

  def book_avg_rating
    y = 0.0
    self.rating.each do |x|
      y += x
    end
    puts (y/(self.rating.length)).round(1)
  end


end
