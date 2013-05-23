class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :appointment_date
      t.references :instructor, :index => true
      t.references :applicant, :index => true

      t.timestamps
    end
  end
end
