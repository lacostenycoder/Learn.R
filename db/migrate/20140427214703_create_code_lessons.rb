class CreateCodeLessons < ActiveRecord::Migration
  def change
    create_table :code_lessons do |t|
      t.integer :points
      t.integer :level
      t.string :img
      t.text :map_code
      t.text :lesson_text
      t.text :question_text
      t.integer :start_row
      t.integer :start_col
      t.integer :solution_row
      t.integer :solution_col
      t.string :category
      t.string :title
      t.integer :global_level
    end
  end
end
