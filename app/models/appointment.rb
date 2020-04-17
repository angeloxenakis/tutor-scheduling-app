class Appointment < ApplicationRecord
    belongs_to :student
    belongs_to :tutor
    belongs_to :subject
    belongs_to :location

    validate(:check_tutor, :check_time, :check_date, :check_time)
    
    def check_tutor
        if !(self.location.name == self.tutor.location.name)
            self.errors.add(:tutors, 'Please choose a tutor that belongs to the selected location.')    
        end
    end

    def check_subject
        if !(self.tutor.subjects.include?(self.subject))
            self.errors.add(:tutors, 'Please choose a subject that the selected tutor specializes in.')    
        end
    end

    def check_date
        if (self.date == nil)
            self.errors.add(:date, 'Please specify a date for your appointment.')    
        end
    end

    def check_time
        if (self.time == nil)
            self.errors.add(:time, 'Please specify a time for your appointment.')    
        end
    end
end