# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

#Clearing all the database tables so the seed starts from clean
MeetingType.delete_all
ClubInfo.delete_all
User.delete_all
CaseStudy.delete_all
EventFeedback.delete_all
Event.delete_all
Volunteer.delete_all
Club.delete_all
Donation.delete_all
Donor.delete_all
AdminEvent.delete_all


#Populating database
Club.where(name: 'admin').first_or_create(id:'1')

Club.where(name: '393 Club').first_or_create(id: '2', postcode: 'S6 2LJ', contactnumber: '07561827309', paymentduedate: '2021/10/12')
Club.where(name: 'Affinity Youth Club').first_or_create(id: '3', postcode: 'S6 4EG', contactnumber: '07928395786', paymentduedate: '2021/05/09')
Club.where(name: 'Barnsley Y.M.C.A').first_or_create(id: '4', postcode: 'S70 1AP', contactnumber: '07671839489', paymentduedate: '2021/12/20')
Club.where(name: 'Hickleton Youth Project GR8 M8’s').first_or_create(id: '5', postcode: 'S63 0BL', contactnumber: '07514627487', paymentduedate: '2022/01/22')

User.where(email:'admin@admin.co.uk').first_or_create(password:'Admin1#', password_confirmation: 'Admin1#', club_id: '1', manager: true)

User.where(email:'393club@test.co.uk').first_or_create(password:'393Club#', password_confirmation: '393Club#', club_id: '2', manager: false)
User.where(email:'affinity@test.co.uk').first_or_create(password:'Affinity1#', password_confirmation: 'Affinity1#', club_id: '3', manager: false)
User.where(email:'barnsley@test.co.uk').first_or_create(password:'Ymca1#', password_confirmation: 'Ymca1#', club_id: '4', manager: false)
User.where(email:'hickletonyouth@test.co.uk').first_or_create(password:'Hickleton1#', password_confirmation: 'Hickleton1#', club_id: '5', manager: false)


Volunteer.where(name: "Josh").first_or_create(contactnumber: '07264893487', email: 'josh@email.com', hours: '4', target: '100', youngPerson: true)
Volunteer.where(name: "Ellie").first_or_create(contactnumber: '07125648376', email: 'ellie@email.com', hours: '32', target: '20', youngPerson: false)
Volunteer.where(name: "Adam").first_or_create(contactnumber: '07898562736', email: 'adam@email.com', hours: '0', target: '10', youngPerson: false)

Event.where(name: "Bike Ride1").first_or_create(club_id: "5", date: DateTime.new(2021,4,12,8), end_time: DateTime.new(2021,4,14,8), comment: "Bring your own bike")
Event.where(name: "Walk").first_or_create(club_id: "3", date: DateTime.new(2021,3,12,8), end_time: DateTime.new(2021,3,14,8), comment: "A 4 mile walk")
Event.where(name: "Swimming Trip").first_or_create(club_id: "4", date: DateTime.new(2021,2,12,8), end_time: DateTime.new(2021,2,14,8), comment: "A trip to a local swimming pool")
Event.where(name: "Event 7").first_or_create(club_id: "1", date: DateTime.new(2021,2,12,8), end_time: DateTime.new(2021,2,16,8), comment: "Event 7 Comment", spaces_left: '8', all_groups: true)

EventFeedback.where(id: '1').first_or_create(comment: "Was an amazing event. Well organised", event_id: '1')
EventFeedback.where(id: '2').first_or_create(comment: "Very fun", event_id: '1')

CaseStudy.where(id: "1").first_or_create(participant: "Molly", date: "2021/03/02", comment: "Very well behaved", club_id: "2")
CaseStudy.where(id: "2").first_or_create(participant: "Ben", date: "2021/01/20", comment: "Organised a game", club_id: "2")
CaseStudy.where(id: "3").first_or_create(participant: "Chris", date: "2021/02/16", comment: "Tried very hard, put in 110%", club_id: "4")


ClubInfo.where(id: "1").first_or_create(date: "2020/10/16", club_id: "2", males: "20", females: "15",
                                        upperage: "35", lowerage: "0", depravation: "0", drugsandabs: "0",
                                        ethnicity: "0", mentalhealth: "4", neets: "2", disability: "0",
                                        volnum: "7", volhours: "120", volachievetraining: "1")

ClubInfo.where(id: "2").first_or_create(date: "2020/11/21", club_id: "3", males: "4", females: "20",
                                        upperage: "12", lowerage: "12", depravation: "0", drugsandabs: "0",
                                        ethnicity: "3", mentalhealth: "0", neets: "0", disability: "0",
                                        volnum: "12", volhours: "62", volachievetraining: "2")

ClubInfo.where(id: "3").first_or_create(date: "2020/05/01", club_id: "4", males: "10", females: "30",
                                        upperage: "25", lowerage: "15", depravation: "3", drugsandabs: "2",
                                        ethnicity: "12", mentalhealth: "4", neets: "9", disability: "0",
                                        volnum: "2", volhours: "33", volachievetraining: "0")


                                         

MeetingType.where(id: "1").first_or_create(club_info_id: "1", day: "Monday", sessiontype: "Boys Only", time: "16:00")
MeetingType.where(id: "2").first_or_create(club_info_id: "1", day: "Tuesday", sessiontype: "Girls Only", time: "20:30")
MeetingType.where(id: "3").first_or_create(club_info_id: "1", day: "Friday", sessiontype: "13 to 18 Years", time: "17:00")

MeetingType.where(id: "4").first_or_create(club_info_id: "2", day: "Wednesday", sessiontype: "Boxing Drills", time: "18:30")
MeetingType.where(id: "5").first_or_create(club_info_id: "2", day: "Saturday", sessiontype: "Cardio", time: "18:30")

MeetingType.where(id: "6").first_or_create(club_info_id: "3", day: "Friday", sessiontype: "8 to 13 Years", time: "15:30")
MeetingType.where(id: "7").first_or_create(club_info_id: "3", day: "Friday", sessiontype: "Games", time: "18:00")


Donor.where(id: "1").first_or_create(contactnumber: "07437465782", email: "amy@gmail.com", name: "Amy", totaldonation: "0")
Donor.where(id: "2").first_or_create(contactnumber: "07592084598", email: "joe@talktalk.net", name: "Joe", totaldonation: "0")
Donor.where(id: "3").first_or_create(contactnumber: "07329322764", email: "amanda@googlemail.com", name: "Amanda", totaldonation: "0")

Donation.new.submitDonation("1", 20, "Monthly", "None", "2021/04/29")
Donation.new.submitDonation("2", 10, "One Off", "393 Club", "2021/04/29")
