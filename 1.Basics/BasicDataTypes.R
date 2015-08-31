# Basic Data Types

class()

# Logical
TRUE
class(TRUE)
FALSE
class(FALSE)
NA
class(NA)
T
class(T)
F
class(F)

# Numeric
2.5
class(2.5)
is.numeric(2) # is.() see whether variables are of a certain type
2L
class(2L) # Integer
is.numeric(2L)

# Character
"I love data science"
class("I love data science")

# Coercion # as.*() transform the type of a variable to another type
as.numeric(TRUE)
as.numeric(FALSE)
as.character(4)
as.numeric("4.5")
as.integer("4.5")






# DataCamp

# What is the answer to the universe?
my_numeric <- 42

# The quotation marks indicate that the variable is of type character
my_character <- "forty-two"

# Change the value of my_logical
my_logical <- FALSE

# What is the answer to the universe?
my_numeric <- 42

# The quotation marks indicate that the variable is of type character
my_character <- "forty-two"

# Change the value of my_logical
my_logical <- FALSE

# Create variables var1, var2 and var3
var1 <- TRUE
var2 <- 0.3
var3 <- "i"

# Convert var1 to a character: var1_char
var1_char <- as.character(var1)

# See whether var1_char is a character
is.character(var1_char)

# Convert var2 to a logical: var2_log
var2_log <- as.logical(var2)

# Inspect the class of var2_log
is.character(var2_log)

# Coerce var3 to a numeric: var3_num
var3_num <- as.numeric(var3)
