class Thing

  attr_reader :description
  attr_writer :description

  def initialize( aName, aDescription )
    @name        = aName
    @description = aDescription
  end

  def name
    return @name
  end

  def name=( aName )
    @name = aName
  end

  # def description
  #   return @description
  # end
  #
  # def description=( aDescription )
  #   @description = aDescription
  # end
end

class Treasure < Thing

  attr_accessor :value

  def initialize ( aName, aDescription, aValue )
    super( aName, aDescription )
    @value = aValue
  end

  # def value
  #   return @value
  # end
  #
  # def value=( aValue )
  #   @value = aValue
  # end

  def to_s
    "The #{@name} is #{@description} that worths #{@value}"
  end
end


t1 = Treasure.new("Fire Sword", "a fiery sword, and it burns", 5000)
t2 = Treasure.new("Dark Shield", "most powerful shield in all earth", 15_000)

puts(t1.to_s)
puts(t2.to_s)

t1.description = "not even warm sword."
t2.description = "it's just a normal black shield"

puts(t1.inspect)
puts(t2.inspect)
