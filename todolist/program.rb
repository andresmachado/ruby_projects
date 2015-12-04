require File.expand_path('./lib/list.rb')
require File.expand_path('./lib/task.rb')

def add_new_list(name)
  puts("List '#{name}' created!")
end

def add_new_task_to_list( description )
  puts("Task '#{description}' added! to list")
end

loop do
  puts("============================================================")
  puts("Welcome to your To-Do list manager, what do you want 'todo'?")
  puts("============================================================")

  puts("[Create] a new list\n[Open] an existing list\n[Show] all lists\n[Exit] program")
  answer = gets.downcase.chomp

  case (answer)
  when "create" then
    print "What's the name of the list? "
    name = gets.downcase.chomp!
    name = name + "_list"
    add_new_list(name)

    loop do
      print "Do you want to add new tasks to #{name}? (yes/no) "
      add_task = gets.downcase.chomp

      case add_task
      when "yes" then
        print "Create a description for task: "
        description = gets.chomp
        add_new_task_to_list(description)
      when "no" then
        break
      else
        puts("It's not a valid option")
        next
      end
    end
  when "open" then puts("Task opened")
  when "show" then puts("All tasks")
  when "exit" then
    break
  else
    puts("It's not a valid option")
  end
end

puts "Thanks for use ToDO List!"
