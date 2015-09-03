# Factors



# Categoirical variable
# limited number of different values
# belong to category
# In R: factor

# Create factor
blood <- c("B","AB","O","A","O","O","A","B")
blood
#
blood_factor <- factor(blood)
blood_factor # sorts levels alphabetically
str(blood_factor)

# Order levels differently
blood_factor2 <- factor(blood, levels = c("O","A","B","AB"))
blood_factor2
str(blood_factor2)
str(blood_factor)

# Rename factor levels
blood <- c("B","AB","O","A","O","O","A","B")
blood_factor <- factor(blood)
#
levels(blood_factor) <- c("BT_A","BT_AB","BT_B","BT_O")
blood_factor
#
factor(blood, labels = c("BT_A","BT_AB","BT_B","BT_O"))
#
factor(blood, levels = c("B","AB","O","A","O","O","A","B"), labels = c("BT_A","BT_AB","BT_B","BT_O"))

# Nominal versus ordinal
tshirt <- c("M","L","S","L","M","L","M")
tshirt_factor <- factor(tshirt, ordered = TRUE, levels = c("S","M","L"))
tshirt_factor
tshirt_factor[1]
tshirt_factor[1] < tshirt_factor[2]

# Wrap-uo
# factors for categorical variables
# factors are integer vectors
# change factor levels: levels() function labels argument
# ordered factors: ordered = TRUE





# DataCamp



# Vector to factor
# Definition of hand_vector
hand_vector <- c("Right", "Left", "Left", "Right", "Left")
# Convert hand_vector to a factor: hand_factor
hand_factor <- factor(hand_vector)
# Display the structure of hand_factor
str(hand_factor)



# Factor levels
# Definition of survey_vector
survey_vector <- c("R", "L", "L", "R", "R")
# Encode survey_vector as a factor with the correct names: survey_factor
survey_factor <- factor(survey_vector, levels = c("R","L"), labels = c("Right","Left"))
# Print survey_factor
survey_factor



# Summarizing a factor
# Defintion of survey_vector and survey_factor
survey_vector <- c("R", "L", "L", "R", "R")
survey_factor <- factor(survey_vector, levels = c("R", "L"), labels = c("Right", "Left"))
# Summarize survey_vector
summary(survey_vector)
# Summarize survey_factor
summary(survey_factor)



# Nominal versus Ordinal, Unordered versus Ordered
# Definition of animal_vector and temperature_vector
animal_vector <- c("Elephant", "Giraffe", "Donkey", "Horse")
temperature_vector <- c("High", "Low", "High", "Low", "Medium")
# Convert animal_vector to a factor: animal_factor
animal_factor <- factor(animal_vector)
# Encode temperature_vector as a factor: temperature_factor
temperature_factor <- factor(temperature_vector, ordered = TRUE, levels = c("Low","Medium","High"))
# Print out animal_factor and temperature_factor
animal_factor
temperature_factor



# Left better than right?
# Definition of survey_vector and survey_factor
survey_vector <- c("R", "L", "L", "R", "R")
survey_factor <- factor(survey_vector, levels = c("R", "L"), labels = c("Right", "Left"))
# First element from survey_factor: right
survey_factor[1]
# Second element from survey_factor: left
survey_factor[2]
# Right 'greater than' left?
survey_factor[1] > survey_factor[2]



# Ordered factors
# Create speed_vector
speed_vector <- c("OK","Slow","Slow","OK","Fast")



# Ordered factors (2)
# Create speed_vector
speed_vector <- c("OK", "Slow", "Slow", "OK", "Fast") 
# Convert speed_vector to ordered speed_factor
speed_factor <- factor(speed_vector, ordered = TRUE, levels = c("Slow","OK","Fast"))
# Print speed_factor
speed_factor
# Summarize speed_factor
speed_factor



# Comparing ordered factors
# Definition of speed_vector and speed_factor
speed_vector <- c("Fast", "Slow", "Slow", "Fast", "Ultra-fast")
factor_speed_vector <- factor(speed_vector, ordered = TRUE, levels = c("Slow", "Fast", "Ultra-fast"))
# Compare DA2 with DA5: compare_them
compare_them <- factor_speed_vector[2] > factor_speed_vector[5] 
# Print compare_them: Is DA2 faster than DA5?
compare_them



# Flying high in factor space
