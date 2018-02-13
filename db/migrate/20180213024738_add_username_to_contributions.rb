class AddUsernameToContributions < ActiveRecord::Migration[5.1]
  def change
    add_column :contributions, :user_name, :string
  end
end
