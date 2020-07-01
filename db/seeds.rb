# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



100.times do
  Item.create(
    name: Faker::Device.model_name,
    description: Faker::Company.catch_phrase,
    user_id: [1, 2, 3].sample,
    rating: rand(1..5),
    category: Faker::Commerce.department
  )
end


100.times do |i|
  user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    address: Faker::Address.street_address,
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
  puts "#{i + 1}. #{user.first_name} #{user.last_name}"
end


  user_renter = User.all[11..20]

# create a ORDERS seed
# create two separate groups of user: one for owners, another for renters
# user.find / user.where
# is_active = ['true', 'false']
def random_owner
  Item.all.sample.id
end

all_items = Item.all
all_items_uid = []
# booked_item = Item.all.where("user_id: #{}")
100.times do |i|
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
    item_id: random_owner,
    #start_time: Faker::Date.between(from: 15.days.ago, to: Date.today),
    #end_time: Faker::Date.forward(days: 30),
    #confirmed: [true, true, false].sample
  )
end
  puts "Created #{Order.all.count} orders!"



