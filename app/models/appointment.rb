class Appointment < ApplicationRecord
    belongs_to :student
    belongs_to :tutor
    belongs_to :subject
    belongs_to :location

    validate do
        if(self.student_id == nil )
            self.errors.add(:student_id, 'must be provided')
        end
    end
end