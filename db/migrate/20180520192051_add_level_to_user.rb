class AddLevelToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :level, :integer, default: 2
  end
end
