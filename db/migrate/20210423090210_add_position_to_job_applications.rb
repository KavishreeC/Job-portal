class AddPositionToJobApplications < ActiveRecord::Migration[6.1]
  def change
    add_column :job_applications, :Position, :string
  end
end
