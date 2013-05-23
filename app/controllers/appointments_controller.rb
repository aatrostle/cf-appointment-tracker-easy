class AppointmentsController < ApplicationController
  before_filter :find_appointment, only: [:show, :edit, :update, :destroy]

  def index
    @appointments = Appointment.all
  end

  def new
    @appointment = Appointment.new

  end

  # def edit
  # end

  def create
    @appointment = Appointment.new(params[:appointment])
    if @appointment.save
      redirect_to '/', notice: "Appointment has been scheduled."
    else
      render action: "new", alert: "Appointment was not scheduled!"
    end
  end

  def update
    if @appointment.update_attributes(params[:appointment])
      redirect_to '/', notice: "Appointment updated!"
    else
      render action: "edit", alert: "Appointment was not updated."
    end
  end

  def destroy
    @appointment.destroy
    redirect_to '/', notice: "Appointment cancelled!"
  end

  private

  def find_appointment
    @appointment = Appointment.find(params[:id])
  end
end
