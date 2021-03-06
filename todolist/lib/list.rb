require File.expand_path('./lib/task.rb')

class List

  attr_accessor :name

  # Constants for file manipulation.
  PATH = File.expand_path("./lists/")
  EXTENSION = "txt"

  def initialize(name)
    @name = name

    create_list_file(@name, PATH, EXTENSION)
  end

  def add_task_to_list=(description)
    task = Task.new(description)

    add_task_to_list_file(task, @name, PATH, EXTENSION)

    puts("#{task.to_s}")
  end

  def remove_task_from_list(task)
  end

  def delete_list
    File.delete("#{PATH}/#{@name}.#{EXTENSION}")
    puts("List deleted")
  end

  private
  def create_list_file(name, path, extension)
    file = "#{path}/#{name}.#{extension}"
    File.open(file, "w")
  end

  def add_task_to_list_file(task, name, path, extension)
    file = "#{path}/#{name}.#{extension}"
    
    File.open(file, "a") do |f|
      f.puts "{:description => #{task.description.to_s}, :status => #{task.status.to_s}}"
    end
  end

end
