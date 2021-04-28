# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

#User.create(email:
#'bgsyc@sheffield.ac.uk', password:
#'southyork', password_confirmation: 'southyork', club_id: '1', manager: true)
#Club.where(name: 'test club')
User.delete_all
Club.delete_all
Volunteer.delete_all
CaseStudy.delete_all
ClubInfo.delete_all
MeetingType.delete_all


Club.where(name: 'admin').first_or_create(id:'1')

Club.where(name: '393 Club').first_or_create(id: '2', postcode: 'S6 2LJ', contactnumber: '07561827309', paymentduedate: '2021/10/12')
Club.where(name: 'Affinity Youth Club').first_or_create(id: '3', postcode: 'S6 4EG', contactnumber: '07928395786', paymentduedate: '2021/05/09')
Club.where(name: 'Barnsley Y.M.C.A').first_or_create(id: '4', postcode: 'S70 1AP', contactnumber: '07671839489', paymentduedate: '2021/12/20')
Club.where(name: 'Hickleton Youth Project GR8 M8’s').first_or_create(id: '5', postcode: 'S63 0BL', contactnumber: '07514627487', paymentduedate: '2022/01/22')

User.where(email:'admin@admin.co.uk').first_or_create(password:'admin', password_confirmation: 'admin', club_id: '1', manager: true)

User.where(email:'393club@club.co.uk').first_or_create(password:'393club', password_confirmation: '393club', club_id: '2', manager: false)
User.where(email:'affinity@club.co.uk').first_or_create(password:'affinity', password_confirmation: 'affinity', club_id: '3', manager: false)
User.where(email:'barnsley@ymca.co.uk').first_or_create(password:'ymca', password_confirmation: 'ymca', club_id: '4', manager: false)
User.where(email:'hickletonyouth@club.co.uk').first_or_create(password:'hickleton', password_confirmation: 'hickleton', club_id: '5', manager: false)


Volunteer.where(name: "Josh").first_or_create(contactnumber: '07264893487', email: 'josh@email.com', hours: '4', target: '100', youngPerson: true)
Volunteer.where(name: "Ellie").first_or_create(contactnumber: '07125648376', email: 'ellie@email.com', hours: '32', target: '20', youngPerson: false)
Volunteer.where(name: "Adam").first_or_create(contactnumber: '07898562736', email: 'adam@email.com', hours: '0', target: '10', youngPerson: false)


#User.where(email:
#'bgsyc@sheffield.ac.uk').first_or_create(password:
#'southyork', password_confirmation: 'southyork', club_id: '1', manager: true)

#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

