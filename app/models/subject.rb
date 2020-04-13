class Subject < ApplicationRecord
    has_many :tutor_sujects
    has_many :tutors, through: :tutor_sujects
end