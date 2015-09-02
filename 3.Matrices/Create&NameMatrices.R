# Create & Name Matrices



# Matrix
# Vector 1D array of data elements
# Vector 3D array of data elelenet
# Rows and columns
# One atomic vector type

# Create matrix    matrix()
matrix(1:6, nrow = 2)
matrix(1:6, nrow = 3)
matrix(1:6, nrow = 2, byrow = TRUE)

# Create a matrix: recycling
matrix(1:3, nrow = 2, ncol = 3)

# rbind() | cbind()
cbind(1:3, 1:3)
rbind(1:3, 1:3)
#
m <- matrix(1:6, nrow = 2, byrow = TRUE)
rbind(m, 7:9)
cbind(m, c(10,11))

# Naming matrix
m <- matrix(1:6, nrow = 2, byrow = TRUE)
rownames(m) <- c("row1", "row2")
m
colnames(m) <- c("col1", "col2", "col3")
m
#
m <- matrix(1:6, byrow = TRUE, nrow = 2, dimnames = list(c("row1", "row2"), c("col1", "col2", "col3")))
m

# Coercion
num <- matrix(1:8, ncol = 2)
num
char <- matrix(LETTERS[1:6], nrow = 4, ncol = 3)
char
cbind(num, char)





# DataCamp



# Analyzing matrices, you shall
# Star Wars box office in millions (!)
box <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
# Create star_wars_matrix
star_wars_matrix <- matrix(box, nrow = 3, byrow = TRUE) 
star_wars_matrix 


# Analyzing matrices, you shall (2)
# Star Wars box office in millions (!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)
# Create star_wars_matrix
star_wars_matrix <- rbind(new_hope, empire_strikes, return_jedi)
star_wars_matrix 



# Naming a matrix
# Name the columns and rows of star_wars_matrix
colnames(star_wars_matrix) <- c("US","non-US")
rownames(star_wars_matrix) <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")



# Valid Sintax
col <- c("US", "non-US")
row <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")
star_wars_matrix <- matrix(c(new_hope, empire_strikes, return_jedi), byrow = TRUE, nrow = 3, dimnames = list(row, col))
star_wars_matrix



# Calculating the worldwide box office
worldwide_vector <- rowSums(star_wars_matrix)



# Adding a column for the Worldwide box office
# Bind the new variable worldwide_vector as a column to star_wars_matrix: star_wars_ext
star_wars_ext <- cbind(star_wars_matrix, worldwide_vector)



# Adding a row
# Matrix that contains the first trilogy box office
star_wars_matrix  
# Matrix that contains the second trilogy box office
star_wars_matrix2 
# Combine both Star Wars trilogies in one matrix: all_wars_matrix
all_wars_matrix <- rbind(star_wars_matrix, star_wars_matrix2)



# The total box office revenue for the entire sag
# Print box office Star Wars
all_wars_matrix
# Total revenue for US and non-US: total_revenue_vector
total_revenue_vector <- colSums(all_wars_matrix)



# Matrices: Move it up a notch
