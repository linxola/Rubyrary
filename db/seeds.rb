# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name:admin 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 20.times do
#   title = Faker::Book.genre
#   Group.create title: title
# end

groups = ['Fantasy', 'Science Fiction', 'Action & Adventure', 'Crime/Detective',
          'Horror', 'Historical fiction', 'Realistic fiction', 'Metafiction',
          'Fairy tale', 'Folklore', 'Legend', 'Classic', 'Humor', 'Romance',
          'Thriller & Suspense', 'Graphic Novel', 'Narrative nonfiction',
          'History', 'Memoir & Autobiography', 'Humanities & Social Sciences']

groups.each do |group|
  Group.create title: group
end

User.create(email: 'admin@rubyrary.com', name: 'John', password: 'Password123!', role: 'admin')
User.create(email: 'group_mod@rubyrary.com', name: 'Fred', password: 'Password123!', role: 'groups_moderator')
User.create(email: 'book_mod@rubyrary.com', name: 'Bernard', password: 'Password123!', role: 'books_moderator')
User.create(email: 'karl123@email.com', name: 'Karl', password: 'Password123!', role: 'basic')
