# frozen_string_literal: true

class Job < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged

  has_many :job_applications
  has_many :users, through: :job_applications
  paginates_per 4
  validates :name, presence: true
  # validates :desc,presence: true
  validates :count, presence: true
  validates :position, presence: true

  
  def has_applied?(user, job_id)
    @user = user.id
    @job = job_id
    errors.add(:user_id, 'you have already applied') if JobApplication.where(user_id: @user, job_id: @job).any?
  end
end
