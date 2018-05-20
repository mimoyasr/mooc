class UpdateUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string, after: :email
    add_column :users, :dob, :date, after: :name
    add_column :users, :gender, :integer, after: :dob
    add_column :users, :profile, :string, after: :gender
  end
end
