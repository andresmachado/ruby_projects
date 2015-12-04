class List

  PATH = File.expand_path("./lists/")
  EXTENSION = ".txt"

  attr_accessor :name

  def initialize(name)
    @name = name
    create_list_file(@name, PATH, EXTENSION)
  end

  def add_task( task )
  end

  def remove_task( task )
  end

  def delete_list
    File.delete(@name << EXTENSION)
  end

  private

  def create_list_file( name, path, extension )
    file = "#{path}/#{name << extension}"
    File.open(file, "w")
  end

end

# shopping_list = List.new("shopping_list")
# shopping_list.delete_list
