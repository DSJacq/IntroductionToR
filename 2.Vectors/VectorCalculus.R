# Vector Calculus


# computations are performed element-wise

earnings <- c(50, 100, 30)
earnings * 3
earnings / 10
earnings -20
earnings + 100
earnings ^ 2



# Element-wise

earnings <- c(50, 100, 30)
expenses <- c(30, 40, 80)
earnings - expenses

earnings + c(10,20,30)
earnings * c(1, 2, 3)
earnings / c(1, 2, 3)

bank <- earnings - expenses
bank
sum(bank)

earnings > expenses




# DataCamp


# Summing and subtracting vectors
# A_vector and B_vector have already been defined for you
A_vector <- c(1, 2, 3)
B_vector <- c(4, 5, 6)
# Take the sum of A_vector and B_vector: total_vector
total_vector <- A_vector + B_vector
# Print total_vector
total_vector
# Calculate the difference between A_vector and B_vector: diff_vector
diff_vector <- A_vector - B_vector
# Print diff_vector
diff_vector


# Calculate your earnings
# Casino winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector
# Calculate your daily earnings: total_daily
total_daily <- poker_vector + roulette_vector



# Calculate total winnings: sum()
# Total winnings with poker: total_poker
total_poker <- sum(poker_vector)
# Total winnings with roulette: total_roulette
total_roulette <- sum(roulette_vector)
# Total winnings overall: total_week
total_week <- sum(total_poker, total_roulette)
# Print total_week
total_week



# Comparing total winnings
# Calculate poker_better
poker_better <- poker_vector > roulette_vector
# Calculate total_poker and total_roulette, as before
total_poker <- sum(poker_vector)
total_roulette <- sum(roulette_vector)
total_week <- sum(total_poker, total_roulette)
# Calculate choose_poker
choose_poker <- total_poker > total_roulette
# Print choose_poker
choose_poker



# First steps in rational gambling
