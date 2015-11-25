class Student
  attr_accessor :name, :sex

  @@grades = [];

  def initialize( name, sex )
    @name = name.capitalize
    @sex = sex.downcase
  end

  def grades
    return @@grades.inspect
  end

  def add_grade=( grade )
    @@grades.push(grade.to_f)
  end

  def average
    total = 0
    count = 0

    @@grades.each do |grade|
      total += grade
      count += 1
    end

    average = total / count
    return average.to_f
  end

  def lower_than_zero?( grade )
    while grade < 0 do
      puts "Value can't be lower than 0"
      print "Enter grade: "
      grade = gets.chomp
      grade = grade.to_f
    end
   return grade
  end

end
