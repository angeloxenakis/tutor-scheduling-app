# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Location.destroy_all
Tutor.destroy_all
Student.destroy_all
Subject.destroy_all
TutorSubject.destroy_all


# Location
central = Location.create({name: "Central", address: Faker::Address.street_address})
north = Location.create({name: "North", address: Faker::Address.street_address})
south = Location.create({name: "South", address: Faker::Address.street_address})

# Tutors
t1 = Tutor.create({name: Faker::Name.name, location_id: central.id})
t2 = Tutor.create({name: Faker::Name.name, location_id: central.id})
t3 = Tutor.create({name: Faker::Name.name, location_id: central.id})
t4 = Tutor.create({name: Faker::Name.name, location_id: central.id})
t5 = Tutor.create({name: Faker::Name.name, location_id: north.id})
t6 = Tutor.create({name: Faker::Name.name, location_id: north.id})
t7 = Tutor.create({name: Faker::Name.name, location_id: south.id})
t8 = Tutor.create({name: Faker::Name.name, location_id: south.id})

# Students
s1 = Student.create({name: Faker::Name.name})
s2 = Student.create({name: Faker::Name.name})
s3 = Student.create({name: Faker::Name.name})
s4 = Student.create({name: Faker::Name.name})
s5 = Student.create({name: Faker::Name.name})
s6 = Student.create({name: Faker::Name.name})

# Subject
math = Subject.create({name: "math"})
science = Subject.create({name: "science"})
english = Subject.create({name: "english"})
history = Subject.create({name: "history"})

# Tutor Subjects
TutorSubject.create({tutor_id: t1.id, subject_id: math.id})
TutorSubject.create({tutor_id: t1.id, subject_id: science.id})
TutorSubject.create({tutor_id: t2.id, subject_id: english.id})
TutorSubject.create({tutor_id: t2.id, subject_id: history.id})
TutorSubject.create({tutor_id: t3.id, subject_id: science.id})
TutorSubject.create({tutor_id: t3.id, subject_id: history.id})
TutorSubject.create({tutor_id: t4.id, subject_id: english.id})
TutorSubject.create({tutor_id: t4.id, subject_id: math.id})
TutorSubject.create({tutor_id: t5.id, subject_id: math.id})
TutorSubject.create({tutor_id: t6.id, subject_id: science.id})
TutorSubject.create({tutor_id: t7.id, subject_id: history.id})
TutorSubject.create({tutor_id: t8.id, subject_id: english.id})
