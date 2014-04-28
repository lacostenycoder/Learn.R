class MusicLessonsController < ApplicationController

  def show
    @lesson = MusicLesson.find(params[:id])
  end

end
