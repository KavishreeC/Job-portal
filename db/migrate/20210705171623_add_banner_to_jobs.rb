# frozen_string_literal: true

class AddBannerToJobs < ActiveRecord::Migration[6.1]
  def change
    add_column :jobs, :banner, :string
  end
end
