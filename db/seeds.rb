Restaurant.destroy_all
puts 'Creating 5 fake restaurants...'
5.times do
  restaurant = Restaurant.new(
    name: Faker::Company.name,
    phone_number: Faker::PhoneNumber.phone_number,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    category: %w[chinese italian japanese french belgian].sample
  )
  restaurant.save!
end
puts 'Finished!'
