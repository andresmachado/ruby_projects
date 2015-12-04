require 'list'
require 'task'

loop do
  puts "Welcome to your To-Do list manager, what do you want 'todo'?\n"
  puts "0 - Create a new list\n1 - Open an existent list\n2 - Show all lists\n3 - Exit program"
  answer = gets.chomp.to_i

  case (answer)
  when 0 then
    print "What's the name of the list? "
    name = gets.downcase.chomp!
    name = name + "_list"
    #= List.new(name)
    puts "#{name} created!"

    loop do
      print "Do you want to add new tasks to #{name}? (yes/no) "
      add_task = gets.downcase.chomp
      case add_task
      when "yes" then
        puts("Task added")
      when "no" then
        break
      else
        puts("It's not a valid option")
        next
      end
    end
  when 1 then puts("Task opened")
  when 2 then puts("All tasks")
  when 3 then
    break
  else
    puts("It's not a valid option")
  end
end

puts "Thanks for use ToDO List!"
