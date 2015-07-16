20.times do |n|
  name  = Faker::Name.name
  email = "test-#{n+1}@brs.com"
  password = "password"
  User.create!(name: name, email: email, password: password,
    password_confirmation: password)
end

20.times do |n|
  name = Faker::Lorem.sentence 1
  description = Faker::Lorem.sentence 6
  author = Faker::Name.name
  bought = rand(2) == 1 ? true : false
  Request.create!(book_name: name, description: description,
    author: author, user_id: 1, bought: bought)
end

5.times do |n|
  name = Faker::Lorem.sentence 1
  Category.create! name: name
end

20.times do |n|
  title  = Faker::Lorem.sentence 1
  description = "test-#{n+1}@brs.com"
  category_id = rand(1..5)
  publish_date = Faker::Date.forward(1000)
  Book.create!(title: title, description: description, category_id: category_id,
    publish_date: publish_date, number_page: 12)
end
