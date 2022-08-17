puts "seeding data"

Role.destroy_all
Audition.destroy_all

jackie = Role.create(character_name: "Jackie")
bob = Role.create(character_name: "Bob")
larry = Role.create(character_name: "Larry")
cindy = Role.create(character_name: "Cindy")

ids = Role.pluck( :id )

5.times do
    Audition.create(
        actor: Faker::Name.name,
        location: Faker::Movies::Hobbit.location,
        phone: Faker::PhoneNumber.cell_phone.to_i,
        hired: [true, false].sample,
        role_id: ids.sample
    )
end

puts "seeding complete"
