def coin_sorter(cents_received)
	coins = {}
	coin_changer = {:quarters => 25, :dimes => 10, :nickel => 5, :pennies => 1}
	coin_changer.each do |key, amount|
		if cents_received >= amount
			if key.to_s == "penny" && amount > 1
				coins["pennies"] = amount
					# puts "#{coins} yoooooooooooooooooooooooo looooooooooooooooooooooook"
		end
			coins[key] = cents_received / amount
		end
		cents_received = cents_received % amount
	end
	woop = ""
	coins.each do |coin,value|
	woop << "#{value} #{coin}\n"
	end
	"#{woop}"  
end















    
    

