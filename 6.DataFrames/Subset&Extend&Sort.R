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

