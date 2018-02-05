class RenameDateColumnToTests < ActiveRecord::Migration[5.1]
  def change
    rename_column :contributions, :update, :modified
  end
end
