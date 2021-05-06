class JobApplicationPolicy < ApplicationPolicy
    attr_reader :current_user, :job_application
  
    def initialize(current_user, job_application)
      @job_application = job_application
      @current_user = current_user
    end
  
    def index?
        @current_user.recruiters?
    end
end