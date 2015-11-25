class Thing
  def set_name( aName )
    @name = aName
  end

  def get_name
    return @name
  end
end

class Treasure
  def initialize( name, description )
    @name         = name
    @description  = description
  end

  def to_s #override the default to_s method
    "The #{@name} Treasure is #{@description}\n"
  end
end

thing1 = Thing.new
thing1.set_name("A Lovely Thing")
puts thing1.get_name

t1 = Treasure.new("Crystal Sword", "an Elvish ancient sword with magical powers")
t2 = Treasure.new("Ring", "The one ring to reign all others")
puts t1.to_s
puts t2.to_s

puts "Inspecting 1st treasure: #{t1.inspect}";
p(thing1)
