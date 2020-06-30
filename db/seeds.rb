# Use `rails db:seed assets=false` to skip the cloudinary uploads

def skip_assets? # the question mark can't be used for variables name, but we can use a method
  ENV["assets"] == "false"
end

require "open-uri"

# This prevents URI.open from creating StringIO's for small files, which does't work with Active Storage
OpenURI::Buffer.send(:remove_const, "StringMax") if OpenURI::Buffer.const_defined?("StringMax")
OpenURI::Buffer.const_set("StringMax", 0)

locations = ["Milano, Italy", "Torino, Italy", "Brescia, Italy", "Monza, Italy", "Bergamo, Italy", "Trento, Italy"]

latitudes = [45.4642, 45.6387, 45.64, 45.58, 45.442, 45.4374, 45.4426, 45.4634, 44.998, 45.4669, 45.4532, 45.4402, 45.4587, 45.477, 45.89, 45.34, 45.94, 45.65, 45.334]
longitudes = [9.1834, 9.167, 8.94, 8.98, 9.04, 9.12, 8.894, 9.1865, 9.1856, 8.88, 8.899, 9.03, 9.19183, 9.19765, 9.18023, 9.18034, 8.64, 8.76, 9.19245, 9.2013, 9.1845, 9.1745, 9.1877, 9.1988, 9.33, 9.202, 9.43, 9.1504, 10.11, 11.32, 8.99]

categories = [
  {
    names: ["Guitar", "Backpack", "Speakers", "Tennis Racket", "DJ Mixing Decks", "Macbook", "Pressure Washer"],
    descriptions: ["I need this for my event.", "I am travelling this weekend.", "I am playing in a concert"]
<<<<<<< HEAD
  },
=======
  }
>>>>>>> c1e866afcd9c1769d8d65ed5ccd14ab679835ad5
  {
    names: ["Shopping cart", "Golf clubs", "Picnic Tables"],
    descriptions: ["I urgently need this", "Brand new", "Running a business"]
  }
]

  # Destroy everything
  Review.destroy_all
  User.destroy_all
  Item.destroy_all
  Order.destroy_all


  # Women
  20.times do |n|
    user = User.create(
      first_name: Faker::Name.female_first_name,
      last_name: Faker::Name.last_name,
      email: "user#{n + 1}@circular.bz",
      password: "password",
      address: locations.sample,
      phone_number: Faker::PhoneNumber.cell_phone
    )
    next if skip_assets?

    file = URI.open("https://randomuser.me/api/portraits/women/#{n + 1}.jpg")
    user.avatar.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")
    user.save
  end

  # Men
  20.times do |n|
    user = User.create(
      first_name: Faker::Name.male_first_name,
      last_name: Faker::Name.last_name,
      email: "man#{n + 11}@circular.bz",
      password: "password",
      address: locations.sample,
      phone_number: Faker::PhoneNumber.cell_phone
    )
    next if skip_assets?

    file = URI.open("https://randomuser.me/api/portraits/men/#{n + 1}.jpg")
    user.avatar.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")
    user.save
  end

  categories.each do |task_category|
    item_category[:names].each do |name|
      item_creator = User.all.sample

      item = Item.create(
        name: title,
        description: item_category[:descriptions].sample,
        location: item_creator.address,
        creator: item_creator,
        latitude: latitudes.sample,
        longitude: longitudes.sample
        # status is "pending" by default
      )
  end
end


  # Some items will be marked return to start
  Order.where(status: "in progress").sample(5).each do ||
    order.update!(status: "returned")

    # Review from the lender
    if rand > 0.5
      lender_review = Review.create(
        user: item.order,
        item: item
      )

      ReviewField.create(
        name: "Public Review",
        content: Faker::Lorem.paragraph(sentence_count: 3, supplemental: true, random_sentences_to_add: 5),
        review: lender_review
      )

      ReviewField.create(
        name: "Communication",
        content: Faker::Lorem.paragraph(sentence_count: 2, supplemental: true, random_sentences_to_add: 2),
        rating: rand(1..5),
        review: lender_review
      )
    end

    # Review from the creator
    if rand > 0.5
      creator_review = Review.create(
        user: task.creator,
        task: task
      )

      ReviewField.create(
        name: "Public Review",
        content: Faker::Lorem.paragraph(sentence_count: 3, supplemental: true, random_sentences_to_add: 5),
        rating: nil,
        review: creator_review
      )

      ReviewField.create(
        name: "Communication",
        content: Faker::Lorem.paragraph(sentence_count: 2, supplemental: true, random_sentences_to_add: 2),
        rating: rand(1..5),
        review: creator_review
      )
    end
<<<<<<< HEAD
  end
=======

    # Clear and print stop message specified before
    Whirly.status = ""
  end
end
>>>>>>> c1e866afcd9c1769d8d65ed5ccd14ab679835ad5
