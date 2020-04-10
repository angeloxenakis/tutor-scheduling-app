# README

# Tutor Scheduling App

This is an app in which a student can schedule a tutoring session with a tutor based on subject and campus. The student view their campuses, subjects, and tutors. A tutor can view their students subjects and campuses as well.

# Models

* Tutor
* Student
* Appointment
* Subject
* Campus

# Relationships

# Tutor -< Appointment >- Student

* Tutor has many Appointments
* Tutor has many Students through Appointments
* Tutor has many Subjects
* Tutor belongs to one Campus

* Student has many Appointments
* Student has many Tutors through Appointments
* Student has many Subjects through Tutors (trough Appointments)
* Student has many Campuses through Tutors (trough Appointments)

* Campus has many Tutors
* Campus has many Students through Tutors
* Campus has many Subjects through Tutors
* Campus has many Appointments through Tutors

* Appointment belongs to a Student
* Appointment belongs to a Tutor

# User Stories

## Tutor
* Tutor can see their "details"
    * Tutor can see all of their appointments 
    * Tutor can see all of the students that have appointments with
    * Tutor can click on student and see student details (includes students appointments, subjects, etc...)
    * Tutor can see what campus they work at
* Admin can create a tutor
* Admin can edit/update a tutor

# Student
* Student can sign up (create a new instance of a student)
* Student can edit/update their info
* Student can see a list of campuses and select one
* Once in a campus, student can see a list of tutors and their subjects
* Student can select a tutor and create an appointment
* Student can view all of their appointments

## Stretch Goals
* Create a new campus
* Create a new subject
* Student can edit/update and appointment
* Student can view a list of their subjects
* Tutor can see a list of subjects they tutor
































Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# tutor-scheduling-app
