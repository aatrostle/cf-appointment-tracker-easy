class Appointment < ActiveRecord::Base
  attr_accessible :appointment_date, :applicant_id, :instructor_id

  belongs_to :instructor
  belongs_to :applicant
end
