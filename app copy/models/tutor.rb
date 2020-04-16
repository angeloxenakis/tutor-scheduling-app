class Tutor < ApplicationRecord
    belongs_to :location
    has_many :appointments
    has_many :students, through: :appointments
    has_many :tutor_subjects
    has_many :subjects, through: :tutor_subjects

    has_secure_password
    validates :username, presence: true, uniqueness: true
    validates :password, presence: true

    # def subject_ids=(subject_ids)
    #     subject_ids.each do | subject_id |
    #         TutorSubject.create({ subject_id: subject_id, tutor_id: self.id })
    #     end
    # end

end