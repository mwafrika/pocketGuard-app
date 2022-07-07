# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!(email: 'bob@gmail.com', name: 'bob', password: '123456',created_at: Time.now, updated_at: Time.now)
User.create!(email: 'bob1@gmail.com', name: 'bob1', password: '123456',created_at: Time.now, updated_at: Time.now)
User.create!(email: 'bob2@gmail.com', name: 'bob2', password: '123456',created_at: Time.now, updated_at: Time.now)

Category.create!(name: 'Food', icon: 'https://images.unsplash.com/photo-1653932618092-28132fad2920?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTB8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60', user: User.first,created_at: Time.now, updated_at: Time.now)
Category.create!(name: 'Food', icon: 'https://images.unsplash.com/photo-1653932618092-28132fad2920?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTB8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60', user: User.first,created_at: Time.now, updated_at: Time.now)
Category.create!(name: 'Food', icon: 'https://images.unsplash.com/photo-1653932618092-28132fad2920?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTB8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60', user: User.second,created_at: Time.now, updated_at: Time.now)
Category.create!(name: 'Food', icon: 'https://images.unsplash.com/photo-1653932618092-28132fad2920?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTB8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60', user: User.third,created_at: Time.now, updated_at: Time.now)

Transanct.create!(created_at: Time.now, updated_at: Time.now, name: 'Transaction1', amount: 50 ,user: User.first)
Transanct.create!(created_at: Time.now, updated_at: Time.now, name: 'Transaction2', amount: 60 ,user: User.second)
Transanct.create!(created_at: Time.now, updated_at: Time.now, name: 'Transaction3', amount: 30 ,user: User.second)
Transanct.create!(created_at: Time.now, updated_at: Time.now, name: 'Transaction4', amount: 90 ,user: User.third)
