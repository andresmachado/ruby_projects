# require 'todo'

puts "Welcome to your To-Do list manager, what do you want 'todo'?"
puts "0 - Create a new list\n1 - Open a existent list\n2 - Exit program"
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
else
  puts("It's not a valid option")
end

  break if answer == 2
end

puts "Thanks for use ToDO List!"
