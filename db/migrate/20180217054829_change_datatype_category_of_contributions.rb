class ChangeDatatypeCategoryOfContributions < ActiveRecord::Migration[5.1]
  def change
    # [形式] change_column(テーブル名, カラム名, データタイプ, オプション)
    change_column :contributions, :category, 'integer USING CAST(category AS integer)'
  end
end
