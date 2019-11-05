


function count_splits(amount, coins)
	# we want to check them in order
	s_coins = sort(coins)

	# current coin
	largest = s_coins[end]

	rest = amount
	count = 0

	# * this could be done more efficiently by checking
	#   length==0 before the loop, but I think this version 
	#   is prettier
	# * we could improve this even further by using memoization, but
	#   that's overkill in this context
	while rest > 0.0
		# more coins to check
		if length(coins) > 1
			count += count_splits(rest, s_coins[1:(end-1)])
		end
		rest -= largest
	end

	# our current coin actually fits as well
	if rest == 0.0
		count += 1
	end

	count
end
