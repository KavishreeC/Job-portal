class JobApplicationsController < ApplicationController
  def index
    @applicants = JobApplication.all
    authorize JobApplication
  end
end
