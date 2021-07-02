# frozen_string_literal: true

class JobApplication < ApplicationRecord
  has_many :job_applications
  has_many :jobs, through: :job_applications
  validates :user_id, presence: true
  validates :job_id, presence: true
  paginates_per 8
  # validate :has_applied?
  after_commit :job_count
  def job_count
    @job = Job.find(job_id)
    @job.count -= 1
    @job.save
    @job.destroy if @job.count.zero?
  end
end
