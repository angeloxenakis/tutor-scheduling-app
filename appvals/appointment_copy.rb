class Appointment < ApplicationRecord
    belongs_to :student
    belongs_to :tutor
    belongs_to :subject
    belongs_to :location
end