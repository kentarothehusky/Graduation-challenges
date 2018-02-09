class AddColumnToContribution < ActiveRecord::Migration[5.1]
  def change
    add_column :contributions, :data, :text
  end
end
