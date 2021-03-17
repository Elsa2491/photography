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

image_1 = URI.open("https://res.cloudinary.com/elsa-lw/image/upload/v1615988068/p3uj3fexq00zffqcl66htlukabrm.jpg")
country_1 = Country.new(title: "thaïlande", description: "xxx", user_id: admin_1.id)
country_1.image.attach(io: image_1, filename: 'file.jpg', content_type: 'image/jpg')
country_1.save

image_2 = URI.open("https://res.cloudinary.com/elsa-lw/image/upload/v1615988089/a9wedl5l828m2xs2cj2ub9ppkj2d.jpg")
country_2 = Country.new(title: "south vietnam", description: "xxx", user_id: admin_1.id)
country_2.image.attach(io: image_2, filename: 'file.jpg', content_type: 'image/jpg')
country_2.save

image_3 = URI.open("https://res.cloudinary.com/elsa-lw/image/upload/v1615988100/3trvhs0r7l92ftgbx4agj70q0rsy.jpg")
country_3 = Country.new(title: "laos", description: "xxx", user_id: admin_1.id)
country_3.image.attach(io: image_3, filename: 'file.jpg', content_type: 'image/jpg')
country_3.save

image_4 = URI.open("https://res.cloudinary.com/elsa-lw/image/upload/v1615988167/h882qojzfgyg5ljlpl8ok7nl3moi.jpg")
country_4 = Country.new(title: "cambodge", description: "xxx", user_id: admin_1.id)
country_4.image.attach(io: image_4, filename: 'file.jpg', content_type: 'image/jpg')
country_4.save

image_5 = URI.open("https://res.cloudinary.com/elsa-lw/image/upload/v1615988121/w3w6iehmudakotlydnlup5i10hgs.jpg")
country_5 = Country.new(title: "japan", description: "xxx", user_id: admin_1.id)
country_5.image.attach(io: image_5, filename: 'file.jpg', content_type: 'image/jpg')
country_5.save

image_6 = URI.open("https://res.cloudinary.com/elsa-lw/image/upload/v1615988144/v37b7rzlo87kshjjesal0ifywz5z.jpg")
country_6 = Country.new(title: "tawaïn", description: "xxx", user_id: admin_1.id)
country_6.image.attach(io: image_6, filename: 'file.jpg', content_type: 'image/jpg')
country_6.save

[ country_1, country_2, country_3, country_4, country_5, country_6 ].each do |country|
  puts "Created #{country.title}"
end

puts 'Countries created. Creating regions'



# region_image_1 = URI.open("https://res.cloudinary.com/elsa-lw/image/upload/v1615988433/7m7qa781jwrxqo7av5z759fsp7si.jpg")
# region_1 = Region.new(title: "region 1", description: "region 1", country_id: country_1.id)
# region_1.image.attach(io: region_image_1, filename: 'file.jpg', content_type: 'image/jpg')
# region_1.save

# region_image_2 = URI.open("https://res.cloudinary.com/elsa-lw/image/upload/v1615988495/re63grfjtlduxrlm9i40fy9ug39s.jpg")
# region_2 = Region.new(title: "region 2", description: "region 2", country_id: country_1.id)
# region_2.image.attach(io: region_image_2, filename: 'file.jpg', content_type: 'image/jpg')
# region_2.save

# region_image_3 = URI.open("https://res.cloudinary.com/elsa-lw/image/upload/v1615988746/71asrj5cglb9zjr0pxesgcazi4jg.jpg")
# region_3 = Region.new(title: "region 3", description: "region 3", country_id: country_1.id)
# region_3.image.attach(io: region_image_3, filename: 'file.jpg', content_type: 'image/jpg')
# region_3.save

# region_image_4 = URI.open("https://res.cloudinary.com/elsa-lw/image/upload/v1615988826/04ro157pzbhq26q6zg5lr6ly5yhe.jpg")
# region_4 = Region.new(title: "region 4", description: "region 4", country_id: country_2.id)
# region_4.image.attach(io: region_image_4, filename: 'file.jpg', content_type: 'image/jpg')
# region_4.save

# [region_1, region_2, region_3, region_4].each do |region|
#   puts "Created #{region.title}"
# end



# puts 'Regions created. Creating photos'

# photo_image_1 = URI.open("https://res.cloudinary.com/elsa-lw/image/upload/v1615988974/otvw6dlefp6h4g4ja9pqm8vaj80v.jpg")
# photo_1 = Photo.new(title: "photo 1", description: "photo 1", region_id: region_1.id)
# photo_1.image.attach(io: photo_image_1, filename: 'file.jpg', content_type: 'image/jpg')
# photo_1.save

# photo_image_2 = URI.open("https://res.cloudinary.com/elsa-lw/image/upload/v1615988998/wagu92qgce5yl6qn4d57iutmm3sn.jpg")
# photo_2 = Photo.new(title: "photo 2", description: "photo 2", region_id: region_1.id)
# photo_2.image.attach(io: photo_image_2, filename: 'file.jpg', content_type: 'image/jpg')
# photo_2.save

# photo_image_3 = URI.open("https://res.cloudinary.com/elsa-lw/image/upload/v1615989133/vo4qse6qjp2oaaeh5ftv345ori09.jpg")
# photo_3 = Photo.new(title: "photo 3", description: "photo 3", region_id: region_4.id)
# photo_3.image.attach(io: photo_image_3, filename: 'file.jpg', content_type: 'image/jpg')
# photo_3.save


# [photo_1, photo_2, photo_3, photo_4].each do |photo|
#   puts "Created #{photo.title}"
# end


puts "Finished"



