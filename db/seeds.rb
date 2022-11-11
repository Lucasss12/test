require 'faker'
Faker::Config.locale = 'fr'

20.times do |t|
    user = User.create!(email: Faker::Internet.email(domain: 'yopmail.com'), encrypted_password: "test123456", description: Faker::Lorem.sentence( word_count: 5), first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

50.times do |t|
    event = Event.create!(start_date: Faker::Date.between(from: '2022-09-23', to: '2022-11-25'), duration: Faker::Number.between(from: 1, to: 14), title: Faker::Movie.title[0..11], description: Faker::ChuckNorris.fact, price: Faker::Number.between(from: 1, to: 1000), location: Faker::Address.city)
end

# 200.times do |t|
#     attendance = Attendance.create!(event: Event.all.sample, stripe_customer_id: "xxxxxxxxxx")
# end