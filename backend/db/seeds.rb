# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Signature.destroy_all
Signee.destroy_all
Petition.destroy_all

# jason = Signee.create(first_name: 'Jason', last_name: 'Nordheim', address: '80562')
# james = Signee.create(first_name: 'James', last_name: 'Giosmas', address: '80390')
# lynn = Signee.create(first_name: 'Lynn', last_name: 'Amsbury', address: '80221')
# logan = Signee.create(first_name: 'Logan', last_name: 'McGuire', address: '80229')

# p1 = Petition.create(name: 'MORE CATS', description: 'NEED MORE CATS', submit_to: '*', signature_goal: 50000)
# p2 = Petition.create(name: 'Better weather', description: 'Current weather is crummy. Plz fix.', submit_to: 'A higher power', signature_goal: 1)
# p3 = Petition.create(name: 'Need lunch', description: 'Please send food', submit_to: 'Generous soul', signature_goal: 30)

# Signature.create(petition: p1, signee: lynn)
# Signature.create(petition: p2, signee: lynn)
# Signature.create(petition: p3, signee: lynn)
# Signature.create(petition: p2, signee: james)
# Signature.create(petition: p3, signee: logan)
# Signature.create(petition: p1, signee: logan)
# Signature.create(petition: p1, signee: jason)
# Signature.create(petition: p1, signee: james)

20.times do
  Signee.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end 
