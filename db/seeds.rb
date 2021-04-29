# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

User.delete_all
CaseStudy.delete_all
EventFeedback.delete_all
Event.delete_all
Club.delete_all
Volunteer.delete_all
ClubInfo.delete_all
MeetingType.delete_all


Club.where(name: 'admin').first_or_create(id:'1')

Club.where(name: '393 Club').first_or_create(id: '2', postcode: 'S6 2LJ', contactnumber: '07561827309', paymentduedate: '2021/10/12')
Club.where(name: 'Affinity Youth Club').first_or_create(id: '3', postcode: 'S6 4EG', contactnumber: '07928395786', paymentduedate: '2021/05/09')
Club.where(name: 'Barnsley Y.M.C.A').first_or_create(id: '4', postcode: 'S70 1AP', contactnumber: '07671839489', paymentduedate: '2021/12/20')
Club.where(name: 'Hickleton Youth Project GR8 M8’s').first_or_create(id: '5', postcode: 'S63 0BL', contactnumber: '07514627487', paymentduedate: '2022/01/22')

User.where(email:'admin@admin.co.uk').first_or_create(password:'Admin1', password_confirmation: 'Admin1', club_id: '1', manager: true)

User.where(email:'393club@test.co.uk').first_or_create(password:'393Club', password_confirmation: '393Club', club_id: '2', manager: false)
User.where(email:'affinity@test.co.uk').first_or_create(password:'Affinity1', password_confirmation: 'Affinity1', club_id: '3', manager: false)
User.where(email:'barnsley@test.co.uk').first_or_create(password:'Ymca1', password_confirmation: 'Ymca1', club_id: '4', manager: false)
User.where(email:'hickletonyouth@test.co.uk').first_or_create(password:'Hickleton1', password_confirmation: 'Hickleton1', club_id: '5', manager: false)


Volunteer.where(name: "Josh").first_or_create(contactnumber: '07264893487', email: 'josh@email.com', hours: '4', target: '100', youngPerson: true)
Volunteer.where(name: "Ellie").first_or_create(contactnumber: '07125648376', email: 'ellie@email.com', hours: '32', target: '20', youngPerson: false)
Volunteer.where(name: "Adam").first_or_create(contactnumber: '07898562736', email: 'adam@email.com', hours: '0', target: '10', youngPerson: false)

Event.where(name: "Bike Ride1").first_or_create(club_id: "5", date: DateTime.new(2021,4,12,8), end_time: DateTime.new(2021,4,14,8), comment: "Bring your own bike")
Event.where(name: "Walk").first_or_create(club_id: "3", date: DateTime.new(2021,3,12,8), end_time: DateTime.new(2021,3,14,8), comment: "A 4 mile walk")
Event.where(name: "Swimming Trip").first_or_create(club_id: "4", date: DateTime.new(2021,2,12,8), end_time: DateTime.new(2021,2,14,8), comment: "A trip to a local swimming pool")


EventFeedback.where(id: '1').first_or_create(comment: "Was an amazing event. Well organised", event_id: '1')
EventFeedback.where(id: '2').first_or_create(comment: "Very fun", event_id: '1')

CaseStudy.where(id: "1").first_or_create(participant: "Molly", date: "2021/03/02", comment: "Very well behaved", club_id: "2")
CaseStudy.where(id: "2").first_or_create(participant: "Ben", date: "2021/01/20", comment: "Organised a game", club_id: "2")
CaseStudy.where(id: "3").first_or_create(participant: "Chris", date: "2021/02/16", comment: "Tried very hard, put in 110%", club_id: "4")



