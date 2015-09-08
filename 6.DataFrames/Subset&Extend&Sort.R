# Subset & Extend & Sort



# Subset Data Frame
# subsetting syntax from matrices and lists
# [ from matrices
# [[ and $$ from lists

# people
name <- c("Anne","Pete","Frank","Julia","Cath")
age <- c(28,30,21,39,35)
child <- c(FALSE, TRUE, TRUE, FALSE, TRUE)
people <- data.frame(name,age,child) # stringAsFactor = FALSE
people

# Subset Data Frame
people[3,2]
people[3,"age"]
people[3,]
people[,"age"]
people[c(3,5),c("age","child")]
people[2] # second column

# Data Frame - List
people$age
people[["age"]]
people[[2]]
#
people["age"]
people[2]

# Extend Data Frame
# add columns = add variables
# add rows = add observations

# Add column
height <- c(163,177,163,162,157)
people$height <- height
people
#
weight <- c(74,63,68,55,56)
cbind(people,weight)

# Add row
tom <- data.frame(name = "Tom", age = 37, child = FALSE, height = 183)
tom
rbind(people, tom)
people

# Sorting
sort(people$age)
ranks <- order(people$age)
ranks # position
people$age
# see data frame sorted
people[ranks,] 
people[order(people$age, decreasing = TRUE),]




# DataCamp



# Selection of data frame elements
# The type of Mars: mars_type
mars_type <- planets_df[4, 2]
# Entire rotation column: rotation
rotation <- planets_df[ ,4]
# First three planets: closest_planets_df
closest_planets_df <- planets_df[1:3, ]
# Last three planets: furthest_planets_df
furthest_planets_df <- planets_df[6:8, ]



# Selection of data frame elements (2)
# Diameter and rotation for Earth: earth_data 
earth_data <- planets_df[3, c("diameter", "rotation")]
# Diameter for the last six rows: furthest_planets_diameter
furthest_planets_diameter <- planets_df[3:8,"diameter"]
# Print furthest_planets_diamter
furthest_planets_diameter



# Only planets with rings
# Create rings_vector
rings_vector <- planets_df$has_rings
# Print rings_vector
rings_vector



# Only planets with rings (2)
# Create rings_vector
rings_vector <- planets_df$has_rings
# Select the information on planets with rings: planets_with_rings_df
planets_with_rings_df <- planets_df[rings_vector,]
# Print planets_with_rings_df
planets_with_rings_df



# Only planets with rings but shorter
# Planets that are smaller than planet Earth: small_planets_df
small_planets_df <- planets_df[planets_df$diameter < 1, ]        # option 1
small_planets_df  <- subset(planets_df, subset = diameter < 1)   # option 2
# Planets that rotate faster than planet Earth: fast_planets_df
slow_planets_df <- planets_df[abs(planets_df$rotation) > 1, ]      # option 1
slow_planets_df <- subset(planets_df, subset = abs(rotation) > 1)  # option 2



# Add variable/column
# Definition of moons and masses
moons <- c(0, 0, 1, 2, 67, 62, 27, 14)
masses <- c(0.06, 0.82, 1.00, 0.11, 317.8, 95.2, 14.6, 17.2)
# Add moons to planets_df under the name "moon"
planets_df$moon <- moons
# Add masses to planets_df under the name "mass"
planets_df$mass <- masses



# Add observations
# Name pluto correctly
pluto <- data.frame(name = "Pluto", type = "Terrestrial planet", diameter = 0.18, rotation = -6.38, has_rings = FALSE)
# Bind planets_df and pluto together: planets_df_ext
planets_df_ext <- rbind(planets_df, pluto)



# Sorting your data frame
# Create a desired ordering for planets_df: positions
positions <- order(planets_df$diameter, decreasing = TRUE)
# Create a new, ordered data frame: largest_first_df
largest_first_df <- planets_df[positions, ]
# Print largest_first_df
largest_first_df
