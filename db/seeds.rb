# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

User.where(email:
'bgsyc@sheffield.ac.uk').first_or_create(password:
'southyork', password_confirmation: 'southyork', club_id: '1')
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
