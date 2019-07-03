class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home]

  def home
    @pomodoro = Pomodoro.new
    respond_to do |format|
      format.html
      format.js
    end
  end
end
