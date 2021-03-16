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
admin_1 = User.create!(nickname: "Mathieu", email: "useradmin.test@test.com", password: "14PORTEFOIN", password_confirmation: "14PORTEFOIN", admin: true)


puts 'Users created. Creating countries'



# file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
# article = Country.new(title: 'NES', description: "A great console")
# article.image.attach(io: file, filename: 'nes.png', content_type: 'image/png')

image_1 = URI.open("https://res.cloudinary.com/elsa-lw/image/upload/v1615909910/8mwwd5sc7890co90t29bagaawoar.jpg")
country_1 = Country.new(title: "thaïlande", description: "xxx", user_id: admin_1.id)
country_1.image.attach(io: image_1, filename: 'file.jpg', content_type: 'image/jpg')
country_1.save

image_2 = URI.open("https://res.cloudinary.com/elsa-lw/image/upload/v1615909951/20hka8hcvlal6h9up8cgk24twiyb.jpg")
country_2 = Country.new(title: "south vietnam", description: "xxx", user_id: admin_1.id)
country_2.image.attach(io: image_2, filename: 'file.jpg', content_type: 'image/jpg')
country_2.save

image_3 = URI.open("https://res.cloudinary.com/elsa-lw/image/upload/v1615909979/ftf63rpswo3q7a8ei9uhajrmvrcf.jpg")
country_3 = Country.new(title: "laos", description: "xxx", user_id: admin_1.id)
country_3.image.attach(io: image_3, filename: 'file.jpg', content_type: 'image/jpg')
country_3.save

image_4 = URI.open("https://res.cloudinary.com/elsa-lw/image/upload/v1615910065/m3q4wo8vkmcnzkz44efibg4vmjr3.jpg")
country_4 = Country.new(title: "cambodge", description: "xxx", user_id: admin_1.id)
country_4.image.attach(io: image_4, filename: 'file.jpg', content_type: 'image/jpg')
country_4.save

image_5 = URI.open("https://res.cloudinary.com/elsa-lw/image/upload/v1615910098/aa0yttcmtjgt9vbotnk34whg2vpj.jpg")
country_5 = Country.new(title: "japan", description: "xxx", user_id: admin_1.id)
country_5.image.attach(io: image_5, filename: 'file.jpg', content_type: 'image/jpg')
country_5.save

image_6 = URI.open("https://res.cloudinary.com/elsa-lw/image/upload/v1615910152/fvk2zd6wi7s4kokvci9jh5ej005y.jpg")
country_6 = Country.new(title: "tawaïn", description: "xxx", user_id: admin_1.id)
country_6.image.attach(io: image_6, filename: 'file.jpg', content_type: 'image/jpg')
country_6.save

[ country_1, country_2, country_3, country_4, country_5, country_6 ].each do |country|
  puts "Created #{country.title}"
end

puts 'Countries created. Creating regions'

# region_image_1 = URI.open("https://res.cloudinary.com/elsa-lw/image/upload/v1615913893/ysj170qga6m40rd6lt2n8pt0sw77.jpg")
# region_1 = Region.new(title: "region 1", description: "region 1", country_id: country_1.id)
# region_1.image.attach(io: region_image_1, filename: 'file.jpg', content_type: 'image/jpg')
# region_1.save

# region_image_2 = URI.open("https://res.cloudinary.com/elsa-lw/image/upload/v1615913968/b7p1x6gyhgow27ui3fem7rz1qlrs.jpg")
# region_2 = Region.new(title: "region 2", description: "region 2", country_id: country_1.id)
# region_2.image.attach(io: region_image_2, filename: 'file.jpg', content_type: 'image/jpg')
# region_2.save

# region_image_3 = URI.open("https://res.cloudinary.com/elsa-lw/image/upload/v1615913993/5rp1451e0sx1984uaplttgr2cjrs.jpg")
# region_3 = Region.new(title: "region 3", description: "region 3", country_id: country_1.id)
# region_3.image.attach(io: region_image_3, filename: 'file.jpg', content_type: 'image/jpg')
# region_3.save

# region_image_4 = URI.open("https://res.cloudinary.com/elsa-lw/image/upload/v1615913933/fzz3ol3ct4zuld2ohbd6r4id9bjo.jpg")
# region_4 = Region.new(title: "region 4", description: "region 4", country_id: country_1.id)
# region_4.image.attach(io: region_image_4, filename: 'file.jpg', content_type: 'image/jpg')
# region_4.save

# puts "Created #{region_1.title}, #{region_2.title}, #{region_3.title} & #{region_4.title}"
# puts "Finished"
