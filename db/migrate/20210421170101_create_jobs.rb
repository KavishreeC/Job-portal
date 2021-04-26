class CreateJobs < ActiveRecord::Migration[6.1]
  def change
    create_table :jobs do |t|
      t.string :name
      t.string :desc
      t.string :position
      t.integer :count

      t.timestamps
    end
  end
end
