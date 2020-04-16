class Appointment < ApplicationRecord
    belongs_to :student
    belongs_to :tutor
    belongs_to :subject
    belongs_to :location

    validate(:check_tutor)
    
    def check_tutor
        if !(self.location.name == self.tutor.location.name)
            self.errors.add(:tutors, 'Please choose a tutor that belongs to the selected location')    
        end
    end

    # def check_subject
    #     if (!self.tutor.subjects.include?(self.subject))
    #         self.errors.add(:subjects, 'Please choose a subject that belongs to the selected tutor')
    #      end
    # end
end