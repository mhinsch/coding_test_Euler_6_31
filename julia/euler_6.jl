
# square each number, then sum up
sum_squares(n) = reduce(x->x^2, +, 1:n)

# sum up, the square
squared_sum(n) = reduce(+, 1:n)^2

# calc the diff
diff_sqs_ssq(n) = squared_sum(n) - sum_squares(n)

# alternative method, less efficient (n(n-1)/2 operations instead of 2n),
# but might be useful for large numbers where sum of quares would overflow
function diff_ssq_sqs_alt(n)
	sum = 0
	for i in 1:n, j in 1:(i-1)
		sum += i*j
	end
end
			


println(diff_ssq_sqs(100))

