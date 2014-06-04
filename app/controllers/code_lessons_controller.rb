class CodeLessonsController < ApplicationController

  before_action :require_admin_authentication, only: [:index, :new, :create, :edit, :update, :destroy]

  def index
    @code_lessons = CodeLesson.all
  end

  def show
    @lesson = CodeLesson.find(params[:id])
    if user_signed_in?
      # check to make sure user is up to this level
      user_max_code_lesson_global_level = current_user.code_lessons.pluck(:global_level).max || 0
      if @lesson.global_level > (user_max_code_lesson_global_level + 1)
        redirect_to root_path unless current_user.admin
      end
    else
      # To allow non-logged in users to play 1 level before signing up
      if @lesson.global_level > 1
        flash[:quick_start] = 'Please sign up to continue playing'
        redirect_to root_path
      end
    end
    respond_to do |format|
      format.html { }
      format.js   { }
      format.json { render json: @lesson.to_json }
    end
  end

  def new
    @code_lesson = CodeLesson.new
  end

  def create
    @code_lesson = CodeLesson.create(code_lesson_params)
    redirect_to @code_lesson
  end

  def edit
    @code_lesson = CodeLesson.find(params[:id])
  end

  def update
    @code_lesson = CodeLesson.find(params[:id])
    @code_lesson.update(code_lesson_params)
    redirect_to @code_lesson
  end

  def destroy
    @code_lesson = CodeLesson.find(params[:id])
    @code_lesson.destroy
    redirect_to root_path
  end

  def update_win
    lesson = CodeLesson.find(params[:id])
    if user_signed_in?
      unless current_user.code_lessons.include?(lesson)
        current_user.code_lessons << lesson
        current_user.score += lesson.points
        current_user.save
      end
      @redirect_page = 'false'
    else
      flash[:quick_start] = 'Nice Job! Please sign up to continue playing'
      @redirect_page = 'true'
    end
    next_lesson = CodeLesson.find_by(global_level: lesson.global_level + 1)
    @next_lesson_id = next_lesson.nil? ? -1 : next_lesson.id
  end

  private

  def code_lesson_params
    params.require(:code_lesson).permit(:points, :level, :img, :map_code,
                                        :lesson_text, :question_text, :start_row,
                                        :start_col, :solution_row, :solution_col,
                                        :category, :title, :global_level)
  end

end
