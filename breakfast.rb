require "./coffee.rb"
require "./egg.rb"
require "./bacon.rb"
require "./toast.rb"
require "./juice.rb"


class BreakFast
  def initialize
    startTime = Time.now
    puts "====================="
    
    Coffee.new.pourCoffee
    
    Egg.new.fryEggs(2)
    puts "--> Eggs are ready"

    Bacon.new.fryBacon(3)
    puts "--> Bacon is ready"

    Toast.new.toastBread(2)
    ApplyButter()
    ApplyJam()
    puts "--> Toast is ready"

    Juice.new.pourOJ
    
    puts "--> oj is ready"
    puts "\n--> Breakfast is ready"
    puts "\nDuration = " + (Time.now - startTime).to_s

  end

  def ApplyJam()
    puts "Putting jam on the toast"
  end

  def ApplyButter()
    puts "Putting butter on the toast"
  end

end

BreakFast.new
