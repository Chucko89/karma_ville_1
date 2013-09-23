class ChangeColumnNameToKarmaTotal < ActiveRecord::Migration
  def change
    rename_column :users, :total_karma, :karma_total
  end
end
