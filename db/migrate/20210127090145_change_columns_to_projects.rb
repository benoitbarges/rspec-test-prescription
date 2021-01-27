class ChangeColumnsToProjects < ActiveRecord::Migration[6.0]
  def change
    remove_column :projects, :completed
    remove_column :projects, :completed_at
    add_column :projects, :completed_at, :datetime
    add_column :projects, :due_date, :datetime
  end
end
