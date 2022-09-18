require "./coffee.rb"
require "./egg.rb"
require "./bacon.rb"
require "./toast.rb"
require "./juice.rb"


class BreakFast
  def initialize
    startTime = Time.now
    puts "====================="

    t1 = Thread.new {
      Coffee.new.pourCoffee
    }

    t2 = Thread.new {
      Egg.new.fryEggs(2)
      puts "--> Eggs are ready"
    }

    t3 = Thread.new {
      Bacon.new.fryBacon(3)
      puts "--> Bacon is ready"
    }

    t4 = Thread.new {
      Toast.new.toastBread(2)
      ApplyButter()
      ApplyJam()
      puts "--> Toast is ready"
    }

    t5 = Thread.new {
      Juice.new.pourOJ
      puts "--> oj is ready"
    }
    
    t1.join
    t2.join
    t3.join
    t4.join
    t5.join
    
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
