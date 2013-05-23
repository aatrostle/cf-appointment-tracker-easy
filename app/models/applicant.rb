class Applicant < ActiveRecord::Base
  attr_accessible :name, :id

  has_many :appointments
  has_many :instructors, :through => :appointments
end
