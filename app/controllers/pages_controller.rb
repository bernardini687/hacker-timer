class PagesController < ApplicationController
  def home
    @pomodoro = Pomodoro.new
    respond_to do |format|
      format.html
      format.js
    end
  end
end
