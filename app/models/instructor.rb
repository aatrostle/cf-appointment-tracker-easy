class Instructor < ActiveRecord::Base
  attr_accessible :name, :id

  has_many :appointments
  has_many :applicants, :through => :appointments
end
