diff_sqs_ssq <- function(n){
	x <- 1:n
	ssq <- sum(x^2)
	sqs <- sum(x)^2

	sqs - ssq
}

print("sqared sum - sum of squares (100):")
print(diff_sqs_ssq(100))
