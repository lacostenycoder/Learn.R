class UsersController < ApplicationController

   def index
    @users = User.all
   end

  def show
    @user = User.find(params[:id])
    respond_to do |format|
      format.html {}
      format.json { render json: @user.to_json }
    end

    @code_lessons = CodeLesson.all.group_by(&:category)
    @completed_code_lessons = @user.code_lessons
    if @user.code_lessons.empty?
      @next_code_lesson = CodeLesson.find_by(global_level: 1)
    else
      @next_code_lesson = CodeLesson.find_by(global_level: @completed_code_lessons.pluck(:global_level).max + 1)
    end

    @music_lessons = MusicLesson.all.group_by(&:category)
    @completed_music_lessons = @user.music_lessons
    if @user.music_lessons.empty?
      @next_music_lesson = MusicLesson.find_by(global_level: 1)
    else
      @next_music_lesson = MusicLesson.find_by(global_level: @completed_music_lessons.pluck(:global_level).max + 1)
    end
  end


end
