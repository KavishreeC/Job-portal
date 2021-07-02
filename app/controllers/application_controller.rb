# frozen_string_literal: true

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :set_locale
  include Pundit
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  # attr_reader :current_user

  def after_sign_in_path
    case current_user.role
    when 'jobseeker'
      jobseeker_path
    when 'recruiters'
      jobs_path
    end
  end

  private

  def user_not_authorized
    flash[:alert] = 'You are not authorized to perform this action.'
    case current_user.role
    when 'jobseeker'
      redirect_to  jobseeker_path
    when 'recruiters'
      redirect_to  jobs_path
    end
  end

  def set_locale
    I18n.locale = extract_locale || I18n.default_locale
  end

  def extract_locale
    parsed_locale = params[:locale]
    I18n.available_locales.map(&:to_s).include?(parsed_locale) ? parsed_locale : nil
  end

  def default_url_options
    { locale: I18n.locale }
  end
end
