# Basic Graphics


# Graphics in R
# create plots with code
# replication and modification easy
# reproducibility
# graphics in package

# plot() categorical
str(countries)
plot(countries$continent)
plot(countries$population)
plot(countries$area, contries$population) # numerical
plot(log(countries$area), log(countries$population)) # numerical
plot(countries$religion, countries$continent)

# hist()
# short for histogram
# visual representation of distribution
# bin all values
# plot frequency bins
africa_obs <- countries$continent == "Africa"
africa <- countries[africa_obs, ]
hist(africa$population, breaks = 10)

# Other graphics functins
barplot()
boxplot()
pais()




# DataCamp



# Plotting factors
# Display the structure of movies
str(movies)
# Plot the genre variable of movies
plot(movies$genre)
# Plot the genre variable against the rating variable
plot(movies$genre, movies$rating)



# Plotting numerics
# Plot the runtime variable of movies
plot(movies$runtime)
# Plot rating (x) against runtime (y)
plot(movies$rating, movies$runtime)



# Create a Histogram
# Create a histogram for rating
hist(movies$rating)
# Create a histogram for rating, with 6 bins
hist(movies$rating, breaks = 6)



# Other graphics functions
# Create a boxplot of the runtime variable
boxplot(movies$runtime)
# Subset the dateframe and plot it entirely
plot(movies[,c("rating", "votes", "runtime")] )
# Create a pie chart of the table of counts of the genres
pie(table(movies$genre))



#
