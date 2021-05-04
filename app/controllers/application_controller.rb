class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  # attr_reader :current_user
  
  def after_sign_in_path
    if current_user.role == 'jobseeker' 
      jobseeker_path
    elsif current_user.role == 'recruiters'
      jobs_path
    end 
  end

  private
  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    if current_user.role == 'jobseeker' 
      redirect_to  jobseeker_path
    elsif current_user.role == 'recruiters'
      redirect_to  jobs_path
    end
  end
end
