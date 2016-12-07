# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user2 = User.create(
  username:"user2",
  email: "user2@user.com",
  password:"password"
)

1.upto(10) do |i|
  Property.create(
    user_id: user2.id,
    address: "70 Somestreet Apt #{i}",
    city: "Boston",
    state: "MA",
    zipcode: "02111",
    longitude: "-40",
    latitude: "-39",
    year_built: "1900",
    bathroom: "3",
    bedroom: "3",
    lot_size: "3900",
    sqft: "2000",
    house_type: "condo",
    zpid: "#{900+i}",
    portfolio: [true, false].sample,
    zestimate: (rand(10..42) * 40000),
    rent: rand(1000..3000)
  )
end
