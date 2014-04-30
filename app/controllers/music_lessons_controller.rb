class MusicLessonsController < ApplicationController

  def show
    @lesson = MusicLesson.find(params[:id])
     respond_to do |format|
      format.html { }
      format.json { render json: @lesson.to_json }
    end
  end

end
