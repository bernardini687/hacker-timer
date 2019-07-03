class PomodorosController < ApplicationController
  # Display button to create a Pomodoro,
  # each press of the button increases a counter.
  # The counter is used to set the Pomodoro's count to that number.

  def create
    raise
    # Submitting is a confirmation button that sets background jobs
    # equal to the value of the Pomodoro's count.
    # The jobs will be queued right away.
    # 25 minutes -> sound -> 5 minutes -> sound is a Pomodoro/background job.
  end
end
