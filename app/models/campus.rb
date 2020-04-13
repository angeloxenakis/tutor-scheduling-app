class Campus < ApplicationRecord
    has_many :tutors
    has_many :appointments, through: :tutors
    has_many :students, through: :appointments
    has_many :subjects, through: :tutors
end