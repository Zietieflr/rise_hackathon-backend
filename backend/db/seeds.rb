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

150.times do
  Signee.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, address: Faker::Address.zip_code)
end 

petitions = []
petitions << Petition.create(name: 'More Library Funding', description: 'Updating the library inventory to have a greater selection of up-to-date technology books for young minds to be exposed to.', submit_to: 'Governer Polis', signature_goal: 10000)
petitions << Petition.create(name: 'Public Makerspace', description: 'A makerspace focused on giving those who cannot afford the memberships at current spaces. Everyone deserves to learn about what can be made with the correct tools.', submit_to: 'Senator Gardner', signature_goal: 3000)
petitions << Petition.create(name: 'Defund Police', description: 'The overtly aggressive action of our current protectors has done us little good. This needs to be fixed and this is the simplest solution.', submit_to: 'Rep. Chris Kennedy', signature_goal: 15000)
petitions << Petition.create(name: 'Protestor Defense Fund', description: 'Even the most peaceful of protests have been met with violence, and cannot afford the treatment for excercising their rights.', submit_to: 'Rep. Sonya Jaquez Lewis', signature_goal: 500)
petitions << Petition.create(name: 'End Bail', description: 'Bail has become a game of the rich, and is only keeping those with the least ability to flee locked behind bars. This only puts them at greater disadvantage.', submit_to: 'Rep. Monica Derand', signature_goal: 3000)
petitions << Petition.create(name: 'COVID-19 Research', description: 'Little is known about how this disease works, we need to do more to be able to see a future without constant fear.', submit_to: 'Rep. Stephen Humphrey', signature_goal: 4000)
petitions << Petition.create(name: 'Remote Learning for Public Schools Funding', description: 'As one of the primary and most essential of all gathering places, schools need to continue to teach. However, there is a MASSIVE disparity in families and schools to be able to make this effective.', submit_to: 'Rep. Susan Lontine', signature_goal: 20000)
petitions << Petition.create(name: 'Aid for Local Businesses', description: 'The federal government aid did little to help the smallest businesses make it through these difficult times. As such we need to take that action locally.', submit_to: 'Rep. Janice Rich', signature_goal: 750)
petitions << Petition.create(name: 'First Responder Protection', description: 'With the sudden surge in demand, first responders and other medical workers were left without the necessary protective equipment to properly do their jobs. This needs to have a solution.', submit_to: 'Rep. Emily Sirota', signature_goal: 950)

Signee.all.each do |signee|
  petition_index = rand(petitions.length)
  Signature.create(petition: petitions[petition_index], signee: signee)
end
