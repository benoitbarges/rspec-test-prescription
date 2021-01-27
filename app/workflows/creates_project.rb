class CreatesProject
  attr_accessor :name, :project, :task_string

  def initialize(name: '', task_string: '')
    @name = name
    @task_string = task_string
  end

  def build
    self.project = Project.new(name: name)
    project.tasks = convert_string_to_tasks
    project
  end

  def create
    build
    project.save
  end

  def convert_string_to_tasks
    task_string.split('\n').map do |task|
      title, size_string = task.split(':')
      Task.new(title: title, size: size_to_integer(size_string))
    end
  end

  def size_to_integer(size_string)
    return 1 if size_string.blank? || size_string.to_i.zero? || size_string.to_i.negative?
    size_string.to_i
  end
end
