class ToyJob < ApplicationJob
  queue_as :default

  private

  def perform(seconds)
    # Retrieve here complex objects from database via ids passed as arguments
    # Jobs are stored in Redis
    puts "Will sleep for #{seconds} seconds"
    sleep seconds
    puts 'Done'
  end
end
