# frozen_string_literal: true

class JobMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.job_mailer.new_job.subject
  #
  def new_job
    @apply = JobApplication.last
    mail to: @apply.email, subject: 'Thank you for your application.'
  end
end
