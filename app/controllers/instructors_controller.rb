class InstructorsController < ApplicationController
  before_filter :find_instructor, only: [:list_app, :show, :edit, :update, :destroy]

  def new
    @instructor = Instructor.new
  end

  def create
    @instructor = Instructor.create(params[:instructor])
    if @instructor.save
      redirect_to '/', notice: "Instructor created."
    else
      render action: "new", notice: "Instructor was not created."
    end
  end

  def list_app

  end

  private
    def find_instructor
      @instructor = Instructor.find(params[:id])
    end
end
