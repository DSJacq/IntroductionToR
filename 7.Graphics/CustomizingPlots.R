# Customizing Plots



# Basic plot
plot(mercury$temperature, mercury$pressure)

# Fancy plot
plot(mercury$temperature, mercury$pressure,
     xlab = "Temperature",
     ylab = "Pressure",
     main = "T vs P for Mercury",
     type = "o", # o > points # l > line
     col = "orange")

# par( ) > Graphical Parameters
par(col = "blue")
plot(mercury$temperature, mercury$pressure)
plot(mercury$pressure, mercury$temperature)
par()$col

# More graphical parameters
plot(mercury$temperature, mercury$pressure,
     xlab = "Temperature",
     ylab = "Pressure",
     main = "T vs P for Mercury",
     type = "o",
     col = "orange",
     col.main = "darkgray",
     cex.axis = 0.6, # which ratio the original font size of the axis tick marks should be multiplied
     lty = 5, # line type 1 to 6
     pch = 4) # specifies a plot symbol for the points you are plotting, there are more than 35 symbols for plotting





# DataCamp


# Title and axis labels
# Create a customized plot
plot(movies$votes, movies$runtime, 
     main = "Votes versus Runtime", 
     sub = "No clear correlation", 
     xlab =  "Number of votes [-]", 
     ylab = "Runtime [s]")



# Colors and shapes
# Customize the plot further
plot(movies$votes, movies$runtime,
     main = "Votes versus Runtime",
     xlab = "Number of votes [-]",
     ylab = "Runtime [s]",
     sub = "No clear correlation",
     pch = 9,
     col = "#dd2d2d",
     col.main = 604)



# Customize Everything!
# Customize the plot further
plot(movies$votes, movies$year,
     main = "Are recent movies voted more on?",
     xlab =  "Number of votes [-]",
     ylab =  "Year [-]",
     col = "orange",
     pch = 19,
     cex.axis = 0.8)



# Customizing Histograms
# Build a customized histogram
hist(movies$runtime,
     breaks = 20,
     xlim = c(90, 220),
     main = "Distribution of Runtime",
     xlab = "Runtime [-]",
     col = "cyan",
     border = "red")
