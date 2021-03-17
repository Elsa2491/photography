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

image_1 = URI.open("https://res.cloudinary.com/elsa-lw/image/upload/v1615995411/ky0444i5s7pe5xx0drn14xn9j3dh.jpg")
country_1 = Country.new(title: "thaïlande", description: "xxx", user_id: admin_1.id)
country_1.image.attach(io: image_1, filename: 'file.jpg', content_type: 'image/jpg')
country_1.save

image_2 = URI.open("https://res.cloudinary.com/elsa-lw/image/upload/v1615995428/4vpbrgvgvl53szh1xrqaz9l6vv0r.jpg")
country_2 = Country.new(title: "south vietnam", description: "xxx", user_id: admin_1.id)
country_2.image.attach(io: image_2, filename: 'file.jpg', content_type: 'image/jpg')
country_2.save

image_3 = URI.open("https://res.cloudinary.com/elsa-lw/image/upload/v1615995452/ivr48pnudfx161li5ukrgd4r9d1w.jpg")
country_3 = Country.new(title: "laos", description: "xxx", user_id: admin_1.id)
country_3.image.attach(io: image_3, filename: 'file.jpg', content_type: 'image/jpg')
country_3.save

image_4 = URI.open("https://res.cloudinary.com/elsa-lw/image/upload/v1615995473/z2xweo6t2ppwfrby2dhl7ea2vah0.jpg")
country_4 = Country.new(title: "cambodge", description: "xxx", user_id: admin_1.id)
country_4.image.attach(io: image_4, filename: 'file.jpg', content_type: 'image/jpg')
country_4.save

image_5 = URI.open("https://res.cloudinary.com/elsa-lw/image/upload/v1615995495/s3pdfbc7dujtewcjfg2lm687v1ar.jpg")
country_5 = Country.new(title: "japan", description: "xxx", user_id: admin_1.id)
country_5.image.attach(io: image_5, filename: 'file.jpg', content_type: 'image/jpg')
country_5.save

image_6 = URI.open("https://res.cloudinary.com/elsa-lw/image/upload/v1615995517/9u8y5tfy1sl87j6xjamgf55wesz3.jpg")
country_6 = Country.new(title: "tawaïn", description: "xxx", user_id: admin_1.id)
country_6.image.attach(io: image_6, filename: 'file.jpg', content_type: 'image/jpg')
country_6.save

[ country_1, country_2, country_3, country_4, country_5, country_6 ].each do |country|
  puts "Created #{country.title}"
end

puts 'Countries created. Creating regions'



region_image_1 = URI.open("https://res.cloudinary.com/elsa-lw/image/upload/v1615996112/s165kcqaq2bwf6921mueo2dvjj3z.jpg")
region_1 = Region.new(title: "thailande region 1", description: "xx", country_id: country_1.id)
region_1.image.attach(io: region_image_1, filename: 'file.jpg', content_type: 'image/jpg')
region_1.save

region_image_2 = URI.open("https://res.cloudinary.com/elsa-lw/image/upload/v1615996188/vt2bnbrue5fm52d2btjlebud1v62.jpg")
region_2 = Region.new(title: "thailande region 2", description: "xx", country_id: country_1.id)
region_2.image.attach(io: region_image_2, filename: 'file.jpg', content_type: 'image/jpg')
region_2.save

region_image_3 = URI.open("https://res.cloudinary.com/elsa-lw/image/upload/v1615996301/216bhtyn9xdaefqhvcfxtfaa15do.jpg")
region_3 = Region.new(title: "south vietnam region1", description: "xx", country_id: country_2.id)
region_3.image.attach(io: region_image_3, filename: 'file.jpg', content_type: 'image/jpg')
region_3.save

[region_1, region_2, region_3].each do |region|
  puts "Created #{region.title}"
end



puts 'Regions created. Creating photos'

photo_image_1 = URI.open("https://res.cloudinary.com/elsa-lw/image/upload/v1615996469/6o4a3bsw5hfejo5pd1koqebpe50e.jpg")
photo_1 = Photo.new(title: "Thaïlande region 1 photo 1", description: "xx", region_id: region_1.id)
photo_1.image.attach(io: photo_image_1, filename: 'file.jpg', content_type: 'image/jpg')
photo_1.save

photo_image_2 = URI.open("https://res.cloudinary.com/elsa-lw/image/upload/v1615996529/5e3iswlqqie76wxiywnvgc7exw19.jpg")
photo_2 = Photo.new(title: "photo 2", description: "photo 2", region_id: region_1.id)
photo_2.image.attach(io: photo_image_2, filename: 'file.jpg', content_type: 'image/jpg')
photo_2.save

photo_image_3 = URI.open("https://res.cloudinary.com/elsa-lw/image/upload/v1615996599/s84k5wlq2bdavbm72j1s6itei1ku.jpg")
photo_3 = Photo.new(title: "photo 3", description: "photo 3", region_id: region_3.id)
photo_3.image.attach(io: photo_image_3, filename: 'file.jpg', content_type: 'image/jpg')
photo_3.save


[photo_1, photo_2, photo_3].each do |photo|
  puts "Created #{photo.title}"
end


puts "Finished"



