require ('./student.rb');

def continue ( answer )
  answer == 'y' ? true : false
end

print "Enter the student name: "
name = gets.chomp

print "Student sex: (M/F) "
sex = gets.chomp

student = Student.new(name, sex);

begin
  print "Enter grade: "
  grade = gets.chomp
  grade = grade.to_f
  student.add_grade = student.lower_than_zero?( grade )

  print "Add more grades? (y/n): "
  answer = gets.chomp.downcase

  continue = continue(answer)
end while continue

average = student.average

printf ( "#{student.name} with #{"%0.02f\n", average} average" )
puts ( "All grades: #{student.grades}" )
puts ( "Higher grade: #{student.grades.max}" )
puts ( "Lower grade: #{student.grades.min}" )
