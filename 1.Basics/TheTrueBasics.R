# R: The true basics

"Hi there, console!"

height = 2
height
width = 4
width

height*width

area = height*width
area

ls()




# DataCamp

# Addition
5 + 5 

# Subtraction
5 - 5 

# Multiplication
3 * 5

# Division
(5 + 5)/2 

# Exponentiation
2^5

# Modulo
28 %% 6

# Assign the value 42 to x
x <- 42

# Print out the value of the variable x
x

# Assign the value 5 to the variable called my_apples
my_apples <- 5

# Print out the value of the variable my_apples
my_apples

# Assign a value to the variables my_apples and my_oranges
my_apples <- 5
my_oranges <- 6

# Add these two variables together and print the result
my_apples + my_oranges

# Create the variable my_fruit
my_fruit <- my_apples + my_oranges

# Clear the entire workspace
rm(list = ls())

# List the contents of your workspace
ls()

# Create the variable horses
horses <- 3

# Create the variable dogs
dogs <- 7

# Create the variable animals
animals <- horses + dogs

# Inspect the contents of the workspace again
ls()

# Remove dogs from the workspace
rm(dogs)

# Inspect the objects in your workspace once more
ls()

# The volume of a donut can be expressed as:
# V=2??2r2R

r <- 2
R <- 6
ar_donut <- pi*r^2
ar_donut

cir_donut <- 2*pi*R
cir_donut

vol_donut <- ar_donut*cir_donut
vol_donut

rm(ar_donut, cir_donut, r, R)
ls()
