Location.destroy_all
Tutor.destroy_all
Student.destroy_all
Subject.destroy_all
TutorSubject.destroy_all
Appointment.destroy_all

# Locations
central = Location.create({name: "Central", address: Faker::Address.street_address})
north = Location.create({name: "North", address: Faker::Address.street_address})
south = Location.create({name: "South", address: Faker::Address.street_address})

# Tutors
Tutor.create({name: Faker::Name.name, location_id: Location.all.sample.id, username: "josh", password: "josh@tutor"})
Tutor.create({name: Faker::Name.name, location_id: Location.all.sample.id, username: "steven", password: "steven@tutor"})
12.times { Tutor.create({name: Faker::Name.name, location_id: Location.all.sample.id, username: Faker::Name.first_name, password: "tutor123"}) }

# Students
ruth = Student.create({name: "Ruth Obe", username: "ruth1", password: "ruth@student"})
angelo = Student.create({name: "Angelo Xenakis", username: "angelo", password: "angelo@student"})
30.times { Student.create({name: Faker::Name.name, username: Faker::Name.first_name, password: "student123"}) }

# Subjects
math = Subject.create({name: "Math"})
science = Subject.create({name: "Science"})
english = Subject.create({name: "English"})
history = Subject.create({name: "History"})
business = Subject.create({name: "Business"})
computer_science = Subject.create({name: "Computer Science"})

