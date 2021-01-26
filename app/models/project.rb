class Project < ApplicationRecord
  has_many :tasks

  def done?
    tasks.all?(&:complete?)
  end
end
