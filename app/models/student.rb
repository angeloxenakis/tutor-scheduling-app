class Student < ApplicationRecord
    has_many :appointments
    has_many :tutors, through: :appointments
    has_many :subjects, through: :appointments
end