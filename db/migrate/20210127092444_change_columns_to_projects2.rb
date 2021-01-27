class ChangeColumnsToProjects2 < ActiveRecord::Migration[6.0]
  def change
    remove_column :projects, :completed_at
    add_column :projects, :name, :string
  end
end
