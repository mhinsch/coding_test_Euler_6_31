
# square each number, then sum up
sum_squares(n) = mapreduce(x->x^2, +, 1:n)

# sum up, then square
squared_sum(n) = sum(1:n)^2

# calc the diff
diff_sqs_ssq(n) = squared_sum(n) - sum_squares(n)

# alternative method, less efficient (n(n-1)/2 operations instead of 2n),
# but might be useful for large numbers where sum of squares would overflow
# (not needed here, but included for fun)
function diff_sqs_ssq_alt(n)
	sum = 0
	for i in 1:n, j in 1:(i-1)
		sum += i*j
	end

	2*sum
end
			

println("sqared sum - sum of squares (100):")
println("standard method: ", diff_sqs_ssq(100))
println("alternative method: ", diff_sqs_ssq_alt(100))

