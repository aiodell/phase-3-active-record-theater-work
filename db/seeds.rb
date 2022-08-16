puts "seeding data"

Role.delete_all
Audition.delete_all

faker = Role.create(character_name: "Faker" )
truther = Role.create(character_name: "Truther")
bob = Role.create(character_name: "Bob")
larry = Role.create(character_name: "Larry")
cindy = Role.create(character_name: "Cindy")

jackie = Audition.create(actor: "Jackie", location: "PI", phone: 5555555, hired: false, role_id: :role_id)
bobby = Audition.create(actor: "Bobby", location: "TX", phone: 5555554, hired: false, role_id: :role_id)
james = Audition.create(actor: "James", location: "NY", phone: 5555553, hired: true, role_id: :role_id)
john = Audition.create(actor: "John", location: "NY", phone: 5555552, hired: true, role_id: :role_id)
amy = Audition.create(actor: "Amy", location: "NY", phone: 5555551, hired: false, role_id: :role_id)
daniel = Audition.create(actor: "Daniel", location: "CA", phone: 5555556, hired: true, role_id: :role_id)
emelia = Audition.create(actor: "Emelia", location: "HI", phone: 5555557, hired: false, role_id: :role_id)
Chad = Audition.create(actor: "Chad", location: "GA", phone: 5555558, hired: false, role_id: :role_id)
Steve = Audition.create(actor: "Steve", location: "PI", phone: 5555559, hired: false, role_id: :role_id)
Paul = Audition.create(actor: "Paul", location: "PA", phone: 5555510, hired: false, role_id: :role_id)


puts "seeding complete"
