class Student < ApplicationRecord
    has_many :appointments
    has_many :tutors, through: :appointments
    has_many :subjects, through: :appointments

    has_secure_password
    validates :username, presence: true, uniqueness: true
    validates :password, presence: true
end