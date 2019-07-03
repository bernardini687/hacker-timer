class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home]

  def home
    @pomodoro = Pomodoro.new
  end
end
