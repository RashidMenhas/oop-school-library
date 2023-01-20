require_relative 'person'
require_relative 'book'
require_relative 'student'
require_relative 'teacher'
require_relative 'rentals'
require_relative 'classroom'
require_relative 'nameable'
# required class
class App
  def initialize
    @book = []
    @people = []
    @rental = []
  end

  def list_all_books
    if @book.empty?
      puts 'There is no book'
    else
      @book.each { |b| puts "#{b.title} written by #{b.author}" }
    end
  end

  def list_all_people
    if @people.empty?
      puts 'There is no people'
    else
      @people.each { |p| puts "Name:#{p.name} Age:#{p.age} Class:#{p.class} ID:#{p.id}" }
    end
  end

  def create_a_person
    puts 'Do you want to create a student (1) or teacher (2)'
    x = gets.chomp.to_i
    case x
    when 1
      create_student
    when 2
      create_teacher
    end
  end

  def create_student
    puts 'classroom:'
    clsroom = gets.chomp
    puts 'Age:'
    age = gets.chomp
    puts 'Name:'
    name = gets.chomp
    puts 'permission:'
    parents_permission = gets.chomp
    std = Student.new(clsroom, age, name, parents_permission)
    @people.push(std)
  end

  def create_teacher
    puts 'specialization:'
    specilaze = gets.chomp
    puts 'Age:'
    age = gets.chomp
    puts 'Name:'
    name = gets.chomp
    puts 'permission:'
    permission = gets.chomp
    teach = Teacher.new(specilaze, age, name, permission)
    @people.push(teach)
  end

  def create_a_book
    puts 'Title:'
    tit = gets.chomp
    puts 'Author:'
    auth = gets.chomp
    bo = Book.new(tit, auth)
    @book.push(bo)
  end

  def create_a_rental
    puts 'date(yyyy/dd/mm)'
    date = gets.chomp
    puts 'Select a book:'
    @book.each_with_index { |b, i| puts "#{i}) #{b.title} written by #{b.author}" }
    bookid = gets.chomp.to_i
    book = @book[bookid]
    puts 'Select a person:'
    @people.each_with_index { |p, i| puts "#{i}) #{p.name}" }
    personid = gets.chomp.to_i
    person = @people[personid]
    rental = Rental.new(date, book, person)
    @rental.push(rental)
  end

  def list_all_rentals
    if @rental.empty?
      puts 'There are no rentals'
    else
      puts 'Please type person id'
      id = gets.chomp.to_i
      @rental.each do |r|
        puts "Date: #{r.date}, Book:#{r.book.title} by #{r.book.author}" if r.person.id == id
      end
    end
  end
end
