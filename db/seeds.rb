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
user_1 = User.create!(nickname: "User 1", email: "user1.test@test.com", password: "14PORTEFOIN", password_confirmation: "14PORTEFOIN", admin: false)
admin_1 = User.create!(nickname: "Admin", email: "useradmin.test@test.com", password: "14PORTEFOIN", password_confirmation: "14PORTEFOIN", admin: true)


puts 'Users created. Creating countries'



# file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
# article = Country.new(title: 'NES', description: "A great console")
# article.image.attach(io: file, filename: 'nes.png', content_type: 'image/png')

image_1 = URI.open("https://res.cloudinary.com/elsa-lw/image/upload/v1614952029/1z07fskgywzz0p5fxc7e8s6gm2fq.jpg")
country_1 = Country.new(title: "Admin", description: "Test 1", user_id: admin_1.id)
country_1.image.attach(io: image_1, filename: 'file.jpg', content_type: 'image/jpg')
country_1.save

image_2 = URI.open("https://res.cloudinary.com/elsa-lw/image/upload/v1614949514/w06kks5xmuuhyw0yrc0y8a0zpjzi.jpg")
country_2 = Country.new(title: "Admin_1", description: "Test 2", user_id: admin_1.id)
country_2.image.attach(io: image_2, filename: 'le roi burgonde.jpg', content_type: 'image/jpg')
country_2.save

image_3 = URI.open("https://res.cloudinary.com/elsa-lw/image/upload/v1614952092/8hz2353bolhgbnhaq7yoyemg56nu.jpg")
country_3 = Country.new(title: "ARTHOUR", description: "Couillière !", user_id: admin_1.id)
country_3.image.attach(io: image_3, filename: 'le roi burgonde.jpg', content_type: 'image/jpg')
country_3.save


[ country_1, country_2, country_3 ].each do |country|
  puts "Created #{country.title}"
end

puts 'Countries created. Creating regions'

region_image_1 = URI.open("https://res.cloudinary.com/elsa-lw/image/upload/v1614949742/d2x8oshku5jna5ovcachlb6p9f09.jpg")
region_1 = Region.new(title: "ARTHOUR", description: "Pas changer assiette pour fromage !", country_id: country_3.id)
region_1.image.attach(io: region_image_1, filename: 'le roi burgonde.jpg', content_type: 'image/jpg')
region_1.save

puts "Created #{region_1.title}"
puts "Finished"
