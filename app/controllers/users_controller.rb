class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @code_lessons = CodeLesson.all.group_by(&:category)
    @completed_code_lessons = @user.code_lessons # []
    if @user.code_lessons.empty?
      @next_code_lesson = CodeLesson.all.first
    else
      @next_code_lesson = CodeLesson.find_by(global_level: @completed_code_lessons.pluck(:global_level).max + 1)
    end
    @music_lessons = MusicLesson.all.group_by(&:category)
  end


end
