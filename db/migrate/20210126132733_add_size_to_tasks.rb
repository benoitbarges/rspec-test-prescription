class AddSizeToTasks < ActiveRecord::Migration[6.0]
  def change
    add_column :tasks, :size, :integer
  end
end
