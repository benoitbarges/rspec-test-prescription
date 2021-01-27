class ChangeColumnsToTasks < ActiveRecord::Migration[6.0]
  def change
    remove_column :tasks, :completed
    remove_column :tasks, :completed_at
    add_column :tasks, :completed_at, :datetime
    add_column :tasks, :title, :string
  end
end
