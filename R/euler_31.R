# I am sure there is some clever way to make this functional,
# but I'm not enough of an R wizard to do that without a lot of
# reading. So this is a straight translation of the Julia version
count.splits <- function(amount, coins){
	scoins <- sort(coins)

	largest <- tail(scoins, 1L)

	rest <- amount
	count <- 0L

	while (rest > 0) {
		if (length(scoins) > 1L) {
			count <- count + count.splits(rest, head(scoins, -1L))
		}

		rest <- rest - largest
	}

	if (rest == 0) {
		count <- count + 1
	}

	count
}


print("# of ways to pay £2:")
print(count.splits(200, c(200, 100, 50, 20, 10, 5, 2, 1)))
