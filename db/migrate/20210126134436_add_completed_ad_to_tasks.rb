class AddCompletedAdToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :completed_at, :date
  end
end
