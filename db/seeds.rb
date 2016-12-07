# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.create(
  username:"user1",
  email: "user1@user.com",
  password:"password"
)

1.upto(7) do |i|
  Property.create(
    user_id: user1.id,
    address: "#{rand(10..100)} Somestreet Apt #{i}",
    city: "Boston",
    state: "MA",
    zipcode: "#{rand(00000..10000)}",
    longitude: "-40",
    latitude: "-39",
    year_built: "#{rand(1800..2016)}",
    bathroom: "3",
    bedroom: "3",
    lot_size: "#{rand(1000..6000)}",
    sqft: "#{rand(400..5000)}",
    house_type: "condo",
    zpid: "#{900+i}",
    portfolio: [true, false].sample,
    zestimate: (rand(10..42) * 40000),
    rent: rand(1000..3000)
  )
end
