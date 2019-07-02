class ChangeCountInPomodoros < ActiveRecord::Migration[5.2]
  def change
    change_column :pomodoros, :count, :integer, null: false, default: 0
  end
end
