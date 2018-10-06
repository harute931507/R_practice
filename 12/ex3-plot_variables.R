# ref. R Graphics Second Edition by Paul Murrell
# https://www.stat.auckland.ac.nz/~paul/RG2e/

# plot()
# Plots of one single variable
plot(1:10)                  # numeric - scatterplot
plot(iris$Species)          # factor - barplot
plot(table(iris$Species))   # 1d table - barplot

# Plots of two variables
# numeric, numeric - scatterplot
plot(1:10, 11:20)
# numeric, factor - stripcharts
plot(iris$Petal.Length, iris$Species)
# factor, numeric - boxplots
with(iris, plot(Species, Petal.Length))
plot(Petal.Length ~ Species, data=iris)
# factor, factor - spineplot
with(iris, plot(Species, cut(Sepal.Length, 9))) 
# 2d table - Mosaic plot
plot(HairEyeColor[, , 2])
plot(HairEyeColor[, , 2], # cex.axis=0.7, las=1,
     main="Hair & Eye Color of Female Students",
     sub="a survey of students at the University of Delaware(1974)")
# mosaicplot(HairEyeColor[, , 2])

# Plots of many variables
plot(iris)   # data frame - scatterplot matrix

# barplot(), boxplot()
# Plots of one single variable
barplot(1:10)   # numeric(bar height) - barplot
boxplot(1:10)   # numeric - boxplot

# Plots of two variables
# matrix - stacked/side-by-side barplot
barplot(HairEyeColor[, , 1])
# list of numeric - boxplots
boxplot(HairEyeColor[, , 1][1,], HairEyeColor[, , 1][2,])
boxplot(iris[1:4], cex.axis=0.7)
