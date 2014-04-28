class MusicLessonsController < ApplicationController

  def index
    @lessons = MusicLesson.all
  end

  def show
    @lesson = MusicLesson.find(params[:id])
  end

end
