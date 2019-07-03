class Pomodoro < ApplicationRecord
  validates :count, numericality: {
    only_integer: true,
    greater_than: 0,
    less_than_or_equal_to: 4
  }

  after_save :start_timer

  private

  def start_timer
    count.times { TestJob.perform_later }
  end
end
