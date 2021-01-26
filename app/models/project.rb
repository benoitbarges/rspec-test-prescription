class Project < ApplicationRecord
  has_many :tasks

  def done?
    tasks.all?(&:complete?)
  end

  def total_size
    tasks.sum(&:size)
  end

  def remaining_size
    tasks.reject(&:complete?).sum(&:size)
  end
end
