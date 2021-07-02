# frozen_string_literal: true

class AddEmailToJobApplications < ActiveRecord::Migration[6.1]
  def change
    add_column :job_applications, :email, :string
  end
end
