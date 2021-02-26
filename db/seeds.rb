# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



puts 'Cleaning regions'
Region.destroy_all

puts 'Cleaning database'
Country.delete_all

puts 'destroying user'
User.destroy_all
puts 'Database cleaned'



puts "Creating users"
# user_1 = User.create!([{nickname: "User 1"}, {email: "user1.test@test.com"}, {password: "14PORTEFOIN"}, {password_confirmation: "14PORTEFOIN"}, {admin: false}])
# admin = User.create!([{nickname: "Admin"}, {email: "useradmin.test@test.com"}, {password: "14PORTEFOIN"}, {password_confirmation: "14PORTEFOIN"}, {admin: true}])
user_1 = User.create!(nickname: "User 1", email: "user1.test@test.com", password: "14PORTEFOIN", password_confirmation: "14PORTEFOIN", admin: false)
admin_1 = User.create!(nickname: "Admin", email: "useradmin.test@test.com", password: "14PORTEFOIN", password_confirmation: "14PORTEFOIN", admin: true)


puts 'User created.Creating countries'

country_1 = { title: "Admin", description: "Test 1", user_id: admin_1.id }
country_2 =  { title: "Admin_1", description: "Test 2", user_id: admin_1.id }
country_3 = { title: "ARTHOUR", description: "Couillière !", user_id: admin_1.id }

[ country_1, country_2, country_3 ].each do |attributes|
  country = Country.create!(attributes)
  puts "Created #{country.title}"
end
puts "Finished"
