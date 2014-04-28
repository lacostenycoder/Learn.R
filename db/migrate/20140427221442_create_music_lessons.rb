class CreateMusicLessons < ActiveRecord::Migration
  def change
    create_table :music_lessons do |t|
      t.integer :points
      t.integer :level
      t.string :img
      t.text :lesson_text
      t.text :question_text
      t.text :solution_key_pattern
      t.string :category
      t.string :title
      t.integer :global_level
    end
  end
end
