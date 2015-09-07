# Subset & Extend List



# [ Versus [[
similar_song <-  list(title = "R you on time?", duration = 230)
song <- list(title = "Rsome times", duration = 190, track = 5, similar = similar_song)
str(song)
#
song[1] # list
song[[1]] # single element on the list
#
song[c(1,3)]

# Subset by name
song[["duration"]]
song["duration"]
song[c("duration","similar")]

# Subset by logicals
song[c(FALSE, TRUE,TRUE,FALSE)]

# $ and extending
song$duration
friends <- c("Kurt","Florence","Patti","Dave")
song$friends <- friends
song

# Extending lists
song[["sent"]] <- friends
song$similar$reason <- "too long"
song

# Wrap-up
# [[ or [
## [[ to select list elements
## [ results in sublist
# [[ and $ to subset extend lists





# DataCamp



# Selecting elements from a list
actors_vector <- c("Jack Nicholson","Shelley Duvall","Danny Lloyd","Scatman Crothers","Barry Nelson")
reviews_factor <- factor(c("Good", "OK", "Good", "Perfect", "Bad", "Perfect", "Good"), ordered = TRUE, levels = c("Bad", "OK", "Good", "Perfect"))
shining_list <- list(title = "The Shining", actors = actors_vector, reviews = reviews_factor)
shining_list 
# Actors from shining_list: act
act <- shining_list[["actors"]]
# List containing title and reviews from shining_list: sublist
sublist <- shining_list[c("title","reviews")]
# Display structure of sublist
str(sublist)



# Chaining your selections
# Select the last actor: last_actor
last_actor <- shining_list$actors[length(shining_list$actors)]
last_actor
# Select the second review: second_review
second_review <- shining_list$reviews[2]
second_review

# Vector Subsetting vs. List Subsetting
shining_list$box[1,2]
shining_list[[c(2,4)]]

# Extending a list (1)
# Add the release year to shining_list
shining_list$year <- 1980
# Add the director to shining_list
shining_list$director <- "Stanley Kubrick"
# Inspect the structure of shining_list
str(shining_list)

# Extending a list (2)
# Add both the year and director to shining_list: shining_list_ext
shining_list_ext <- c(shining_list, year = 1980, director = "Stanley Kubrick")
# Have a look at the structure of shining_list_ext
str(shining_list_ext)


