class Job < ApplicationRecord
  has_many :job_applications
  has_many :users, through: :job_applications
  validates :name,presence: true
  # validates :desc,presence: true
  validates :count,presence: true
  validates :position,presence: true

  def has_applied?(user,job_id)
    @user = user.id
    @job = job_id
    if JobApplication.where(user_id: @user, job_id: @job).any?
      errors.add(:user_id, "you have already applied")
    end
  end
  
end
