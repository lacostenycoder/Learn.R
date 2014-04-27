class CreateJoinTableCodeLessonUser < ActiveRecord::Migration
  def change
    create_join_table :code_lessons, :users do |t|
      t.index [:code_lesson_id, :user_id]
      t.index [:user_id, :code_lesson_id]
    end
  end
end
