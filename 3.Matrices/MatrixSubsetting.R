# Matrix Subsetting



# Subset element
m <- matrix(sample(1:15, 12), nrow = 3)
m
m[1,3]
m[3,2]

# Subset column or row
m[3,]
m[,3]
m[4]
m[9]

# Subset multiple elements
m[2, c(2,3)]
m[c(1,2), c(2,3)]
m[c(1,3), c(1,3,4)]

# Subset by name
rownames(m) <- c("r1", "r2", "r3")
colnames(m) <- c("a", "b", "c", "d")
m
m[2,3]
m["r2","c"]
m[2,"c"]
m[3, c("c","d")]

# Subset with logical vector
m[c(FALSE, FALSE, TRUE), c(FALSE, FALSE, TRUE, TRUE)]
m[c(FALSE,FALSE,TRUE), c(FALSE, TRUE)]
m[c(FALSE,FALSE,TRUE), c(FALSE, TRUE,FALSE,TRUE)]




# DataCamp



# Select elements
col <- c("US", "non-US")
row <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")
star_wars_matrix <- matrix(c(new_hope, empire_strikes, return_jedi), byrow = TRUE, nrow = 3, dimnames = list(row, col))
star_wars_matrix
# US box office revenue for "The Empire Strikes Back"
star_wars_matrix["The Empire Strikes Back", "US"]
# non-US box office revenue for "A New Hope"
star_wars_matrix["A New Hope", "non-US"]



# Select rows and columns
# Select all US box office revenue
star_wars_matrix[,"US"]
# Select revenue for "A New Hope"
star_wars_matrix["A New Hope",]
# Average non-US revenue per movie: non_us_all
non_us_all <- mean(star_wars_matrix[,"non-US"])
# Average non-US revenue of first two movies: non_us_some
non_us_some <- mean(star_wars_matrix[c(1,2),"non-US"])



# Create submatrices
# All figures for "A New Hope" and "Return of the Jedi"
star_wars_matrix[c("A New Hope", "Return of the Jedi"),]



# Alternative ways of subsetting
# Select the US revenues for "A New Hope" and "The Empire Strikes Back"
star_wars_matrix[c("A New Hope", "The Empire Strikes Back"), "US" ]
# Select the last two rows and both columns
star_wars_matrix[c(FALSE,TRUE,TRUE), c(TRUE,TRUE)]
# Select the non-US revenue for "The Empire Strikes Back"
star_wars_matrix["The Empire Strikes Back", "non-US"]



# Be selective
> all_wars_matrix
US non-US    total
A New Hope              460.998  314.4  775.398
The Empire Strikes Back 290.475  247.9  538.375
Return of the Jedi      309.306  165.8  475.106
The Phantom Menace      474.500  552.5 1027.000
Attack of the Clones    310.700  338.7  649.400
Revenge of the Sith     380.300  468.5  848.800
# Which one of these calls selects the total revenue for the second, fourth and sixth movie in the matrix?
# option A
all_wars_matrix[seq(2, 6, by = 2), "total"]
# option D
all_wars_matrix[c(F,T), "total"]



# Subsetting: The final challenge
> view_count_1
Mark Laurent Rachel Pierre
A New Hope                 1       3      2      3
The Empire Strikes Back    2       4      3      2
Return of the Jedi         1       3      2      1
The Phantom Menace         1       2      1      1
Attack of the Clones       1       1      0      1
Revenge of the Sith        0       1      0      0
> view_count_2
Christel Walter Dave Monica
A New Hope                     2      1    5      0
The Empire Strikes Back        2      1    2      0
Return of the Jedi             2      0    3      0
The Phantom Menace             4      2    2      0
Attack of the Clones           5      3    2      0
Revenge of the Sith            4      1    3      1
#
view_count_all <- cbind(view_count_1, view_count_2)
view_count_all
#
view_count_loud <- view_count_all[,c("Rachel","Walter","Dave")]
view_count_loud
#
total_views_loud <- colSums(view_count_all[,c("Rachel","Walter","Dave")])
total_views_loud 
