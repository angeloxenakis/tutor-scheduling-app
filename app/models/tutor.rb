class Tutor < ApplicationRecord
    has_many :appointments
    has_many :students, through: :appointments
    has_many :tutor_subjects
    has_many :subjects, through: :tutor_subjects
    belongs_to :campus
end