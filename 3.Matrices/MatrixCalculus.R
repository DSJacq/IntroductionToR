# Matrix Calculus



# lotr_matrix
the_fellowship <- c(316,556)
two_towers <- c(343, 584)
return_king <- c(378,742)
#
lotr_matrix <- rbind(the_fellowship, two_towers, return_king)
colnames(lotr_matrix) <- c("US","non-US")
rownames(lotr_matrix) <- c("Fellowship","Two Towers","Return king")
lotr_matrix

# Matrix - Scalar Calculus
lotr_matrix/1.12
lotr_matrix -50

# Matrix - Matrix - Calculus
col1 <- c(50,80,100)
col2 <- c(50,80,100)
theater_cut <- cbind(col1,col2)
theater_cut
#
lotr_matrix - theater_cut
#
lotr_matrix - c(50,80,100)
matrix(c(50,80,100), nrow = 3, ncol = 2)

# Matrix Multiplication
rates <- matrix(c(1.11, 0.99, 0.82), nrow = 3, ncol = 2)
rates
#
lotr_matrix * rates

# Matrices and Vector
# very similar
# Vector = 1D, matrix = 2D
# coercion if necessary
# recycling if necessary
# element-wise calculus



# DataCamp



# Arithmetic with matrices
# Star Wars box office in millions (!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)
star_wars_matrix <- rbind(new_hope, empire_strikes, return_jedi)
colnames(star_wars_matrix) <- c("US", "non-US")
rownames(star_wars_matrix) <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")
star_wars_matrix
# Estimation of visitors
visitors = star_wars_matrix/5
# Print the estimate to the console
visitors



# Arithmetic with matrices (2)
# Star Wars box office in millions (!)
box_office_all <- c(461, 314.4, 290.5, 247.9, 309.3, 165.8)
movie_names <- c("A New Hope","The Empire Strikes Back","Return of the Jedi")
col_titles <- c("US","non-US")
star_wars_matrix <- matrix(box_office_all, nrow = 3, byrow = TRUE, dimnames = list(movie_names, col_titles))
star_wars_matrix
# Definition of ticket_prices_matrix
ticket_prices_matrix <- matrix(c(5, 5, 6, 6, 7, 7), nrow = 3, byrow = TRUE, dimnames = list(movie_names, col_titles)) 
ticket_prices_matrix
# Estimated number of visitors
visitors <- star_wars_matrix / ticket_prices_matrix
visitors
# Average number of US visitors
average_us_visitors <- mean((star_wars_matrix[,"US"]) / (ticket_prices_matrix[,"US"]))
average_us_visitors
# Average number of non-US visitors
average_non_us_visitors <- mean((star_wars_matrix[,"non-US"]) / (ticket_prices_matrix[,"non-US"]))
average_non_us_visitors



# May the matrix force be with you!

> commission_rates
US non-US
A New Hope              0.25   0.28
The Empire Strikes Back 0.23   0.26
Return of the Jedi      0.20   0.21

> budget
A New Hope The Empire Strikes Back      Return of the Jedi 
13.0                    18.0                    32.5

# subtracting the theaters' commission on a per film and per region basis (remaining),
remaining <- star_wars_matrix - (star_wars_matrix * commission_rates)

# calculating the remaining income per film (remaining_tot)
rowSums(remaining)

# subtracting the budget from that. Store the final result in a variable "profit"
profit <- (rowSums(remaining) - budget
           

