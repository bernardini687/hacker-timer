class TestJob < ApplicationJob
  queue_as :default

  def perform
    puts 'Starting the test job'
    sleep 3
    puts 'Done'
  end
end
