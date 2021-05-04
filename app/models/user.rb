class User < ApplicationRecord
  enum role: [:recruiters , :jobseeker]

  after_initialize :set_default_role, :if => :new_record?
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
         has_many :job_applications
         has_many :jobs, through: :job_applications
  
         def set_default_role
          self.role ||= :jobseeker
        end
end
