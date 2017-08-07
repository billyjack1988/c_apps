
def coin_sorter(cents_received)
	coins = {}
	coin_changer = {quarter: 25, dime: 10, nickel: 5, penny: 1}
	coin_changer.each do |key, amount|
		if cents_received >= amount
			coins[key] = cents_received / amount
		end
		cents_received = cents_received % amount
	end
	woop = ""
	coins.each do |coin,value|
		woop << "#{value} #{coin}, "
	end
	"#{woop}"  

end





    
    

