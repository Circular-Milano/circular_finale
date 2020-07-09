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




10.times do |i|
  user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: Faker::Address.street_address,
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
  puts "#{i + 1}. #{user.first_name} #{user.last_name}"
end



10.times do
  file = URI.open('https://source.unsplash.com/800x600/?gear')
  item = Item.create(
    name:  Faker::Device.model_name,
    description: Faker::Quote.yoda,
    user_id: User.all.sample.id,
    category: Faker::Commerce.department
  )
  item.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
  puts item.valid?
end

  user_renter = User.all[1..5]

# create a ORDERS seed
# create two separate groups of user: one for owners, another for renters
# user.find / user.where
# is_active = ['true', 'false']

# booked_item = Item.all.where("user_id: #{}")
10.times do |i|
  order = Order.create!(
    user_id: user_renter.sample.id,
    # mask_id: all_masks.include?(user_owner.mask_id),
    # mask_id: all_masks.each do |key, value|
    #   all_masks_uid << all_masks[key].user_id.to_i
    # end
    # ,
    # mask_id: all_masks.each_key do |key|
    #   all_masks_uid << all_masks[key].user_id.to_i
    # end,
    # mask_id: Mask.joins(:user).where({user: user_owner.sample}),
    # mask_id: user_owner.sample.masks.sample.id,
    item_id: Item.all.sample.id
    #start_time: Faker::Date.between(from: 15.days.ago, to: Date.today),
    #end_time: Faker::Date.forward(days: 30),
    #confirmed: [true, true, false].sample
  )
end
  puts "Created #{Order.all.count} orders!"



