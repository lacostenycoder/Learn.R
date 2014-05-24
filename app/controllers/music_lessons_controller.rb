class MusicLessonsController < ApplicationController

  before_action :authenticate_user!, only: [:show]
  before_action :require_admin_authentication, only: [:index, :new, :create, :edit, :update, :destroy]

  def index
    @music_lessons = MusicLesson.all
  end

  def show
    @lesson = MusicLesson.find(params[:id])
    # check to make sure user is up to this level
    user_max_music_lesson_global_level = current_user.music_lessons.pluck(:global_level).max || 0
    if @lesson.global_level > user_max_music_lesson_global_level + 1
      redirect_to root_path unless current_user.admin
    end
     respond_to do |format|
      format.html { }
      format.js   { }
      format.json { render json: @lesson.to_json }
    end
  end

  def new
    @music_lesson = MusicLesson.new
  end


  def create
    @music_lesson = MusicLesson.create(music_lesson_params)
    redirect_to @music_lesson
  end

  def edit
    @music_lesson = MusicLesson.find(params[:id])
  end

  def update
    @music_lesson = MusicLesson.find(params[:id])
    @music_lesson.update(music_lesson_params)
    redirect_to @music_lesson
  end

  def destroy
    @music_lesson = MusicLesson.find(params[:id])
    @music_lesson.destroy
    redirect_to root_path
  end


    def update_win
    lesson = MusicLesson.find(params[:id])
    unless current_user.music_lessons.include?(lesson)
      current_user.music_lessons << lesson
      current_user.score += lesson.points
      current_user.save
    end
    next_lesson = MusicLesson.find_by(global_level: lesson.global_level + 1)
    @next_lesson_id = next_lesson.nil? ? -1 : next_lesson.id
  end


  private

    def music_lesson_params
      params.require(:music_lesson).permit(:points, :level, :img, :lesson_text, :question_text, :solution_key_pattern, :category, :title, :global_level)
    end

end
