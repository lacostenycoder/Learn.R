class CreateJoinTableMusicLessonUser < ActiveRecord::Migration
  def change
    create_join_table :music_lessons, :users do |t|
      t.index [:music_lesson_id, :user_id]
      t.index [:user_id, :music_lesson_id]
    end
  end
end
