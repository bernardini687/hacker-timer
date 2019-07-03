class PomodorosController < ApplicationController
  def create
    @pomodoro = Pomodoro.new(set_pomodoro)
    if @pomodoro.save
      raise
    else
      respond_to do |format|
        format.html { render 'pages/home' }
        format.js
      end
    end
  end

  # Submitting is a confirmation button that sets background jobs
  # equal to the value of the Pomodoro's count.
  # The jobs will be queued right away.
  # 25 minutes -> sound -> 5 minutes -> sound is a Pomodoro/background job.

  private

  def set_pomodoro
    params.require('pomodoro').permit('count')
  end
end
