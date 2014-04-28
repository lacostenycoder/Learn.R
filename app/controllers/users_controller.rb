class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @music_lessons = MusicLesson.all.group_by(&:category)
  end


end
