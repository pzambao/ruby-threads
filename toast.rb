class Toast
  def toastBread(slices)
    for i in 1..slices do
      puts "\nPutting a slice of bread in the toaster"
    end
    puts "Start toasting..."
    sleep(3)
    puts "Remove toast from toaster"
  end
end
