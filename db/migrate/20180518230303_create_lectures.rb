class CreateLectures < ActiveRecord::Migration[5.1]
  def change
    create_table :lectures do |t|
      t.string :title, unique: true
      t.text :content
      t.string :file
      t.integer :course_id

      t.timestamps
    end
  end
end
