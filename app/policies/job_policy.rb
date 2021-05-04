class JobPolicy < ApplicationPolicy
    attr_reader :current_user, :job
  
    def initialize(current_user, job)
      @job = job
      @current_user = current_user
    end
  
    def index?
        @current_user.recruiters?
    end

    def create?
        @current_user.recruiters?
    end

    def new?
        create?
    end

    def update?
      @current_user.recruiters?
    end

    def edit?
      update?
    end

    def destroy?
      @current_user.recruiters?
    end
    
    def jobseeker?
        @current_user.jobseeker?
    end
end