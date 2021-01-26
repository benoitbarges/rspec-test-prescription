class Task < ApplicationRecord
  belongs_to :project

  def mark_completed(date = Time.current)
    self.update(completed_at: date)
  end

  def complete?
    completed_at.present?
  end

  def part_of_velocity?
    return false unless complete?
    completed_at > 21.days.ago
  end

  def points_toward_velocity
    part_of_velocity? ? size : 0
  end
end
