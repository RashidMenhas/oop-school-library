#!/usr/bin/env ruby
require_relative 'app'
# rubocop:disable Metrics/CyclomaticComplexity
def main
  app = App.new

  response = nil

  puts "Welcome to School Library App!\n\n"
  while response != '7'
    puts 'Please choose an option by enter in a number from 1 to 7:'
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given id'
    puts '7 - Exit'
    response = gets.chomp

    case response
    when '1'
      app.list_all_books
    when '2'
      app.list_all_people
    when '3'
      app.create_a_person
    when '4'
      app.create_a_book
    when '5'
      app.create_a_rental
    when '6'
      app.list_all_rentals
    when '7'
      puts 'Thank you for using this app!'
    end
    puts "\n"
  end
end
# rubocop:enable Metrics/CyclomaticComplexity
main
