class AddUserIdToContribution < ActiveRecord::Migration[5.1]
  def change
    add_column :contributions, :user_id, :integer
  end
end
