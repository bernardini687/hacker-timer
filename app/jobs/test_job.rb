class TestJob < ApplicationJob
  queue_as :default

  def perform
    puts 'Starting the test job'
    sleep 5 # 25.minutes
    # Play 'sounds/announce_begin.mp3'
    # sleep 5.minutes
    # Play 'sounds/announce_end.mp3'
    puts 'Done'
  end
end
