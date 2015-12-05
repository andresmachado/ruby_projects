require File.expand_path('./lib/list.rb')
require File.expand_path('./lib/task.rb')

def add_new_list(name)
  list = List.new(name)
  puts("List #{list.name} created")
  return list
end

def add_new_task_to_list(description, list)
  list.add_task_to_list = (description)
  puts("Task '#{description}' added! to #{list.name}")
end

def remove_list(list)
  puts "Are you sure?"
  delete = gets.chomp
  
  list.delete_list if delete == "yes"
end

loop do
  puts("============================================================")
  puts("Welcome to your To-Do list manager, what do you want 'todo'?")
  puts("============================================================")

  puts("[Create] a new list\n[Open] an existing list\n[Show] all lists\n[Delete] a list\n[Exit] program")
  answer = gets.downcase.chomp

  case
  when answer == "create"
    print "What's the name of the list? "
    name = gets.downcase.chomp!
    new_list = add_new_list(name)

    loop do
      print "Do you want to add a tasks to '#{new_list.name}' list? (yes/no) "
      add_task = gets.downcase.chomp

      case
      when add_task == "yes"
        print "Enter a description for your task: "
        description = gets.chomp
        add_new_task_to_list(description, new_list)
      when add_task == "no"
        break
      else
        puts("It's not a valid option")
        next
      end
    end
  when answer == "open"
    puts("List opened")
  when answer == "show"
    puts("All lists")
  when answer == "delete"
    puts("Choose an option")
    puts("[Show] all lists\n[Exit] program)
    show_lists = gets.downcase.chomp!

  when answer == "exit"
    break
  else
    puts("It's not a valid option")
  end
end

puts("Thanks for use ToDO List!")
