def calculate_replacement(syrup_amount, current_dilution, recommended_dilution)
    syrup_percentage = current_dilution.to_f / 100
    recommended_percentage = recommended_dilution.to_f / 100
  
    water_to_add = syrup_amount * (syrup_percentage - recommended_percentage) / recommended_percentage
  
    if water_to_add < 0
      puts "You need to replace #{(water_to_add.abs).round(2)} ml of water with syrup."
    else
      puts "You need to replace #{water_to_add.round(2)} ml of your syrup with water."
    end
  end
  
  begin
    print "Enter the amount of syrup in your glass (in ml): "
    syrup_amount = gets.chomp.to_f
  
    print "Enter the current dilution percentage: "
    current_dilution = gets.chomp.to_f
  
    print "Enter the recommended dilution percentage: "
    recommended_dilution = gets.chomp.to_f
  
    calculate_replacement(syrup_amount, current_dilution, recommended_dilution)
  rescue
    puts "Invalid input. Please enter a valid number."
  end
  