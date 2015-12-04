class List

  attr_accessor :name

  # Constants for file manipulation.
  PATH = File.expand_path("../lists/")
  EXTENSION = ".txt"

  def initialize(name)
    @name = name
    create_list_file(@name, PATH, EXTENSION)
  end

  def add_task_to_list( task )
  end

  def remove_task_from_list( task )
  end

  def delete_list
    File.delete("#{PATH}/#{@name}")
    puts("List deleted")
  end

  private

  def create_list_file( name, path, extension )
    file = "#{path}/#{name << extension}"
    File.open(file, "w")
  end

end
