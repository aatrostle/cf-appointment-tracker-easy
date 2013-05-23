class ApplicantsController < ApplicationController
  before_filter :find_applicant, only: [:show, :edit, :update, :destroy]

  def new
    @applicant = Applicant.new
  end

  def create
    @applicant = Applicant.create(params[:applicant])
    if @applicant.save
      redirect_to '/', notice: "Applicant created."
    else
      render action: "new", alert: "Applicant was not created."
    end
  end

  private
    def find_applicant
      @applicant = Applicant.find(params[:id])
    end
end
