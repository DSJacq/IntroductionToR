# Explore the Data Frame



# Dataset
# observations
# variables

# Data Frame
# specificallt for datasets
# row > observations
# columns = variables (age, name, etc)
# contain elements of different types
# elements in same column: same type

# Create Data Frame
# Import from data source
# CSV file
# relational database (e.g. SQL)
# software packages (Excel, SPSS...)

name <- c("Anne","Pete","Frank","Julia","Cath")
age <- c(28,30,21,39,35)
child <- c(FALSE, TRUE, TRUE, FALSE, TRUE)
df <- data.frame(name,age,child)
df

# Name Data Frame
names(df) <- c("Name","Age","Child")
df
# or
df <- data.frame(Name = name, Age = age, Child = child)
df

# Data Frame Structure
str(df)
df <- data.frame(name, age, child, stringsAsFactors = FALSE)
str(df)





# DataCamp

# Have a look at your data set
# Print the first observations of mtcars
head(mtcars)
# Print the last observations of mtcars
tail(mtcars)
# Print the dimensions of mtcars
dim(mtcars)



# Have a look at the structure
# Investigate the structure of the mtcars data set
str(mtcars)



# Creating a data frame
# Definition of vectors
planets <- c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")
type <- c("Terrestrial planet", "Terrestrial planet", "Terrestrial planet", 
          "Terrestrial planet", "Gas giant", "Gas giant", "Gas giant", "Gas giant")
diameter <- c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007, 3.883)
rotation <- c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67)
rings <- c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE, TRUE)
# Create a data frame: planets_df
planets_df <- data.frame(planets, type, diameter, rotation, rings)
# Display the structure of planets_df
str(planets_df)



# Creating a data frame (2)
# Encode type as a factor: type_factor
type_factor <- factor(type)
# Construct planets_df: strings are not converted to factors!
planets_df <- data.frame(planets, type_factor, diameter, rotation,  rings, stringsAsFactors = FALSE)
# Display the structure of planets_df
str(planets_df)



# Rename the data frame columns
# Improve the names of planets_df
names(planets_df) <- c("name","type","diameter","rotation","has_rings")
planets_df

