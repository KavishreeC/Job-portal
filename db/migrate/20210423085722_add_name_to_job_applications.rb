class AddNameToJobApplications < ActiveRecord::Migration[6.1]
  def change
    add_column :job_applications, :name, :string
  end
end
