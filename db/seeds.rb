# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require "open-uri"

Order.destroy_all
Item.destroy_all
User.destroy_all




1.times do |i|
  user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: Faker::Address.street_address,
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
  puts "#{i + 1}. #{user.first_name} #{user.last_name}"
end



def category
  [ "Baby", "Sport & outdoors", "Electronics", "Books", "Videogames", "Toys", "Luggage", "Men’s fashion", "Women’s fashion", "Pet supplies", "Music", "Health" ].sample
end

def location
  ["Torino", "Milano", "Firenze", "Venezia", "Roma", "Napoli", "Verona", "Bologna", "Latina", "Arezzo", "Cuneo", "Bari", "Pisa", "Genova", "Palermo"].sample
end

def description
  Faker::Lorem.paragraph
end

def user
  User.all.sample.id
end

def price
  [100, 150, 200, 250, 300, 350, 500, 700, 1000, 1200].sample
end

Item.create!(name: "Surf", description: description, user_id: user , price_cents: price, category: "Sport & outdoors", location: location).photo.attach(io: URI.open('https://source.unsplash.com/XFMjz4X3hGs/600x400'), filename: 'surf.png', content_type: 'image/png')
Item.create!(name: "Electric Weelchair", description: description, user_id: user , price_cents: price, category: "Health", location: location).photo.attach(io: URI.open('https://i.ebayimg.com/images/g/1wwAAOSwLmtfA71p/s-l400.jpg'), filename: 'surf.png', content_type: 'image/png')
Item.create!(name: "Mountain bag winter", description: description, user_id: user , price_cents: price, category: "Sport & outdoors", location: location).photo.attach(io: URI.open('https://source.unsplash.com/-Q_BTq5J93w/600x400'), filename: 'zaino.png', content_type: 'image/png')
Item.create!(name: "Mountain bag Summer", description: description, user_id: user , price_cents: price, category: "Sport & outdoors", location: location).photo.attach(io: URI.open('https://source.unsplash.com/8sjBzL1IyMo/600x400'), filename: 'zaino2.png', content_type: 'image/png')
Item.create!(name: "Pennyboard", description: description, user_id: user , price_cents: price, category: "Sport & outdoors", location: location).photo.attach(io: URI.open('https://source.unsplash.com/NG4684I8Bng/600x400'), filename: 'skate.png', content_type: 'image/png')
Item.create!(name: "Snowboard", description: description, user_id: user , price_cents: price, category: "Sport & outdoors", location: location).photo.attach(io: URI.open('https://source.unsplash.com/j5asemKMmQY/600x400'), filename: 'snow.png', content_type: 'image/png')
Item.create!(name: "Baby Stroller", description: description, user_id: user , price_cents: price, category: "Baby", location: location).photo.attach(io: URI.open('https://source.unsplash.com/iESIEEShXuk/600x400'), filename: 'pass.png', content_type: 'image/png')
Item.create!(name: "Bag YSL", description: description, user_id: user , price_cents: price, category: "Women’s fashion", location: location).photo.attach(io: URI.open('https://source.unsplash.com/2B-zwo_nq7k/600x400'), filename: 'borsa.png', content_type: 'image/png')
Item.create!(name: "Hard suitcase ", description: description, user_id: user , price_cents: price, category: "Luggage", location: location).photo.attach(io: URI.open('https://source.unsplash.com/g8zCEU8UNVI/600x400'), filename: 'valigia.png', content_type: 'image/png')
Item.create!(name: "Trolley aluminum", description: description, user_id: user , price_cents: price, category: "Luggage", location: location).photo.attach(io: URI.open('https://source.unsplash.com/Pll7gOlLTpQ/600x400'), filename: 'valigia2.png', content_type: 'image/png')
Item.create!(name: "Bike", description: description, user_id: user , price_cents: price, category: "Sport & outdoors", location: location).photo.attach(io: URI.open('https://source.unsplash.com/0ClfreiNppM/600x400'), filename: 'Bici.png', content_type: 'image/png')
Item.create!(name: "Surf Alto", description: description, user_id: user , price_cents: price, category: "Sport & outdoors", location: location).photo.attach(io: URI.open('https://source.unsplash.com/3Q848rifJQ0/600x400'), filename: 'surf2.png', content_type: 'image/png')
Item.create!(name: "Kitesurf", description: description, user_id: user , price_cents: price, category: "Sport & outdoors", location: location).photo.attach(io: URI.open('https://source.unsplash.com/k5-VFCv3ehM/600x400'), filename: 'surf3.png', content_type: 'image/png')
Item.create!(name: "Set Golf", description: description, user_id: user , price_cents: price, category: "Sport & outdoors", location: location).photo.attach(io: URI.open('https://source.unsplash.com/_-6iQvIunqA/600x400'), filename: 'surf4.png', content_type: 'image/png')
Item.create!(name: "Kayak 2 people", description: description, user_id: user , price_cents: price, category: "Sport & outdoors", location: location).photo.attach(io: URI.open('https://source.unsplash.com/6z5O9gIzn7Y/600x400'), filename: 'canoa.png', content_type: 'image/png')
Item.create!(name: "Tennis Raquet Pro", description: description, user_id: user , price_cents: price, category: "Sport & outdoors", location: location).photo.attach(io: URI.open('https://source.unsplash.com/OH5g9IgcMWs/600x400'), filename: 'tennis.png', content_type: 'image/png')
Item.create!(name: "Canon AE-1", description: description, user_id: user , price_cents: price, category: "Electronics", location: location).photo.attach(io: URI.open('https://source.unsplash.com/2jqnXBOsVgA/600x400'), filename: 'canonae1.png', content_type: 'image/png')
Item.create!(name: "Sony A73", description: description, user_id: user , price_cents: price, category: "Electronics", location: location).photo.attach(io: URI.open('https://source.unsplash.com/4f7aouNoulY/600x400'), filename: 'sony.png', content_type: 'image/png')
Item.create!(name: "Set obiettivi", description: description, user_id: user , price_cents: price, category: "Electronics", location: location).photo.attach(io: URI.open('https://source.unsplash.com/zae9zxwLbrA/600x400'), filename: 'lens.png', content_type: 'image/png')
Item.create!(name: "DJI Phantom 4", description: description, user_id: user , price_cents: price, category: "Electronics", location: location).photo.attach(io: URI.open('https://source.unsplash.com/duNHkmSkW6M/600x400'), filename: 'drone.png', content_type: 'image/png')
Item.create!(name: "DJI Spark", description: description, user_id: user , price_cents: price, category: "Electronics", location: location).photo.attach(io: URI.open('https://source.unsplash.com/ramqoN2kiuo/600x400'), filename: 'drone2.png', content_type: 'image/png')
Item.create!(name: "Bag Sub Canon", description: description, user_id: user , price_cents: price, category: "Electronics", location: location).photo.attach(io: URI.open('https://source.unsplash.com/x7yF73Sq3fE/600x400'), filename: 'camera1.png', content_type: 'image/png')
Item.create!(name: "GoPro Hero 8", description: description, user_id: user , price_cents: price, category: "Electronics", location: location).photo.attach(io: URI.open('https://source.unsplash.com/_jYLJodqEoY/600x400'), filename: 'camera2.png', content_type: 'image/png')
Item.create!(name: "EVO Gimbal", description: description, user_id: user , price_cents: price, category: "Electronics", location: location).photo.attach(io: URI.open('https://source.unsplash.com/KFWCjfKIQag/600x400'), filename: 'camera3.png', content_type: 'image/png')
Item.create!(name: "Ukulele", description: description, user_id: user , price_cents: price, category: "Music", location: location).photo.attach(io: URI.open('https://source.unsplash.com/5HltXT-6Vgw/600x400'), filename: 'ukulele.png', content_type: 'image/png')
Item.create!(name: "Studio Microphone", description: description, user_id: user , price_cents: price, category: "Music", location: location).photo.attach(io: URI.open('https://source.unsplash.com/r-QvLCLakkA/600x400'), filename: 'mic.png', content_type: 'image/png')
Item.create!(name: "OculusVR", description: description, user_id: user , price_cents: price, category: "Videogames", location: location).photo.attach(io: URI.open('https://source.unsplash.com/HI6gy-p-WBI/600x400'), filename: 'oculusvr.png', content_type: 'image/png')
Item.create!(name: "Nintendo Switch", description: description, user_id: user , price_cents: price, category: "Videogames", location: location).photo.attach(io: URI.open('https://source.unsplash.com/1VCvpEvcsxc/600x400'), filename: 'Switch.png', content_type: 'image/png')
Item.create!(name: "Joypad Computer", description: description, user_id: user , price_cents: price, category: "Videogames", location: location).photo.attach(io: URI.open('https://source.unsplash.com/5qBr5fR7YZY/600x400'), filename: 'htcvive.png', content_type: 'image/png')
Item.create!(name: "HTC Vive", description: description, user_id: user , price_cents: price, category: "Videogames", location: location).photo.attach(io: URI.open('https://source.unsplash.com/DeyfdybVQhA/600x400'), filename: 'pad.png', content_type: 'image/png')
Item.create!(name: "Sony PS2", description: description, user_id: user , price_cents: price, category: "Videogames", location: location).photo.attach(io: URI.open('https://source.unsplash.com/5eLQ_NB-E8A/600x400'), filename: 'ps2.png', content_type: 'image/png')
Item.create!(name: "Console DJ", description: description, user_id: user , price_cents: price, category: "Music", location: location).photo.attach(io: URI.open('https://source.unsplash.com/ttv1pX6tk7o/600x400'), filename: 'consoledj1.png', content_type: 'image/png')
Item.create!(name: "Console Pioneer", description: description, user_id: user , price_cents: price, category: "Music", location: location).photo.attach(io: URI.open('https://source.unsplash.com/g763DLmVJO8/600x400'), filename: 'consoledj2.png', content_type: 'image/png')
Item.create!(name: "Guitar Fender", description: description, user_id: user , price_cents: price, category: "Music", location: location).photo.attach(io: URI.open('https://source.unsplash.com/uszCr5AW1jA/600x400'), filename: 'chitarra1.png', content_type: 'image/png')
Item.create!(name: "Amplifier Fender", description: description, user_id: user , price_cents: price, category: "Music", location: location).photo.attach(io: URI.open('https://source.unsplash.com/MfLGvcy9ooY/600x400'), filename: 'chitarra3.png', content_type: 'image/png')
Item.create!(name: "Guitar Jackson", description: description, user_id: user , price_cents: price, category: "Music", location: location).photo.attach(io: URI.open('https://source.unsplash.com/6WOtQjsxlpU/600x400'), filename: 'chitarra2.png', content_type: 'image/png')
Item.create!(name: "electronic drums", description: description, user_id: user , price_cents: price, category: "Music", location: location).photo.attach(io: URI.open('https://source.unsplash.com/3InmHADj6KE/600x400'), filename: 'batteria.png', content_type: 'image/png')



