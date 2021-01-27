class CreatesProject
  attr_accessor :name, :project, :task_string

  def initialize(name: '', task_string: '')
    @name = name
    @task_string = task_string
  end

  def build
    self.project = Project.new(name: name)
    tasks = convert_string_to_tasks
    project
  end

  def convert_string_to_tasks
    task_string.split('\n').map do |task|
      title, size_string = task.split(':')
      Task.new(title: title, size: size_string.to_i)
    end
  end
end
