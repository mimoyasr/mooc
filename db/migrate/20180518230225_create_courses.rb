class CreateCourses < ActiveRecord::Migration[5.1]
  def change
    create_table :courses do |t|
      t.string :title, unique: true
      t.text :desc

      t.timestamps
    end
  end
end
