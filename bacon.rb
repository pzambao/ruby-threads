class Bacon
  def fryBacon(slices)
    puts "\nPutting " + slices.to_s + " slices of bacon in the pan"
    puts "Cooking first side of bacon..."
    sleep(3)

    for i in 1..slices do
      puts "Flipping a slice of bacon"
    end
    
    puts "Cooking the second side of bacon..."
    sleep(3)
    puts "Put bacon on plate"
  end
end
