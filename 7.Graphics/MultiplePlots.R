# Multiple Plots



# Graphics so far
# plots single source of data
# no combinations of plots
# no different layers

# mfrow parameter in par()
par(mfrow = c(2,2))
plot(shop$ads, shop$sales)
plot(shop$comp, shop$sales)
plot(shop$inv, shop$sales)
plot(shop$size_dist, shop$sales)

# mfcol parameter in par()
par(mfcol = c(2,2))
par(mfrow = c(2,2))
plot(shop$ads, shop$sales)
plot(shop$comp, shop$sales)
plot(shop$inv, shop$sales)
plot(shop$size_dist, shop$sales)

# Reset the grid
par(mfrow = c(1,1))
par(mfcol = c(1,1))

# layout()
grid <- matrix(c(1,2,3), nrow = 2, ncol = 2, byrow = TRUE)
grid
layout(grid)
plot(shop$ads, shop$sales)
plot(shop$comp, shop$sales)
plot(shop$inv, shop$sales)

# Reset the grid
layout(1)
par(mfcol = c(1,1))

# Reset all parameter
old_par <- par()
par(cpç = "red")
plot(shop$ads, shop$sales)
par(old_par) # restore old graphical parameters
plot(shop$ads, shop$sales)

# Stack graphical elements
plot(shop$ads, shop$sales,
     pch = 16,
     col = 2,
     xlab = "advertisement",
     ylab = "net sales")
# lm >> The `lm()` function returns an lm object, which contains the coefficients
of the line representating the linear fit.
lm_sales <- lm(shop$sales ~ shop$ads)
# abline >> his function can take the coefficients of a straight line as a vector,or as separate values.
abline(coef(lm_sales), lwd = 2) # lwd >> tands for line width here. Instead of building a new plot with simply a line

# other functins
points()
lines()
segments()
text()

ranks <- order(shop$ads)
plot(shop$ads, shop$sales,
     pch = 16,
     col = 2,
     xlab = "advertisement")
abline(coef(lm_sales), lwd = 2)
lines(shop$ads[ranks], shop$sales[ranks])





# DataCamp



# Multiple plots with par()
# List all the graphical parameters
par(movies)
# Specify the mfrow parameter
par(mfrow = c(2,1))
# Build two plots
plot(movies$votes, movies$rating)
hist(movies$votes)



# Complex layouts!
# Build the grid matrix
grid <- matrix(c(1, 2, 3, 3), nrow = 2)
# Specify the layout
layout(grid)
# Build three plots
plot(movies$rating, movies$runtime)
plot(movies$votes, movies$runtime)
boxplot(movies$runtime)



# Complex layouts with customized plots
# Build the grid matrix
grid <- matrix(c(1, 2, 3, 3), nrow = 2)
# Specify the layout
layout(grid)
# Customize the three plots
plot(movies$rating, movies$runtime,
     xlab = "Rating",
     ylab = "Runtime",
     pch = 4)
plot(movies$votes, movies$runtime,
     xlab = "Number of Votes",
     ylab =  "Runtime",
     col = "blue")
boxplot(movies$runtime,
        border = "darkgray",
        main =  "Boxplot of Runtime")



# Plot a linear regression
# Fit a linear regression: movies_lm
movies_lm <- lm(movies$rating ~ movies$votes)
# Build a scatterplot: rating versus votes
plot(movies$votes, movies$rating)
# Add straight line to scatterplot
abline(coef(movies_lm), lwd = 2)



# Customize your linear regression plot
# Fit a linear regression (don't change)
movies_lm <- lm(movies$rating ~ movies$votes)

# Customize scatterplot
plot(movies$votes, movies$rating, 
     main = "Analysis of IMDb data",
     xlab = "Number of Votes", 
     ylab = "Rating",
     col = "darkorange",
     pch = 15, 
     cex = 0.7)
# Customize straight line
abline(coef(movies_lm), lwd = 2, col = "red")
# Add text
xco <- 7e5
yco <- 7
text(xco, yco, label = "More votes? Higher rating!")



# Multiple plots with different layers
par(mfrow=c(1,3))
plot(salaries$experience, salaries$salary, 
     col="green", xlab = "Experience", ylab = "Salary")
coef_lm<-coef(lm(salaries$salary ~ salaries$experience))
abline(coef_lm, col = "red")
hist(salaries$salary, col = "blue", xlab = "Salary")
plot(salaries$degree, salaries$salary, 
     xlab="Level of degree", ylab = "Salary")
