class CodeLessonsController < ApplicationController

  def show
    @lesson = CodeLesson.find(params[:id])
  end

end
