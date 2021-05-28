class JobApplicationsController < ApplicationController
  def index
    @applicants = JobApplication.order(:email).page(params[:page])
    authorize JobApplication
  end
end
