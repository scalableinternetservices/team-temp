# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
users = []
categories = []
questions = []
answers = []

# 50 categories
50.times do
  c = Category.create!(
    name: Faker::Team.unique.creature
  )
  categories.push(c.id)
end

# 50 users, 50 questions each with categories chosen randomly
50.times do
  u = User.create!(
    username: Faker::Internet.unique.email,
    password: '123456'
    )
    users.push(u.id)
  
    50.times do
    q = Question.create!(
      user_id: u.id,
      category_id: categories.sample,
      title: Faker::Hipster.word,
      description: Faker::Hipster.sentence
    )
    questions.push(q.id)
  end
end

# 5000 random answers
5000.times do
  a = Answer.create!(
    user_id: users.sample,
    question_id: questions.sample,
    description: Faker::Hipster.sentence
  )
  answers.push(a.id)
end
