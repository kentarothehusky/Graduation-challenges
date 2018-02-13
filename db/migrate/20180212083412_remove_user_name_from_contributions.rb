class RemoveUserNameFromContributions < ActiveRecord::Migration[5.1]
  def change
    remove_column :contributions, :user_name, :string
  end
end
