# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!(user_name: 'Brad Pitt', email:'bradpitt@gmail.com', password: 'qwerty1', password_confirmation: 'qwerty1', bio: "Accountant, 30 years old. Born in London", avatar: File.new("app/assets/images/brad.jpg"))
user2 = User.create!(user_name: 'Russell Crowe', email:'russell@gmail.com', password: 'qwerty2', password_confirmation: 'qwerty2', bio: "Finansist, 40 years old. Born in New York", avatar: File.new("app/assets/images/russell.jpg"))
post1 = user1.posts.build(title: 'Best summer in my life', image: File.new("app/assets/images/summer.jpg"))
post2 = user2.posts.build(title: 'My family', image: File.new("app/assets/images/family.jpg"))
post1.save
post2.save
