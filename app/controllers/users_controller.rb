class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @code_lessons = CodeLesson.all.group_by(&:category)
    @completed_code_lessons = @user.code_lessons
    @next_code_lesson = CodeLesson.find(@completed_code_lessons.pluck(:global_level).max + 1)
  end


end
