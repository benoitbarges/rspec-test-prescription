class Task < ApplicationRecord
  belongs_to :project

  def complete?
    completed
  end

  def mark_completed
    self.update(completed: true)
  end
end
