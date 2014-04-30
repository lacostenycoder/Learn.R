class CodeLessonsController < ApplicationController

  def show
    @lesson = CodeLesson.find(params[:id])
    respond_to do |format|
      format.html { }
      format.js   { }
      format.json { render json: @lesson.to_json }
    end
  end

  def update_win
    lesson = CodeLesson.find(params[:id])
    unless current_user.code_lessons.include?(lesson)
      current_user.code_lessons << lesson
      current_user.score += lesson.points
      current_user.save
    end
    next_lesson = CodeLesson.find_by(global_level: lesson.global_level + 1)
    @next_lesson_id = next_lesson.nil? ? -1 : next_lesson.id
  end

end
