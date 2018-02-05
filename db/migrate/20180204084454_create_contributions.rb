class CreateContributions < ActiveRecord::Migration[5.1]
  def change
    create_table :contributions do |t|
      t.string :title
      t.string :user_name
      t.text :overview
      t.text :category
      t.date :update

      t.timestamps
    end
  end
end
