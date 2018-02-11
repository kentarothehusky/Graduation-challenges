class RenameDataColumnToFile < ActiveRecord::Migration[5.1]
  def change
    rename_column :contributions, :data, :file
  end
end
